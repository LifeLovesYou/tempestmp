class TgSeqAct_ShowGameTip extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() int GameTipId;
var TgPlayerController TargetPlayer;

function Activated()
{  
}

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Game Tip ID",LinkVar="None",PropertyName="GameTipId",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target Player",LinkVar="None",PropertyName="TargetPlayer",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Show Game Tip"
	ObjCategory="TgGame"
}