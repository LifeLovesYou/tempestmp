class TgSeqEvent_PhaseNotify extends SequenceEvent
    forcescriptorder(true)
    hidecategories(Object);

var string m_PhaseName;

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Instigator",LinkVar="None",PropertyName="None",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="Phase Name",LinkVar="None",PropertyName="m_PhaseName",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="TgSeqEvent_PhaseNotify"
	ObjCategory="TgGame"
}