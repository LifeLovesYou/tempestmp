class TgSeqAct_ClientLoadDevices extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() array<int> m_DeviceIdList;
var() bool m_bClearExistingLoads;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Pawn",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="ClientLoadDevices"
	ObjCategory="TgGame"
}