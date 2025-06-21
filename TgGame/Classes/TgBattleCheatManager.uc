class TgBattleCheatManager extends PComCheatManager within TgPlayerController
    native
    config(Game);

// Export UTgBattleCheatManager::execSwitchClass(FFrame&, void* const)
native exec function SwitchClass(string godName, optional string skinName, optional string weaponSkinName, optional string headName);

exec function TestShowInventory() {}

exec function EDBN(string sDeviceName, int nEquipPointId, optional int FireMode = 1){}

exec function EquipDeviceByName(string sDeviceName, int nEquipPointId, optional int FireMode = 1){}

exec function EquipDevice(int nDeviceId, int nEquipPointId, optional int FireMode = 0){}

exec function ServerExec(string FSCommand){}

exec function SetMountSkin(int nSkinId){}

exec function AllowMount(optional bool bEnabled = true){}

exec function SetRespawnIncrease(float fIncrease)
{
 
}

exec function SetDefenseRespawn(float fDuration)
{
 
}

exec function SetAttackRespawn(float fDuration)
{
 
}

exec function SetRespawnCap(float fDuration)
{
  
}