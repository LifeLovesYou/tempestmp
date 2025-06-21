class TgSeqAct_HackBot extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var Actor m_ControlPawn;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Bots/Factory",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Control Pawn",LinkVar="None",PropertyName="m_ControlPawn",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=0,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Hack Bot"
	ObjCategory="TgGame"
}