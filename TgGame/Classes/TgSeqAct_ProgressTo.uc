class TgSeqAct_ProgressTo extends SeqAct_Delay
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var TgPawn m_Instigator;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Duration",LinkVar="None",PropertyName="Duration",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target",LinkVar="None",PropertyName="Target",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="ProgressTo"
	ObjCategory="TgGame"
}