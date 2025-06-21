class TgSeqAct_RequestMission extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

enum EMissionDifficultyLevel
{
    DL_Easy,
    DL_Medium,
    DL_Hard,
    //DL_MAX
};

var() int m_nMapGameId;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Player",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Request Mission"
	ObjCategory="TgGame"
}