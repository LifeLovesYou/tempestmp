class TgSeqAct_TemporaryRemoveDevice extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int m_nEquipPoint;

defaultproperties
{
    m_nEquipPoint=-1
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Players",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Temporary Remove Device"
	ObjCategory="TgGame"
}