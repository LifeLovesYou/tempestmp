class TgSeqAct_SetLobbyMeshSkin extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() int m_nMessageSkinId;
var() int m_nMessageDeviceSkinId;
var() int m_nSkinId;
var() int m_nDeviceSkinId;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Meshes",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="m_nMessageSkinId",LinkVar="None",PropertyName="m_nMessageSkinId",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="m_nMessageDeviceSkinId",LinkVar="None",PropertyName="m_nMessageDeviceSkinId",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(3)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Skin ID",LinkVar="None",PropertyName="m_nSkinId",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(4)=(ExpectedType=Class'Engine.SeqVar_Int',LinkDesc="Device Skin ID",LinkVar="None",PropertyName="m_nDeviceSkinId",bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Set Lobby Mesh Skin"
	ObjCategory="TgGame"
}