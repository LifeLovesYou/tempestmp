class TgSeqAct_SetEnergyGainBlock extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int m_bBlockEnergyGain;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkDesc="Block Energy Gain",LinkVar="None",PropertyName="m_bBlockEnergyGain",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Block Energy Gain"
	ObjCategory="TgGame"
}