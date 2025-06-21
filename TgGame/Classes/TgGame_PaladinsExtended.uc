class TgGame_PaladinsExtended extends TgGame_Paladins
    native(Game)
    config(Game)
    hidecategories(Navigation,Movement,Collision);

enum EVictoryType
{
    EVT_Default,                    // 0
    EVT_Capture,                    // 1
    EVT_Defend,                     // 2
    EVT_Payload,                    // 3
    EVT_Siege,                      // 4
    EVT_Survival,                   // 5
    EVT_Kill,                       // 6
    EVT_Ticket,                     // 7
    EVT_TimeLimit,                  // 8
};

var config float m_fDefenseRespawnIncrease;
var config float m_fAttackRespawnIncrease;

// Export UTgGame_PaladinsExtended::execGetRespawnTime(FFrame&, void* const)
native function float GetRespawnTime(int TaskForceNum);

// Export UTgGame_PaladinsExtended::execScoreObjectiveHold(FFrame&, void* const)
native function ScoreObjectiveHold(TgPawn ScorePawn, int NumContested);

// Export UTgGame_PaladinsExtended::execScorePayloadHold(FFrame&, void* const)
native function ScorePayloadHold(TgPawn ScorePawn, int NumContested);

// Export UTgGame_PaladinsExtended::execLoadCardVendor(FFrame&, void* const)
native function LoadCardVendor();

// Export UTgGame_PaladinsExtended::execCaptureSpawnAlert(FFrame&, void* const)
native function CaptureSpawnAlert(float TimeRemaining);

event RespawnAllPlayers(bool bResetLivingPlayers, optional bool bResetDeadPlayers = true, optional bool bResetHealth = true, optional bool bResetDevices = false){}

function GlobalRespawnTimeUpdate(float fRespawnTime, bool bEnsureRespawnTimeDoesntIncrease){}
function GlobalRespawnTimeUpdateHelper(Controller C, TgPawn TgP, float fRespawnTime, bool bEnsureRespawnTimeDoesntIncrease){}