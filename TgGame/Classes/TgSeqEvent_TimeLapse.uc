class TgSeqEvent_TimeLapse extends SequenceEvent
    forcescriptorder(true)
    hidecategories(Object);

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    bClientSideOnly=true
    OutputLinks(0)=(LinkDesc="Pre Time Lapse",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="Post Time Lapse",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    //VariableLinks=none
    ObjName="TgSeqEvent_TimeLapse"
	ObjCategory="TgGame"
}