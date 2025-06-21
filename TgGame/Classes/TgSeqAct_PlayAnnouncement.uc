class TgSeqAct_PlayAnnouncement extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() bool bPlayImmediately;
var() bool bFlushOthers;
var() int SoundIndex;
var() SoundCue OptionalCue;

event Activated()
{ 
}

static event int GetObjClassVersion()
{
}

defaultproperties
{
    ObjName="Tutorial Announcement"
	ObjCategory="TgGame"
}