class TgSeqAct_TutorialHighlighter extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

enum eTutorialHighlighterElement
{
    THE_Ability1,
    THE_ActiveItem,
    THE_ConsumableItem,
    THE_Gold,
    THE_ItemShop_Gold,
    THE_ItemShop_Item,
    THE_ItemShop_Item2,
    THE_ItemShop_Item3,
    THE_ItemShop_Purchase,
    THE_ItemShop_AllItems,
    THE_ItemShop_RemoveOverlay,
    THE_ItemShop_AddBlocker,
    THE_Stats_Display,
    //THE_MAX
};

var() TgSeqAct_TutorialHighlighter.eTutorialHighlighterElement GameUIElement;

defaultproperties
{
    InputLinks(0)=(LinkDesc="Show",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    InputLinks(1)=(LinkDesc="Hide",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Targets",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Tutorial Highlighter"
	ObjCategory="TgGame"
}