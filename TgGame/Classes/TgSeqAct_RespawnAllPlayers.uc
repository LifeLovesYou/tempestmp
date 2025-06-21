class TgSeqAct_RespawnAllPlayers extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() bool bResetLivingPlayers;
var() bool bResetDeadPlayers;
var() bool bResetHealth;

defaultproperties
{
    bResetLivingPlayers=true
    bResetDeadPlayers=true
    bResetHealth=true
    bCallHandler=false
    //VariableLinks=none
    ObjName="RespawnAllPlayers"
	ObjCategory="TgGame"
}