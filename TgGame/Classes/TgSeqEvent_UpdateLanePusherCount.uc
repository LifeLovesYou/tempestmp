class TgSeqEvent_UpdateLanePusherCount extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int Taskforce;

defaultproperties
{
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="Died",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="Spawned",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    //VariableLinks=none
    ObjName="Update LanePusher Count"
	ObjCategory="TgGame"
}