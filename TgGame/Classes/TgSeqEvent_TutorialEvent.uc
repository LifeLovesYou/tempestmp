class TgSeqEvent_TutorialEvent extends SequenceEvent
    native
    forcescriptorder(true)
    hidecategories(Object);

enum TUTORIAL_EVENT
{
    TUTEVT_OPENED_ITEM_SHOP,
    TUTEVT_BOUGHT_ITEM,
    TUTEVT_CLOSED_ITEM_SHOP,
    TUTEVT_OPENED_SKILLS,
    TUTEVT_BOUGHT_SKILL,
    TUTEVT_CLOSED_SKILLS,
    TUTEVT_USED_ABILITY,
    TUTEVT_USED_RECALL,
    TUTEVT_TARGETED,
    TUTEVT_OPENED_INTRO,
    TUTEVT_CLOSED_INTRO,
    TUTEVT_USED_ACTIVE_ITEM,
    TUTEVT_SELECTED_SHOP_ITEM,
    TUTEVT_SELECTED_SHOP_ITEM2,
    TUTEVT_SELECTED_SHOP_ITEM3,
    TUTEVT_USED_CONSUMABLE_ITEM,
    TUTEVT_SELECTED_ALL_ITEMS,
    //TUTEVT_MAX
};

enum TUTORIAL_TARGET_TYPE
{
    TUT_TARGET_TOWER,
    TUT_TARGET_PHOENIX,
    TUT_TARGET_GUARDIAN,
    //TUT_TARGET_MAX
};

var() TgSeqEvent_TutorialEvent.TUTORIAL_EVENT TutEvent;
var int EventData;

static event int GetObjClassVersion()
{
    //return ReturnValue;    
}

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="EventData",LinkVar="None",PropertyName="EventData",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Smite Tutorial Events"
	ObjCategory="TgGame"
}