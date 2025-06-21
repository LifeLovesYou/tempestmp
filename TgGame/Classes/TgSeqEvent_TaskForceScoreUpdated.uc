class TgSeqEvent_TaskForceScoreUpdated extends SequenceEvent
    forcescriptorder(true)
    hidecategories(Object);

var() int DefenderTaskForce;
var() int currentScore;

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    bClientSideOnly=true
    OutputLinks(0)=(LinkDesc="Score Updated",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    //VariableLinks=none
    ObjName="TaskForce Score Updated"
	ObjCategory="TgGame"
}