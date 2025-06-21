class TgSeqEvent_PlayerMoved extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

enum EPlayerCardinalDirection
{
    PCD_Forward,
    PCD_Backward,
    PCD_Left,
    PCD_Right,
    //PCD_MAX
};

var int ResultEnergy;

static event int GetIndex(TgSeqEvent_PlayerMoved.EPlayerCardinalDirection MovementDirection)
{
    //return ReturnValue;    
}

defaultproperties
{
    MaxTriggerCount=0
    OutputLinks(0)=(LinkDesc="Forward",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="Backward",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(2)=(LinkDesc="Left",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(3)=(LinkDesc="Right",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    ObjName="Player Moving"
	ObjCategory="TgGame"
}