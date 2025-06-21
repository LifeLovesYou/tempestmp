class TgSeqAct_SetUltimateEnergy extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() float fChargePercent;

function Activated()
{  
}

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Ultimate Charge %",LinkVar="None",PropertyName="fChargePercent",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Set Ultimate Energy"
	ObjCategory="TgGame"
}