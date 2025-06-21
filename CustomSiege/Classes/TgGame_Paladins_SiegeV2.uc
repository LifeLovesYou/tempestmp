class TgGame_Paladins_SiegeV2 extends TgGame_Paladins_Siege;

var TgGame m_TgG;
var TgRepInfo_Game GRI;

var int m_nPlayerCount;
var array<TgPlayerController> m_Players;
var array<TgPawn> pendingMountPawns;

var Champions champions;

struct PendingLoginData
{
    var string NetAddress;
    var string PlayerName;
    var string ChampionName;
    var string Team;
};

var array<PendingLoginData> PendingLogins;

public event PreLogin(String Options, String Address, const UniqueNetId UniqueId, Bool bSupportsAuth, out String ErrorMessage)
{
    local PendingLoginData Data;
    local int Index;

    super.PreLogin(Options, Address, UniqueId, bSupportsAuth, ErrorMessage);
    `log("TgGame_Paladins_SiegeV2::PreLogin" @ Options @ Address);

     
    for (Index = 0; Index < PendingLogins.Length; Index++)
    {
        if (PendingLogins[Index].NetAddress == Address)
        {
            PendingLogins.Remove(Index, 1);
            break;
        }
    }
    
    

    Data.NetAddress = Address;
    Data.PlayerName = ParseOption(Options, "name");
    Data.ChampionName = ParseOption(Options, "class");
    Data.Team = ParseOption(Options, "team");

    PendingLogins.AddItem(Data);
}



public event PostLogin(PlayerController NewPlayer)
{
    local TgPlayerController TgPC;
    local TgRepInfo_Player TgRPI;
    local int taskforce, i;
    local PendingLoginData Data;
    local bool bFound;
    local int playersTF1, playersTF2;

    TgPC = TgPlayerController(NewPlayer);

    `log("TgGame_Paladins_SiegeV2::PostLogin" @ NewPlayer.GetPlayerNetworkAddress());
    `log("TgGame_Paladins_SiegeV2::PostLogin" @ Repl(NewPlayer.GetPlayerNetworkAddress(), ".", ""));

    bFound = false;
    for (i = 0; i < PendingLogins.Length; i++)
    {
        if (PendingLogins[i].NetAddress == NewPlayer.GetPlayerNetworkAddress())
        {
            Data = PendingLogins[i];
            bFound = true;
            break;
        }
    }

    if (!bFound)
    {
        `log("PostLogin: No pending login data found, using defaults.");
        Data.NetAddress = NewPlayer.GetPlayerNetworkAddress();
        Data.PlayerName = "Bugged";
        Data.ChampionName = "cassie";
        Data.Team = "";
    }
    
    switch(Data.Team)
    {
        case "1": taskforce = 1; break;
        case "2": taskforce = 2; break;
        default:
            playersTF1 = GRI.GetTaskForce(1).GetPlayerCount();
            playersTF2 = GRI.GetTaskForce(2).GetPlayerCount();
            taskforce = playersTF1 > playersTF2 ? 1 : 2;
        break;
    }

    TgPC.s_nPlayerId = toInt(Repl(Data.NetAddress, ".", ""));

    // Proceed as before
    if (Role == ROLE_Authority) {
        TgPC.CheatClass = Class'TgBattleCheatManager';
        if (TgPC.CheatManager == none) {
            TgPC.CheatManager = new (TgPC) Class'TgBattleCheatManager';

            if (TgPC.CheatManager != none) TgPC.CheatManager.InitCheatManager();
        }
    }

    TgRPI = TgRepInfo_Player(TgPC.PlayerReplicationInfo);
    TgPC.s_qwNetAccessFlags.A = -1;
    TgPC.s_qwNetAccessFlags.B = -1;
    TgRPI.UniqueId.Uid.A = TgPC.s_nPlayerId;
    
    TgRPI.PlayerName = Data.PlayerName == "" ? "Player " $ string(TgPC.s_nPlayerId) : Data.PlayerName;
    TgRPI.bOnlySpectator = false;
    TgRPI.bIsSpectator = false;
    TgRPI.bReadyToPlay = true;
    TgRPI.bAdmin = true;
    TgPawn(TgPC.Pawn).m_bAirAccuracyPenalty = false;
    TgRPI.UpdateIdAndProfile();
    precache(TgPC);
    super.PostLogin(NewPlayer);

    TgPawn(TgPC.Pawn).SetTaskForceNumber(taskforce);
    TgPC.CachedPRI.SetTaskForceNumber(taskforce);

    m_nPlayerCount++;
    m_Players.AddItem(TgPC);

    //if(Role == ROLE_Authority) TgBattleCheatManager(TgPC.CheatManager).SwitchClass(Data.ChampionName);
    setChampionFromCName(TgPC, Data.ChampionName);
    SetTimer(15, true, 'greet');
    SetTimer(60, true, 'displayMOTD');

    for (i = 0; i < PendingLogins.Length; i++)
    {
        if (PendingLogins[i].NetAddress == NewPlayer.GetPlayerNetworkAddress())
        {
            PendingLogins.Remove(i, 1);
            break;
        }
    }
}


private function precache(TgPlayerController TgPC) {
    local int i;
    local Champions.ChampionData SelectedChampion;

    for (i = 0; i < Champions.ChampionDatabase.Length; i++) {
        //TgBattleCheatManager(m_TgPC.CheatManager).Outer.ConsoleCommand("testprecache" @ Champions.ChampionDatabase[i].BotId @ Champions.ChampionDatabase[i].SkinId @ Champions.ChampionDatabase[i].DeviceSkinId @ Champions.ChampionDatabase[i].HeadId);
        TgPC.ConsoleCommand("precacheclass" @ Champions.ChampionNames[i]);
    }
    
}

public function Logout(Controller Exiting)
{
    super.Logout(Exiting);
    `log("TgGame_Paladins_Siege::Logout");
    m_nPlayerCount--;
    m_Players.RemoveItem(TgPlayerController(Exiting));
    //SetTimer(0.5, false, 'removeBots');
}


private function removeBots() {
    /* 
    local TgAIController_BehaviorGod TgAI;
    foreach WorldInfo.AllControllers(Class'TgGame.TgAIController_BehaviorGod', TgAI)
    {
        `log("Disconnected bot " @ TgAI);
        TgAI.Pawn.KilledBy(TgAI.Pawn);
        TgAI.Pawn.Destroy();
        TgAI.Destroy();
    }
    */
}
public event PreBeginPlay()
{
    super.PreBeginPlay();
    m_TgG = TgGame(WorldInfo.Game);

    Champions = new class'Champions';
    Champions.loadChampions();

    m_nPlayerCount = 0;
}

public event PostBeginPlay()
{
    super.PostBeginPlay();
    m_TgG = TgGame(WorldInfo.Game);
    GRI = TgRepInfo_Game(GameReplicationInfo);
    m_nPlayerCount = 0;
    `log("TgGame_Paladins_Siege::PostBeginPlay");
    //SetTimer(1.0, true, 'runTotalMayhem');
    //SetTimer(30.0, true, 'sendMessagesToAll');
    
}

public function TaskforceWin(Int nTaskForce, EVictoryType VictoryType)
{
    super.TaskforceWin(nTaskForce, VictoryType);
    //m_TgG.Restart()
}


private event runTotalMayhem() {
    local TgPlayerController TgPC;
    local TgPawn Pawn;
    foreach AllActors(class'TgPlayerController', TgPC) {
        Pawn = TgPawn(TgPC.Pawn);
        if(TgPC != none && Pawn != none) {
            if(self.IsInState('GameRunning') || self.IsInState('AttackDefend')) {
                //reduceCooldownAndBoostUltCharge(Pawn);
                //handleRespawn(TgPC, Pawn);
                //respawnImmediately(TgPC, Pawn);
            }
        }
    }
}



private function respawnImmediately(TgPlayerController TgPC, TgPawn Pawn) {
    local name DYING;
    DYING = 'Dying';
    if(Pawn.IsInState(DYING)) {
        GlobalRespawnTimeUpdate(3, true);
        `log("HAPPENS");
        //TgPC.SetReadyToPlay();
    }
}

private function reduceCooldownAndBoostUltCharge(TgPawn Pawn) {
    local name DYING;
    local float ultChargeMount, cdRatio, CD, NewCD, TotalCD;
    ultChargeMount = 2.5f;
    cdRatio = 0.2f;
    DYING = 'Dying';
    if(Pawn.MySpawnGatesAreOpen() && Pawn.ShouldRecharge()) Pawn.SetProperty(2, Pawn.GetEnergy() + ultChargeMount);
    
    if(Pawn.GetDeviceByEqPoint(3).GetCooldownRemaining() > 0) {
        CD = Pawn.GetDeviceByEqPoint(3).GetCooldownRemaining();

        NewCD = CD - (Pawn.GetDeviceByEqPoint(3).GetCooldownTime() * cdRatio);
        if(NewCD < 0) NewCD = 0;
        Pawn.GetDeviceByEqPoint(3).ResetCooldown(0, NewCD);
    }

    if(Pawn.GetDeviceByEqPoint(4).GetCooldownRemaining() > 0) {
        CD = Pawn.GetDeviceByEqPoint(4).GetCooldownRemaining();
        NewCD = CD - (Pawn.GetDeviceByEqPoint(4).GetCooldownTime() * cdRatio);
        if(NewCD < 0) NewCD = 0;
        Pawn.GetDeviceByEqPoint(4).ResetCooldown(0, NewCD);
    }

    if(Pawn.GetDeviceByEqPoint(16).GetCooldownRemaining() > 0) {
        CD = Pawn.GetDeviceByEqPoint(16).GetCooldownRemaining();
        NewCD = CD - (Pawn.GetDeviceByEqPoint(16).GetCooldownTime() * cdRatio);
        if(NewCD < 0) NewCD = 0;
        Pawn.GetDeviceByEqPoint(16).ResetCooldown(0, NewCD);
    }        
}

private function setRespawnTimer(TgPlayerController TgPC, TgPawn Pawn) {
    super.GlobalRespawnTimeUpdateHelper(TgPC, Pawn, 2, true);
}

private function mountPlayer() {
    local TgDevice_Mount MountDevice;
    MountDevice = TgDevice_Mount(pendingMountPawns[0].GetDeviceByEqPoint(23));
    MountDevice.AllowMountServer();
    MountDevice.ClientStartMount();
    pendingMountPawns.Remove(0, 1);
    `log("TgGame_Paladins_SiegeV2::mountPlayer");
}

event sendMessagesToAll() {
    local TgPlayerController TgPC;
    foreach AllActors(class'TgPlayerController', TgPC) {
        TgPC.ClientMessage("You are playing Total Mayhem on Cinnamon's Hosted Server.", , 10);
        TgPC.ClientMessage("You have lowered cooldowns and boosted ultimate charge.", , 10);
        TgPC.ClientMessage("Have fun!", , 10);
    
    }
}


private function setChampionFromCName(TgPlayerController TgPC, string CName) {
    local int ChampionIndex;
    local Champions.ChampionData SelectedChampion;

    CName = Locs(CName);
    ChampionIndex = Champions.ChampionNames.Find(CName);

    if (ChampionIndex != INDEX_NONE)
    {
        SelectedChampion = Champions.ChampionDatabase[ChampionIndex];
        UnpossessAndDestroy(TgPC);
        TgPC.SetPlayerProfile(SelectedChampion.BotId, SelectedChampion.SkinId, SelectedChampion.DeviceSkinId, SelectedChampion.HeadId);
        SpawnPawn(TgPC, SelectedChampion.BotId, SelectedChampion.SkinId, SelectedChampion.DeviceSkinId, true);
        if(Role == ROLE_Authority) {
            TgBattleCheatManager(TgPC.CheatManager).EDBN(SelectedChampion.Talent, 25);
            TgBattleCheatManager(TgPC.CheatManager).EDBN(SelectedChampion.card1, 19);
            TgBattleCheatManager(TgPC.CheatManager).EDBN(SelectedChampion.card2, 20);
            TgBattleCheatManager(TgPC.CheatManager).EDBN(SelectedChampion.card3, 21);
        }
        `log(SelectedChampion.Talent @ SelectedChampion.card1 @ SelectedChampion.card2 @ SelectedChampion.card3);

    }
    else
    {
        UnpossessAndDestroy(TgPC);
        TgPC.SetPlayerProfile(2092, 12201, 13171, 15926);
        SpawnPawn(TgPC, 2092, 12201, 13171, true);
        `log("Champion not found:" @ CName @ "- defaulting to Cassie");
    }
    TgPawn(TgPC.Pawn).m_bAirAccuracyPenalty = false;
}

simulated function SpawnPawn(TgPlayerController TgPC, int BotId, int SkinId, int DeviceSkinId, optional bool usePlayerStart)
{
    local TgPawn SpawnedPawn;
    local NavigationPoint PlayerStart;
    local TgBotFactory TgBF;
    local Vector SpawnLocation;
    local Rotator SpawnRotation;

    PlayerStart = m_TgG.FindPlayerStart(TgPC);
    // End:0x95
    if(usePlayerStart)
    {
        SpawnLocation = PlayerStart.Location;
        SpawnRotation = PlayerStart.Rotation;        
    }
    else
    {
        SpawnLocation = TgPawn(TgPC.Pawn).Location;
        SpawnRotation = TgPawn(TgPC.Pawn).Rotation;
    }
    m_TgG.EnsureBotPrecache(BotId, SkinId, 0, DeviceSkinId);
    // End:0x16F
    if(Role == ROLE_Authority)
    {
        m_TgG.EnsureBotPrecache(BotId, SkinId, 0, DeviceSkinId);
    }
    SpawnedPawn = TgPawn(m_TgG.SpawnDefaultPawnFor(TgPC, PlayerStart));
    SpawnedPawn.PostPawnSetupServer();
    // End:0x381
    if(SpawnedPawn != none)
    {
        TgPC.Possess(SpawnedPawn, true);
        TgPC.AcknowledgePossession(SpawnedPawn);
        // End:0x300
        if(Role == ROLE_Authority)
        {
            TgPC.WorldInfo.NetMode = NM_Standalone;
            SpawnedPawn = m_TgG.SpawnTemplatePlayer(TgPC, BotId, SkinId, DeviceSkinId);
            TgPC.WorldInfo.NetMode = NM_DedicatedServer;
        }
        // End:0x363
        if(SpawnedPawn != none)
        {
            TgPC.Possess(SpawnedPawn, true);
            TgPC.AcknowledgePossession(SpawnedPawn);            
        }
        else
        {
            LogInternal("Failed to spawn pawn 2");
        }        
    }
    else
    {
        LogInternal("Failed to spawn pawn");
    }
    //return;    
}

function UnpossessAndDestroy(TgPlayerController TgPC)
{
    //TgPC.SetReadyToPlay();
    //return;    
}

private function greet() {
    local TgPlayerController TgPC;
    foreach AllActors(class'TgPlayerController', TgPC) {
        TgPC.ClientMessage("This is PlayTest #4 with Server made by Cinnamon", , 15);
        TgPC.ClientMessage("Thank you for participating in this playtest", , 15);
        TgPC.ClientMessage("Have fun ^_^", , 15);
    }
}

private function displayMOTD() {
    local TgPlayerController TgPC;
    foreach AllActors(class'TgPlayerController', TgPC) {
        TgPC.ClientMessage("Noticed a bug? Report it to the staff members!", , 10);
        TgPC.ClientMessage("Keep an eye out for next playtests!", , 10);
        TgPC.ClientMessage("<3 KANA, Old Viktor, Tom, Kyiro, Cinnamon <3", , 10);
    }
}

private function int toInt(coerce int strNb) {
    return strNb;
}

defaultproperties {
    m_fBaseRespawnTime = 3;
    m_fDefenseRespawnIncrease=0;
    m_fAttackRespawnIncrease=0;
}