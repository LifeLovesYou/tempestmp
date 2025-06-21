class TgSeqAct_ForceClientTutorialAction extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

enum eForcedClientTutorialAction
{
    FCTA_BlockAvl,
    FCTA_UnblockAvl,
    FCTA_Open,
    FCTA_Close,
    //FCTA_MAX
};

var() TgSeqAct_ForceClientTutorialAction.eForcedClientTutorialAction ForcedAction;
var() TgObject.eTutorialForceableElements GameUIElement;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Targets",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Force Client Tutorial Action"
	ObjCategory="TgGame"
}