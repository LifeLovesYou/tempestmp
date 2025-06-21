class TgPlayerController extends PComPlayerController
    native(Pawns)
    nativereplication
    config(Game)
    hidecategories(Navigation);
    //implements(TgPaladinsController,TgCallbackInterface,TgSoundNotifyActorInterface);

enum EPlayerInputType
{
    PIT_MoveForward,
    PIT_MoveBackward,
    PIT_MoveRight,
    PIT_MoveLeft,
    PIT_LookLeft,
    PIT_LookRight,
    PIT_LookUp,
    PIT_LookDown,
    PIT_Auto,
    PIT_Alt,
    PIT_BattleAbility,
    PIT_MovementAbility,
    PIT_Ultimate,
    PIT_Reload,
    PIT_Jump,
    PIT_Mount,
    PIT_LoadoutMenu,
    PIT_BurnCardMenu,
    PIT_Emote,
    PIT_Spray,
    //PIT_MAX
};

var int s_nPlayerId;
var QWord s_qwNetAccessFlags;
var transient TgRepInfo_Player CachedPRI;

// Export UTgPlayerController::execLiveMatchSwitchChampion(FFrame&, void* const)
native function LiveMatchSwitchChampion(int BotId, int BodySkinId, int WeaponSkinId);

// Export UTgPlayerController::execSwitchChampion(FFrame&, void* const)
native function SwitchChampion(int BotId, int BodySkinId, int WeaponSkinId, int VoicePackId);

// Export UTgPlayerController::execSetPlayerProfile(FFrame&, void* const)
native function SetPlayerProfile(int nProfileId, int nSkinId, int nWeaponSkinId, int nHeadSkinId, optional int nVoicePackId = 0);

// Export UTgPlayerController::execGetDeviceIdByName(FFrame&, void* const)
native function int GetDeviceIdByName(string sDeviceName);


reliable client native simulated function ClientDebugPlayPotg();

function SetCredits(int nCreditsAmount) {}

unreliable client simulated function ClientPlaySound(SoundCue ASound)
{
    //return;    
}

unreliable client simulated function ClientPlaySoundBase(AkBaseSoundObject ASound)
{
    //return;    
}
exec function SetReadyToPlay(){}

function LiveRespawn(bool bResetHealth, bool bResetDevices){}

event SetNoSmoothedMovementCorrection(bool bNoSmoothedCorrections, optional bool bManaged = false){}

reliable client simulated event UpdateReviveTimeRemaining(float fTimeRemaining){}

reliable client simulated event ClientSetRotationAndDesired(Rotator NewRotation, optional bool bResetCamera){}

defaultproperties
{
    CheatClass=Class'TgBattleCheatManager'
}


