class TgSeqCond_HasCondition extends SequenceCondition
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

enum ConditionType
{
    TGCT_POISON,
    TGCT_DISEASE,
    TGCT_REGENERATION,
    TGCT_STUN,
    TGCT_STEALTH,
    TGCT_EMP_STUN,
    TGCT_IGNITE,
    TGCT_INVULNERABLE,
    TGCT_SLOW,
    //TGCT_MAX
};

var() TgSeqCond_HasCondition.ConditionType ConditionList;

defaultproperties
{
    OutputLinks(0)=(LinkDesc="True",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="False",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Players",LinkVar="None",PropertyName="None",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Has Condition"
	ObjCategory="TgGame"
}