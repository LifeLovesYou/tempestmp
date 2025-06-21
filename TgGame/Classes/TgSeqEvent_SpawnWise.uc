class TgSeqEvent_SpawnWise extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int Taskforce;

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="TriggerFactory",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    //VariableLinks=none
    ObjName="Spawn Wise"
	ObjCategory="TgGame"
}