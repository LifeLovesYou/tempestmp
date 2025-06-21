class TgSeqAct_GetLocalPlayerController extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var TgPlayerController LocalPlayerController;

function Activated()
{  
}

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Local Player Controller",LinkVar="None",PropertyName="LocalPlayerController",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Get Local Player Controller"
	ObjCategory="TgGame"
}