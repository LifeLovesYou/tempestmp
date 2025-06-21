class TgRepInfo_Game extends GameReplicationInfo
    native(Game)
    config(Game)
    hidecategories(Navigation,Movement,Collision);

// Export UTgRepInfo_Game::execGetTaskForce(FFrame&, void* const)
native function TgRepInfo_TaskForce GetTaskForce(int nTaskForceNum, optional bool bCreate = false);

// Export UTgRepInfo_Game::execGetAttackingTaskForce(FFrame&, void* const)
native final function TgRepInfo_TaskForce GetAttackingTaskForce();

// Export UTgRepInfo_Game::execGetDefendingTaskForce(FFrame&, void* const)
native final function TgRepInfo_TaskForce GetDefendingTaskForce();