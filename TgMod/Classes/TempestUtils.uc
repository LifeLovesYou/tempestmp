class TempestUtils extends Object;

static function TempestProxyActor SetupProxy(TgPlayerController PC) {
    local TempestProxyActor ProxyActor;

    ProxyActor = PC.Spawn(Class'TgMod.TempestProxyActor', PC);
    if (ProxyActor != none) {
        ProxyActor.SetOwner(PC);
        return ProxyActor;
    } else {
        `Log("Failed to spawn proxy actor");
        return none;
    }
}

static function SpawnPawn(TgGame Game, TgPlayerController PC, int BotId, int SkinId, int DeviceSkinId) {
    local TgPawn SpawnedPawn;
    local NavigationPoint PlayerStart;

    UnpossessAndDestroy(PC);
    PlayerStart = Game.FindPlayerStart(PC);

    Game.EnsureBotPrecache(BotId, SkinId, 0, DeviceSkinId);
    SpawnedPawn = TgPawn(Game.SpawnDefaultPawnFor(PC, PlayerStart));
    SpawnedPawn.PostPawnSetupServer();

    if(SpawnedPawn != none) {
        PC.Possess(SpawnedPawn, true);
        PC.AcknowledgePossession(SpawnedPawn);

        PC.WorldInfo.NetMode = NM_Standalone;
        SpawnedPawn = Game.SpawnTemplatePlayer(PC, BotId, SkinId, DeviceSkinId);
        PC.WorldInfo.NetMode = NM_DedicatedServer;

        if(SpawnedPawn != none) {
            PC.Possess(SpawnedPawn, true);
            PC.AcknowledgePossession(SpawnedPawn);
            PC.SetReadyToPlay();
        } else {
            LogInternal("TempestUtils: Failed to spawn pawn 2");
        }     
    } else {
        LogInternal("TempestUtils: Failed to spawn pawn");
    } 
}

static function SwitchClass(TgPlayerController PC, string godName, optional string skinName, optional string weaponSkinName) {
    // TODO: Implement
}

static function UnpossessAndDestroy(TgPlayerController PC) {
    // TODO: Implement
    PC.Pawn.Destroy();
    PC.UnPossess();
    PC.SetReadyToPlay();
}

static function SetTaskForceNumber(TgPawn Pawn, int PlayerCount) {
    Pawn.SetTaskForceNumber(PlayerCount % 2 == 0 ? 2 : 1);
}

static function SetupPRI(TgRepInfo_Player PRI, int PlayerCount, int Address, string PlayerName) {
    local TgPlayerController PC;
    PC = TgPlayerController(PRI.Owner);

    PC.s_nPlayerId = Address;
    PC.s_qwNetAccessFlags.A = 0xFFFFFFFF;
    PC.s_qwNetAccessFlags.B = 0xFFFFFFFF;
    PRI.UniqueId.Uid.A = PC.s_nPlayerId;
    PRI.PlayerName = PlayerName == "" ? "Player #" $ string(PlayerCount + 1) : PlayerName;
    PRI.bOnlySpectator = false;
    PRI.bIsSpectator = false;
    PRI.bReadyToPlay = true;
    PRI.bAdmin = true;
    TgPawn(PC.Pawn).m_bAirAccuracyPenalty = false;
    PRI.UpdateIdAndProfile();
}