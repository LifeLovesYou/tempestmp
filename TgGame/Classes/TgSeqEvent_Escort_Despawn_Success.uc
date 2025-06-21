class TgSeqEvent_Escort_Despawn_Success extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int DefendersTaskForce;

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    //VariableLinks=none
    ObjName="Escort_Despawn_Success"
	ObjCategory="TgGame"
}