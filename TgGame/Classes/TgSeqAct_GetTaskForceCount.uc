class TgSeqAct_GetTaskForceCount extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int Taskforce;
var int m_nPlayerCount;
var int m_nBotCount;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Player Count",LinkVar="None",PropertyName="m_nPlayerCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Bot Count",LinkVar="None",PropertyName="m_nBotCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="GetTaskForceCount"
	ObjCategory="TgGame"
}