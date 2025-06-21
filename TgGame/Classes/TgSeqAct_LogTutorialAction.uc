class TgSeqAct_LogTutorialAction extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() int PlayerAction;
var() int EventData;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Targets",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="EventData",LinkVar="None",PropertyName="EventData",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Log Tutorial Action"
	ObjCategory="TgGame"
}