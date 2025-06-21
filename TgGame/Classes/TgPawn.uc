class TgPawn extends GamePawn
    abstract
    native(Pawns)
    nativereplication
    config(Game)
    hidecategories(Navigation);
    //implements(TgSkinnableInterface,TgCombatActor,TgGrabSource,TgObserver_ViewTargetChanged,TgInteractiveAudio,TgSoundNotifyActorInterface,TgCallbackInterface);

enum TG_POSTURE
{
    TG_POSTURE_DEFAULT,
    TG_POSTURE_REST,
    TG_POSTURE_FUSSY,
    TG_POSTURE_INTRO,
    TG_POSTURE_ENRAGED,
    TG_POSTURE_PATROL,
    TG_POSTURE_GENERICFIRE1,
    TG_POSTURE_GENERICFIRE2,
    TG_POSTURE_GENERICFIRE3,
    TG_POSTURE_DEAD,
    TG_POSTURE_SEARCHING,
    TG_POSTURE_FALLING,
    TG_POSTURE_MOUNT,
    TG_POSTURE_STASIS,
    TG_POSTURE_KNOCKBACK,
    TG_POSTURE_MESMERIZE,
    TG_POSTURE_DISARMED,
    TG_POSTURE_SCARED,
    TG_POSTURE_STUNNED,
    TG_POSTURE_PULLED,
    TG_POSTURE_FEARLIFT,
    TG_POSTURE_SHOOTWHILEPULL,
    TG_POSTURE_NONE
};

var bool m_bAirAccuracyPenalty;
var repnotify bool r_bIsMounted;

// Export UTgPawn::execSetTaskForceNumber(FFrame&, void* const)
native function SetTaskForceNumber(int nTaskForce);

// Export UTgPawn::execGetTaskForceNumber(FFrame&, void* const)
native function byte GetTaskForceNumber();

// Export UTgPawn::execSetProperty(FFrame&, void* const)
native function SetProperty(int nPropIndex, float fNewValue);

native function float GetEnergy();

// Export UTgPawn::execGetPropIndex(FFrame&, void* const)
native function int GetPropIndex(int nPropId);

// Export UTgPawn::execGetDeviceByEqPoint(FFrame&, void* const)
native function TgDevice GetDeviceByEqPoint(int eEqPoint);

// Export UTgPawn::execPostPawnSetupServer(FFrame&, void* const)
native function PostPawnSetupServer();

// Export UTgPawn::execMySpawnGatesAreOpen(FFrame&, void* const)
native function bool MySpawnGatesAreOpen();

// Export UTgPawn::execFlashCooldown(FFrame&, void* const)
native function FlashCooldown(int nDeviceInstanceId, int nFireModeNum);

// Export UTgPawn::execIsTalentEquipped(FFrame&, void* const)
native function bool IsTalentEquipped(int nTalentDeviceId);

// Export UTgPawn::execGetDeviceByInstanceId(FFrame&, void* const)
native function TgDevice GetDeviceByInstanceId(int nDeviceInstanceId);

// Export UTgPawn::execGetDeviceById(FFrame&, void* const)
native function TgDevice GetDeviceById(int nDeviceId);

function LiveRespawn(bool bResetHealth, bool bResetDevices){}
simulated function SetMountOnRespawn(){}
event bool ShouldRecharge(){}