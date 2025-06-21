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
	m_TgPC = TgPlayerController(self.GetPlayerOwner(0).Actor);
	 
	m_TgPC.CheatClass = class'TgBattleCheatManager';
    
    if (m_TgPC.CheatManager == None)
    {
        m_TgPC.CheatManager = new(m_TgPC) class'TgBattleCheatManager';
        if (m_TgPC.CheatManager != None)
        {
            m_TgPC.CheatManager.InitCheatManager();
			m_TgPC.ConsoleCommand("setclientvalue Default__TgPawn m_bAirAccuracyPenalty False");
			m_TgPC.ConsoleCommand("changetaskforce 1");

            `Log("CheatManager successfully created and initialized : " @ m_TgPC.CheatManager.Name @ ":" @ m_TgPC.CheatManager.Outer.Name);
	
			m_TgPC.ConsoleCommand("testprecache 2205 15292 13168 0");
			m_TgPC.ConsoleCommand("testprecache 2404 16977 16981 0");
			m_TgPC.ConsoleCommand("testprecache 2073 12200 13169 0");
			m_TgPC.ConsoleCommand("testprecache 2281 15294 13380 0");
			m_TgPC.ConsoleCommand("testprecache 2147 15295 13170 0");
			m_TgPC.ConsoleCommand("testprecache 2092 12201 13171 0");
			m_TgPC.ConsoleCommand("testprecache 2277 13404 13379 0");
			m_TgPC.ConsoleCommand("testprecache 2094 15298 13172 0");
			m_TgPC.ConsoleCommand("testprecache 2071 15299 13173 0");
			m_TgPC.ConsoleCommand("testprecache 2093 15300 13174 0");
			m_TgPC.ConsoleCommand("testprecache 2254 15301 13175 0");
			m_TgPC.ConsoleCommand("testprecache 2348 16245 16290 0");
			m_TgPC.ConsoleCommand("testprecache 2431 19034 19035 0");
			m_TgPC.ConsoleCommand("testprecache 2249 12941 13176 0");
			m_TgPC.ConsoleCommand("testprecache 2417 19032 19033 0");
			m_TgPC.ConsoleCommand("testprecache 2338 16216 16221 0");
			m_TgPC.ConsoleCommand("testprecache 2288 14465 14466 0");
			m_TgPC.ConsoleCommand("testprecache 2303 14587 14593 0");
			m_TgPC.ConsoleCommand("testprecache 2056 15303 13177 0");
			m_TgPC.ConsoleCommand("testprecache 2149 15304 13178 0");
			m_TgPC.ConsoleCommand("testprecache 2372 16584 16585 0");
			m_TgPC.ConsoleCommand("testprecache 2307 14890 14892 0");
			m_TgPC.ConsoleCommand("testprecache 2057 12207 13179 0");
			m_TgPC.ConsoleCommand("testprecache 2322 16485 15809 0");
			m_TgPC.ConsoleCommand("testprecache 2314 15822 15821 0");
			m_TgPC.ConsoleCommand("testprecache 2285 14173 14174 0");
			m_TgPC.ConsoleCommand("testprecache 2393 16810 16811 0");
			m_TgPC.ConsoleCommand("testprecache 2267 13212 13221 0");
        }
        else
        {
            `Log("Failed to create CheatManager!");
        }
    }
}

event Timer() {
	m_TgPC.ConsoleCommand("testprecache 2285 14173 14174 0");
	m_TgPC.ConsoleCommand("testprecache 2093 12204 13174 0");
	m_TgPC.ConsoleCommand("testprecache 2438 19112 19136 0");
	m_TgPC.ConsoleCommand("testprecache 2094 12202 13172 0");
	m_TgPC.ConsoleCommand("testprecache 2056 10742 13177 0");
	m_TgPC.ConsoleCommand("testprecache 2071 12203 13173 0");
	m_TgPC.ConsoleCommand("testprecache 2322 15810 15809 0");
	m_TgPC.ConsoleCommand("testprecache 2281 13336 13380 0");
	m_TgPC.ConsoleCommand("testprecache 2147 12205 13170 0");
	m_TgPC.ConsoleCommand("testprecache 2303 14587 14593 0");
}