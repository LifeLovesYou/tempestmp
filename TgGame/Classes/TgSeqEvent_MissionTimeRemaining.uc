class TgSeqEvent_MissionTimeRemaining extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() float SecsRemaining;

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="TimeRemainingReached",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    ObjName="Mission Time Remaining Alert"
	ObjCategory="TgGame"
}