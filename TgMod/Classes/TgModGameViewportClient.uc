class TgModGameViewportClient extends TgGameViewportClient within Engine;

var TgPlayerController m_TgPC;
var float CurrentTime, StartTime;
var bool bHasStarted;

function PostRender(Canvas Canvas)
{
    super.PostRender(Canvas);

    // Access TimeSeconds from PlayerController's WorldInfo

    m_TgPC = TgPlayerController(self.GetPlayerOwner(0).Actor);
    if (m_TgPC == None || m_TgPC.WorldInfo == None)
    {
        return;
    }

    CurrentTime = m_TgPC.WorldInfo.TimeSeconds;

    // Set StartTime once
    if (!bHasStarted)
    {
        StartTime = CurrentTime;
        bHasStarted = true;
    }

    // Only draw for 20 seconds
    if (CurrentTime - StartTime < 20)
    {
        Canvas.SetDrawColor(0,255,0,255);
        Canvas.SetPos(49, 50);
        Canvas.DrawText("TEMPEST LAUNCHER");
        Canvas.SetPos(50, 65);
        Canvas.DrawText("F1: ENTER SHOOTING RANGE");
        Canvas.SetPos(50, 80);
        Canvas.DrawText("F2: OPEN CONSOLE");
    }

    findPCAndAttachCM();
}

event bool Init(out string OutError)
{
    // Create the viewport's console.
	 
	ViewportConsole = new(Self) class'Engine.Console';

	if ( InsertInteraction(ViewportConsole) == -1 )
	{
		OutError = "Failed to add interaction to GlobalInteractions array:" @ ViewportConsole;
		return false;
	}

    SetConsoleTarget(0);

    return super.Init(OutError);
}

/**
 * Sets the player which console commands will be executed in the context of.
 */
exec function SetConsoleTarget(int PlayerIndex)
{
	if (ViewportConsole != none)
	{
		if(PlayerIndex >= 0 && PlayerIndex < GamePlayers.Length)
		{
			ViewportConsole.ConsoleTargetPlayer = GamePlayers[PlayerIndex];
		}
		else
		{
			ViewportConsole.ConsoleTargetPlayer = None;
		}
	}
}

public function findPCAndAttachCM() {
    local int i;
	m_TgPC = TgPlayerController(self.GetPlayerOwner(0).Actor);
	 
	m_TgPC.CheatClass = class'TgBattleCheatManager';
    
    if (m_TgPC.CheatManager == None) {
        m_TgPC.CheatManager = new(m_TgPC) class'TgBattleCheatManager';
        if (m_TgPC.CheatManager != None) {
            m_TgPC.CheatManager.InitCheatManager();
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_evie m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_grover m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_longbow m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_cassie m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_pip m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_bombking m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_barik m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_makoa m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_barriertank m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_darklord m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_Fairy m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_Flak m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_MalDamba m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_Oracle m_bAirAccuracyPenalty False");
            //hitscans
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_astro m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_Kinessa m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_lex m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_owl m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_ruckus m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_skye m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_tyra m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_viktor m_bAirAccuracyPenalty False");
            m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn_ying m_bAirAccuracyPenalty False");
			m_TgPC.ConsoleCommand("changetaskforce 1");
        } else {
            `Log("Failed to create CheatManager!");
        }
    }
}