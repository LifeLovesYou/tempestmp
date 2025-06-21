class TgSeqAct_PlayFullBodyAnim extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() name c_AnimName;
var() float c_fRate;
var() float c_fBlendInTime;
var() float c_fBlendOutTime;
var() bool c_bLooping;
var() bool c_bOverride;

defaultproperties
{
    c_fRate=1.0000000
    c_fBlendInTime=0.2000000
    c_fBlendOutTime=0.2000000
    c_bOverride=true
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Player",LinkVar="None",PropertyName="Targets",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Play Full Body Animation"
	ObjCategory="TgGame"
}