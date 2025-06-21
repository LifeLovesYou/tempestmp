class TgSeqEvent_PlayerInitialized extends SequenceEvent
    native
    forcescriptorder(true)
    hidecategories(Object);

var() bool bLocalPlayerOnly;

defaultproperties
{
    bClientSideOnly=true
    ObjName="Player Initialized"
	ObjCategory="TgGame"
}