class TgSeqEvent_ControlPointOwnershipChange_Server extends SequenceEvent
    forcescriptorder(true)
    hidecategories(Object);

var() int PointIndex;

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="Output",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    ObjName="Control Point Ownership Change (Server Notify)"
	ObjCategory="TgGame"
}