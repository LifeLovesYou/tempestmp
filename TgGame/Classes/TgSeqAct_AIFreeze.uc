class TgSeqAct_AIFreeze extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int TaskForceNumber;

defaultproperties
{
    InputLinks(0)=(LinkDesc="Freeze",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    InputLinks(1)=(LinkDesc="Unfreeze",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Freeze"
	ObjCategory="TgGame"
}