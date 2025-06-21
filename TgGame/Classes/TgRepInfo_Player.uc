class TgRepInfo_Player extends PlayerReplicationInfo
    native(Game)
    nativereplication
    hidecategories(Navigation,Movement,Collision);

// Export UTgRepInfo_Player::execUpdateBroadcastedItems(FFrame&, void* const)
native function UpdateBroadcastedItems(TgInventoryManager InvMgr);
// Export UTgRepInfo_Player::execSetTaskForceNumber(FFrame&, void* const)
native function bool SetTaskForceNumber(byte nTaskForce, optional bool bForce = false);

event UpdateIdAndProfile(){}

