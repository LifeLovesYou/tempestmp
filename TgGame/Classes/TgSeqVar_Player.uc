class TgSeqVar_Player extends SeqVar_Player
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var transient array<Object> HumanPlayers;
var transient array<Object> BotPlayers;
var transient array<Object> PetPlayers;
var() bool bAllBots;
var() bool bAllHumans;
var() bool bAllHumansAndPets;
var() int nTaskForceNumber;

defaultproperties
{
    bAllHumans=true
    nTaskForceNumber=-1
    bAllPlayers=false
    ObjName="TgPlayer"
	ObjCategory="TgGame"
}