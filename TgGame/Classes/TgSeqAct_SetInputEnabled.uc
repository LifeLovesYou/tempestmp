class TgSeqAct_SetInputEnabled extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() bool bEnableMoveForward;
var() bool bEnableMoveBackward;
var() bool bEnableMoveLeft;
var() bool bEnableMoveRight;
var() bool bEnableLookUp;
var() bool bEnableLookDown;
var() bool bEnableLookLeft;
var() bool bEnableLookRight;
var() bool bEnableJumping;
var() bool bEnableMounting;
var() bool bEnableAuto;
var() bool bEnableAlt;
var() bool bEnableBattleAbility;
var() bool bEnableMovementAbility;
var() bool bEnableUltimate;
var() bool bEnableEmote;

function Activated()
{
}

defaultproperties
{
    bEnableMoveForward=true
    bEnableMoveBackward=true
    bEnableMoveLeft=true
    bEnableMoveRight=true
    bEnableLookUp=true
    bEnableLookDown=true
    bEnableLookLeft=true
    bEnableLookRight=true
    bEnableJumping=true
    bEnableMounting=true
    bEnableAuto=true
    bEnableAlt=true
    bEnableBattleAbility=true
    bEnableMovementAbility=true
    bEnableUltimate=true
    bEnableEmote=true
    ObjName="Set Input Enabled/Disabled"
	ObjCategory="TgGame"
}