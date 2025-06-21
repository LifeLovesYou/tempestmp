class TgSeqAct_SetMapLane extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var int m_nMapLane;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Map Lane",LinkVar="None",PropertyName="m_nMapLane",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Set Map Lane"
	ObjCategory="TgGame"
}