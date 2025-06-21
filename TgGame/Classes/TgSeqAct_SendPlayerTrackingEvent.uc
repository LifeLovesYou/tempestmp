class TgSeqAct_SendPlayerTrackingEvent extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int m_nEventId;
var() int m_nSubEventID;
var() string m_ReferenceName;
var() int m_nReferenceValue;

defaultproperties
{
    ObjName="Send Player Tracking Event"
	ObjCategory="TgGame"
}