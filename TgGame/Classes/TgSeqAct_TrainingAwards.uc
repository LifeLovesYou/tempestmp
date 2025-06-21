class TgSeqAct_TrainingAwards extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() float m_fGoldTime;
var() float m_fSilverTime;
var() float m_fBronzeTime;
var() float m_fPassTime;

defaultproperties
{
    m_fGoldTime=-1.0000000
    m_fSilverTime=-1.0000000
    m_fBronzeTime=-1.0000000
    m_fPassTime=-1.0000000
    InputLinks(0)=(LinkDesc="Auto-Fail",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    InputLinks(1)=(LinkDesc="Auto-Pass",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    InputLinks(2)=(LinkDesc="Auto-Bronze",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    InputLinks(3)=(LinkDesc="Auto-Silver",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    InputLinks(4)=(LinkDesc="Auto-Gold",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    //OutputLinks=none
    //VariableLinks=none
    ObjName="Training Awards"
	ObjCategory="TgGame"
}