class TgSeqAct_SetSkelPosture extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() TgPawn.TG_POSTURE m_Posture;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="MeshActor",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Set Skeletal Posture"
	ObjCategory="TgGame"
}