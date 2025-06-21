class TgSeqEvent_DoorStatusChanged extends SequenceEvent
    native
    forcescriptorder(true)
    hidecategories(Object);

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="Opened",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="Closed",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    ObjName="DoorStatusChanged"
	ObjCategory="TgGame"
}