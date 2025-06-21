class TgGame extends FrameworkGame
    abstract
    native(Game)
    config(Game)
    hidecategories(Navigation,Movement,Collision);

function bool ChangeTeam(Controller Other, int Num, bool bNewTeam)
{
    return false;
}

// Export UTgGame::execEnsureBotPrecache(FFrame&, void* const)
native function EnsureBotPrecache(int nBotId, int nSkinId, int nHeadId, int nDeviceSkinId);

// Export UTgGame::execSpawnTemplatePlayer(FFrame&, void* const)
native function TgPawn SpawnTemplatePlayer(TgPlayerController pTgPC, int nProfileId, optional int nSkinId = 0, optional int nWeaponSkinId = 0, optional int nHeadSkinId = 0);

// Export UTgGame::execSpawnBotById(FFrame&, void* const)
native function TgPawn SpawnBotById(int nBotId, int nSkinId, int nHeadId, int nWeaponSkinId, Vector vLocation, Rotator rRotation, TgBotFactory pFactory, optional bool bIgnoreCollision = false, optional TgPawn pOwnerPawn, optional TgDeviceFire deviceFire, optional float fDeployAnimLength = 0.0000000, optional name ControllerClassName, optional name BehaviorTreeName);

//function Pawn SpawnDefaultPawnFor(Controller NewPlayer, NavigationPoint StartSpot) {}