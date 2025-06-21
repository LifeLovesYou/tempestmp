class TgSeqAct_SetPlayerMeshVisible extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() bool bIs1PMeshVisible;
var() bool bIs3PMeshVisible;

function Activated()
{  
}

defaultproperties
{
    bIs1PMeshVisible=true
    bIs3PMeshVisible=true
    ObjName="Set Player Meshes Enabled/Disabled"
	ObjCategory="TgGame"
}