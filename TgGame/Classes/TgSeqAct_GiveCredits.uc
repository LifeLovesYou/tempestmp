class TgSeqAct_GiveCredits extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int CreditsToGive;

function Activated()
{ 
}

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Credits to Give",LinkVar="None",PropertyName="CreditsToGive",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Give Credits"
	ObjCategory="TgGame"
}