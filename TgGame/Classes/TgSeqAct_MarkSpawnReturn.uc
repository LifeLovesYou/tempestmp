class TgSeqAct_MarkSpawnReturn extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() Teleporter m_Teleporter;

event Activated()
{ 
}

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Player",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Mark Spawn Return"
	ObjCategory="TgGame"
}