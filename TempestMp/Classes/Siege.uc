class Siege extends TgGame_Paladins_Siege;

var TgGame m_TgG;
var TgRepInfo_Game GRI;

var int m_nPlayerCount;
var array<TgPlayerController> m_Players;
var array<TgPawn> pendingMountPawns;

var array<TempestProxyActor> m_ProxyActors;

var Champions champions;

struct PendingLoginData
{
    var int NetAddress;
    var string PlayerName;
    var string ChampionName;
    var string Team;
};


var array<int> PendingLoginKeys;
var array<PendingLoginData> PendingLoginValues;

event PreLogin(string Options, string Address, const UniqueNetId UniqueId, bool bSupportsAuth, out string ErrorMessage)
{
    local PendingLoginData Data;
    local int intAdd;
    super.PreLogin(Options, Address, UniqueId, bSupportsAuth, ErrorMessage);

    intAdd = toInt(Repl(Address, ".", ""));

    // Remove any stale data for this player
    RemovePendingLogin(intAdd);

    Data.NetAddress = intAdd;
    Data.PlayerName = ParseOption(Options, "name");
    Data.ChampionName = ParseOption(Options, "class");
    Data.Team = ParseOption(Options, "team");

    AddOrUpdatePendingLogin(intAdd, Data);
}

public event PostLogin(PlayerController NewPlayer)
{
    local TgPlayerController TgPC;
    local TempestProxyActor ProxyActor;
    local TgRepInfo_Player TgRPI;
    local PendingLoginData Data;
    local Champions.ChampionData SelectedChampion;
    local int i, Address;
    local bool bFound;
    local int playersTF1, playersTF2;
    super.PostLogin(NewPlayer);


    TgPC = TgPlayerController(NewPlayer);

    bFound = false;
    // Retrieve and apply pending login data

    TgRPI = TgRepInfo_Player(NewPlayer.PlayerReplicationInfo);

    ProxyActor = Class'TempestUtils'.static.SetupProxy(TgPC);
    ProxyActor.ServerAddCheats();
    /*
    for (i = 0; i < Champions.ChampionDatabase.Length; i++) {
        ProxyActor.ClientPrecacheClass(Champions.ChampionNames[i]);
    }
     */

    ProxyActor.ClientPrecacheClass("churchill");
    ProxyActor.ClientPrecacheClass("lazarus");
    ProxyActor.ClientPrecacheClass("zhin");
    ProxyActor.ClientPrecacheClass("lex");

    ProxyActor.ClientPrecacheClass("evie");
    ProxyActor.ClientPrecacheClass("maldamba");
    ProxyActor.ClientPrecacheClass("torvald");
    ProxyActor.ClientPrecacheClass("makoa");
    ProxyActor.ClientPrecacheClass("pip");
    ProxyActor.ClientPrecacheClass("shalin");

    Address = toInt(Repl(NewPlayer.GetPlayerNetworkAddress(), ".", ""));

    if (GetPendingLogin(Address, Data))
    {
        RemovePendingLogin(Address); // Cleanup after applying
    } else {
        DAta.PlayerName = "Player " $ string(m_nPlayerCount + 1);
        Data.ChampionName = "shalin";
        Data.Team = "";
        Data.NetAddress = Address;
        
    }
    Class'TempestUtils'.static.SetupPRI(TgRPI, m_nPlayerCount, toInt(Repl(Data.NetAddress, ".", "")), Data.PlayerName);

    i = Champions.ChampionNames.Find(Locs(Data.ChampionName));
    if (i != INDEX_NONE) SelectedChampion = Champions.ChampionDatabase[i]; else SelectedChampion = Champions.ChampionDatabase[5];
    
    Class'TempestUtils'.static.SpawnPawn(self, TgPC, SelectedChampion.BotId, SelectedChampion.SkinId, SelectedChampion.DeviceSkinId);
    Class'TempestUtils'.static.SetTaskForceNumber(TgPawn(TgPC.Pawn), getTeam(Data));

    m_nPlayerCount++;
    m_ProxyActors.AddItem(ProxyActor);

    ProxyActor.ClientConsoleCommand("setreadytoplay");

    if (m_nPlayerCount == 1) m_TgG.StartMatch();


    SetTimer(15, false, 'Say');
}

public function Logout(Controller Exiting)
{
    local int i;
    super.Logout(Exiting);
    m_nPlayerCount--;

    for (i = 0; i < m_ProxyActors.Length; i++) {
        if (m_ProxyActors[i].Owner == Exiting) {
            m_ProxyActors.Remove(i, 1);
            break;
        }
    }

     
    //SetTimer(0.5, false, 'removeBots');
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

    SetTimer(15, false, 'greet');
    SetTimer(60, true, 'displayMOTD');
}

function Say()
{
    local string msg;
    msg = "Welcome to TempestMp! Type !help for a list of commands.";
    msg = Left(msg, 128);

    WorldInfo.Game.Broadcast(self, msg, 'Say');
    `log("Say: " $ msg);
    
}


function AddOrUpdatePendingLogin(int NetAddress, PendingLoginData Data) {
    local int Index;

    Index = PendingLoginKeys.Find(NetAddress);
    if (Index != -1) {
        PendingLoginValues[Index] = Data;
    } else {
        PendingLoginKeys.AddItem(NetAddress);
        PendingLoginValues.AddItem(Data);
    }
}

function bool GetPendingLogin(int NetAddress, out PendingLoginData OutData)
{
    local int Index;
    Index = PendingLoginKeys.Find(NetAddress);
    if (Index != -1)
    {
        OutData = PendingLoginValues[Index];
        return true;
    }
    return false;
}

function bool RemovePendingLogin(int NetAddress)
{
    local int Index;
    Index = PendingLoginKeys.Find(NetAddress);
    if (Index != -1)
    {
        PendingLoginKeys.Remove(Index, 1);
        PendingLoginValues.Remove(Index, 1);
        return true;
    }
    return false;
}




private function int getTeam(PendingLoginData Data) {
    local int playersTF1, playersTF2;
    switch(Data.Team)
    {
        case "1": return 1; break;
        case "2": return 2; break;
    }
    playersTF1 = GRI.GetTaskForce(1).GetPlayerCount();
    playersTF2 = GRI.GetTaskForce(2).GetPlayerCount();
    return playersTF1 < playersTF2 ? 1 : 2;
}



private event somehowRestart() {
    local TgPlayerController TgPC;
    foreach AllActors(class'TgPlayerController', TgPC) {
        TgPC.ClientMessage("switch", , 15);
    }
    if(Role ==  ROLE_Authority) {
        ProcessServerTravel("BMM_P_v01", false);
        `log("Restarting");
    }
    `log("Restarting 2");
}


public function TaskforceWin(Int nTaskForce, EVictoryType VictoryType)
{
    local TgPlayerController TgPC;
    super.TaskforceWin(nTaskForce, VictoryType);
    foreach AllActors(class'TgPlayerController', TgPC) {
        TgPC.ClientMessage("Team" @ nTaskForce @ "has won this one!", , 15);
    }

    //SetTimer(5.0, false, 'somehowPlayPOTG');
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