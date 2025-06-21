class TgRepInfo_TaskForce extends TeamInfo
    native(Game)
    nativereplication
    hidecategories(Navigation,Movement,Collision);

// Export UTgRepInfo_TaskForce::execCycleFrom(FFrame&, void* const)
native function TgRepInfo_Player CycleFrom(TgRepInfo_Player pFrom, bool bForward);

// Export UTgRepInfo_TaskForce::execRepEvent(FFrame&, void* const)
native simulated function bool RepEvent(name VarName);

// Export UTgRepInfo_TaskForce::execGetPlayerCount(FFrame&, void* const)
native function int GetPlayerCount();

// Export UTgRepInfo_TaskForce::execGetActivePlayerCount(FFrame&, void* const)
native function int GetActivePlayerCount();

// Export UTgRepInfo_TaskForce::execGetBotCount(FFrame&, void* const)
native function int GetBotCount();

// Export UTgRepInfo_TaskForce::execGetMinionFactoryCount(FFrame&, void* const)
native function int GetMinionFactoryCount();

// Export UTgRepInfo_TaskForce::execGetPlayer(FFrame&, void* const)
native function TgRepInfo_Player GetPlayer(int nIndex);

// Export UTgRepInfo_TaskForce::execGetPlayerById(FFrame&, void* const)
native function TgRepInfo_Player GetPlayerById(int nPawnId);

// Export UTgRepInfo_TaskForce::execGetPlayerByPower(FFrame&, void* const)
native function TgRepInfo_Player GetPlayerByPower(int nIndex);

// Export UTgRepInfo_TaskForce::execGetBot(FFrame&, void* const)
native function TgRepInfo_Player GetBot(int nIndex);

// Export UTgRepInfo_TaskForce::execIsLeader(FFrame&, void* const)
native function bool IsLeader(TgRepInfo_Player pTgPri);

// Export UTgRepInfo_TaskForce::execTeamRemoveFrom(FFrame&, void* const)
native function TeamRemoveFrom(Controller Other);

// Export UTgRepInfo_TaskForce::execUpdateSurrenderTimer(FFrame&, void* const)
native function UpdateSurrenderTimer();

// Export UTgRepInfo_TaskForce::execRemoveGlobalEffectGroup(FFrame&, void* const)
native function RemoveGlobalEffectGroup(int nEffectGroupID);

// Export UTgRepInfo_TaskForce::execApplyGlobalEffectGroups(FFrame&, void* const)
native function ApplyGlobalEffectGroups(TgPawn_Character aPawn);

// Export UTgRepInfo_TaskForce::execRemoveGlobalEffectGroups(FFrame&, void* const)
native function RemoveGlobalEffectGroups(TgPawn_Character aPawn);

// Export UTgRepInfo_TaskForce::execReapplyGlobalEffectGroups(FFrame&, void* const)
native function ReapplyGlobalEffectGroups();

// Export UTgRepInfo_TaskForce::execRemoveAllGlobalEffectGroups(FFrame&, void* const)
native function RemoveAllGlobalEffectGroups();

// Export UTgRepInfo_TaskForce::execGetGodCount(FFrame&, void* const)
native function int GetGodCount();

// Export UTgRepInfo_TaskForce::execGetGod(FFrame&, void* const)
native function TgRepInfo_Player GetGod(int nIndex);

// Export UTgRepInfo_TaskForce::execResetGodIterator(FFrame&, void* const)
native function ResetGodIterator();

// Export UTgRepInfo_TaskForce::execGetNextGod(FFrame&, void* const)
native function TgRepInfo_Player GetNextGod(optional bool bIncrement = true, optional bool bReset = false);

// Export UTgRepInfo_TaskForce::execLaneOfSiegeWeapon(FFrame&, void* const)
native function int LaneOfSiegeWeapon();

// Export UTgRepInfo_TaskForce::execGetASiegeWeapon(FFrame&, void* const)
native function TgPawn GetASiegeWeapon();

// Export UTgRepInfo_TaskForce::execHasBot(FFrame&, void* const)
native function bool HasBot(class<TgPawn> PawnClass);

// Export UTgRepInfo_TaskForce::execGetNumAlivePlayers(FFrame&, void* const)
native function int GetNumAlivePlayers();

// Export UTgRepInfo_TaskForce::execGetPlayers(FFrame&, void* const)
native function GetPlayers(out array<TgRepInfo_Player> List);

// Export UTgRepInfo_TaskForce::execGetPlayersByDistance(FFrame&, void* const)
native function GetPlayersByDistance(Vector fromVector, float dwDist, out array<TgRepInfo_Player> List);