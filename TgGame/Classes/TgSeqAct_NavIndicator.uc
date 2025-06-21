class TgSeqAct_NavIndicator extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var Actor m_NavTarget;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Player(s)",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Destination",LinkVar="None",PropertyName="m_NavTarget",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Nav Indicator"
	ObjCategory="TgGame"
}