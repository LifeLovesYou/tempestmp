class TgDevice extends Weapon
    native(Devices)
    hidecategories(Navigation);
    //implements(TgGameplayCurveOwner);

var TgInventoryObject_Device s_InventoryObject;
var repnotify int r_nPointsAllocated;

enum EDeviceChangeEvent
{
    DCE_Created,                    // 0
    DCE_ToggleState,                // 1
    DCE_CanFire,                    // 2
    DCE_Selected,                   // 3
    DCE_Cooldown,                   // 4
    DCE_PtsAlloc,                   // 5
    DCE_Refire,                     // 6
    DCE_InstanceCount,              // 7
    DCE_DeviceBuildup,              // 8
};

// Export UTgDevice::execGetTotalDevicePoints(FFrame&, void* const)
native function int GetTotalDevicePoints();

// Export UTgDevice::execGetAllocatedDevicePoints(FFrame&, void* const)
native function int GetAllocatedDevicePoints();

// Export UTgDevice::execAllocateDevicePoint(FFrame&, void* const)
native function bool AllocateDevicePoint();

// Export UTgDevice::execIsOffhand(FFrame&, void* const)
native function bool IsOffhand();

native function TgTimerManager GetCooldownTimerManager();

simulated event float GetCooldownRemaining(){}

// Export UTgDevice::execSendDeviceChangeEvent(FFrame&, void* const)
native function SendDeviceChangeEvent(TgDevice.EDeviceChangeEvent Event);

simulated event bool Use(){}

event ResetCooldown(int nMode, optional float fCooldownTimeOverride = -1.0000000){}

simulated event float GetCooldownTime(optional int nMode = -1){}

reliable client simulated event ClientStartCooldown(int nMode, float fCooldownTime)
{
    local int AbilityCooldownTimerIndex;
    local TgTimerManager TimerManager;

    AbilityCooldownTimerIndex = 0;
    // End:0x18

    TimerManager = GetCooldownTimerManager();
    // End:0x80
    if(TimerManager.IsSet(AbilityCooldownTimerIndex))
    {
        TimerManager.Close(AbilityCooldownTimerIndex, false);
    }
    // End:0xF7
    if(fCooldownTime > float(0))
    {
        TimerManager.RegisterForEvents(AbilityCooldownTimerIndex, self, 'ClientCooldownTimerExpired');
        TimerManager.Start(AbilityCooldownTimerIndex, fCooldownTime);
    }
    SendDeviceChangeEvent(4);
    //return;    
}

reliable client simulated event ClientResetCooldown(int nMode, float fCooldownTime){}