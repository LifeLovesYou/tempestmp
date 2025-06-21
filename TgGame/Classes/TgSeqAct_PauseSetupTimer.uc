class TgSeqAct_PauseSetupTimer extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var(PauseSetupTimer) bool PauseImmediately;
var(PauseSetupTimer) float PauseAtTimeRemaining;

function Activated()
{ 
}

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkDesc="Pause Immediately",LinkVar="None",PropertyName="PauseImmediately",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Pause At Time Remaining",LinkVar="None",PropertyName="PauseAtTimeRemaining",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Pause Setup Timer"
	ObjCategory="TgGame"
}