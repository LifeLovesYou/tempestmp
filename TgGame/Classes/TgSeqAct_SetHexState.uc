class TgSeqAct_SetHexState extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() bool m_bChallengerWon;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkDesc="Challenger Won",LinkVar="None",PropertyName="m_bChallengerWon",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Set Hex State"
	ObjCategory="TgGame"
}