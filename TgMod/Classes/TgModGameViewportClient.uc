class TgModGameViewportClient extends TgGameViewportClient within Engine;

var TgPlayerController m_TgPC;
var float CurrentTime, StartTime;
var bool bHasStarted;

var TgChampions champions;

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

    Champions = new class'TgChampions';
    Champions.loadChampions();

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
    
    if (m_TgPC.CheatManager == None)
    {
        m_TgPC.CheatManager = new(m_TgPC) class'TgBattleCheatManager';
        if (m_TgPC.CheatManager != None)
        {
            //projectiles
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


            for (i = 0; i < Champions.ChampionDatabase.Length; i++) {
                //TgBattleCheatManager(m_TgPC.CheatManager).Outer.ConsoleCommand("testprecache" @ Champions.ChampionDatabase[i].BotId @ Champions.ChampionDatabase[i].SkinId @ Champions.ChampionDatabase[i].DeviceSkinId @ Champions.ChampionDatabase[i].HeadId);
                m_TgPC.ConsoleCommand("switchclass" @ Champions.ChampionNames[i]);
            }

            `Log("CheatManager successfully created and initialized : " @ m_TgPC.CheatManager.Name @ ":" @ m_TgPC.CheatManager.Outer.Name);

            /*
			m_TgPC.ConsoleCommand("testprecache 2205 15292 13168 1");
			m_TgPC.ConsoleCommand("testprecache 2404 16977 16981 1");
			m_TgPC.ConsoleCommand("testprecache 2073 12200 13169 1");
			m_TgPC.ConsoleCommand("testprecache 2281 15294 13380 1");
			m_TgPC.ConsoleCommand("testprecache 2147 15295 13170 1");
			m_TgPC.ConsoleCommand("testprecache 2092 12201 13171 1");
			m_TgPC.ConsoleCommand("testprecache 2277 13404 13379 1");
			m_TgPC.ConsoleCommand("testprecache 2094 15298 13172 1");
			m_TgPC.ConsoleCommand("testprecache 2071 15299 13173 1");
			m_TgPC.ConsoleCommand("testprecache 2093 15300 13174 1");
			m_TgPC.ConsoleCommand("testprecache 2254 15301 13175 1");
			m_TgPC.ConsoleCommand("testprecache 2348 16245 16290 1");
			m_TgPC.ConsoleCommand("testprecache 2431 19034 19035 1");
			m_TgPC.ConsoleCommand("testprecache 2249 12941 13176 1");
			m_TgPC.ConsoleCommand("testprecache 2417 19032 19033 1");
			m_TgPC.ConsoleCommand("testprecache 2338 16216 16221 1");
			m_TgPC.ConsoleCommand("testprecache 2288 14465 14466 1");
			m_TgPC.ConsoleCommand("testprecache 2303 14587 14593 1");
			m_TgPC.ConsoleCommand("testprecache 2056 15303 13177 1");
			m_TgPC.ConsoleCommand("testprecache 2149 15304 13178 1");
			m_TgPC.ConsoleCommand("testprecache 2372 16584 16585 1");
			m_TgPC.ConsoleCommand("testprecache 2307 14890 14892 1");
			m_TgPC.ConsoleCommand("testprecache 2057 12207 13179 1");
			m_TgPC.ConsoleCommand("testprecache 2322 16485 15809 1");
			m_TgPC.ConsoleCommand("testprecache 2314 15822 15821 1");
			m_TgPC.ConsoleCommand("testprecache 2285 14173 14174 1");
			m_TgPC.ConsoleCommand("testprecache 2393 16810 16811 1");
			m_TgPC.ConsoleCommand("testprecache 2267 13212 13221 1");

            m_TgPC.EnsureBotPrecache(2205 15292 15160 13168);
            m_TgPC.EnsureBotPrecache(2404 16977 18859 16981);
            m_TgPC.EnsureBotPrecache(2073 12200 15217 13169);
            m_TgPC.EnsureBotPrecache(2281 15294 14960 13380);
            m_TgPC.EnsureBotPrecache(2147 15295 15572 13170);
            m_TgPC.EnsureBotPrecache(2092 12201 15926 13171);
            m_TgPC.EnsureBotPrecache(2277 13404 15274 13379);
            m_TgPC.EnsureBotPrecache(2094 15298 15204 13172);
            m_TgPC.EnsureBotPrecache(2071 15299 15257 13173);
            m_TgPC.EnsureBotPrecache(2093 15300 15243 13174);
            m_TgPC.EnsureBotPrecache(2254 15301 15588 13175);
            m_TgPC.EnsureBotPrecache(2348 16245 16287 16290);
            m_TgPC.EnsureBotPrecache(2431 19034 19224 19035);
            m_TgPC.EnsureBotPrecache(2249 12941 15235 13176);
            m_TgPC.EnsureBotPrecache(2417 19032 19321 19033);
            m_TgPC.EnsureBotPrecache(2338 16216 16217 16221);
            m_TgPC.EnsureBotPrecache(2288 14465 15124 14466);
            m_TgPC.EnsureBotPrecache(2303 14587 15194 14593);
            m_TgPC.EnsureBotPrecache(2056 15303 14954 13177);
            m_TgPC.EnsureBotPrecache(2149 15304 15795 13178);
            m_TgPC.EnsureBotPrecache(2372 16584 16586 16585);
            m_TgPC.EnsureBotPrecache(2307 14890 15642 14892);
            m_TgPC.EnsureBotPrecache(2057 12207 13179 13179);
            m_TgPC.EnsureBotPrecache(2322 16485 15407 15809);
            m_TgPC.EnsureBotPrecache(2314 15822 16068 15821);
            m_TgPC.EnsureBotPrecache(2285 14173 14174 14174);
            m_TgPC.EnsureBotPrecache(2393 16810 15151 16811);
            m_TgPC.EnsureBotPrecache(2267 13212 15418 13221);
			*/
        }
        else
        {
            `Log("Failed to create CheatManager!");
        }
    }
}