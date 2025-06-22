class Champions extends Object;

struct ChampionData
{
    var int BotId;
    var int SkinId;
    var int DeviceSkinId;
    var int HeadId;
    var string Talent;
    var string card1;
    var string card2;
    var string card3;
};

var array<ChampionData> ChampionDatabase;
var array<string> ChampionNames;

public function loadChampions()
{
    local ChampionData TempChamp;

    /*
    // Androxus
    TempChamp.BotId = 2205; TempChamp.SkinId = 15292; TempChamp.DeviceSkinId = 13168;TempChamp.HeadId = 15160;
    TempChamp.Talent = "Godslayer"; TempChamp.card1 = "Power of the Abyss iv"; TempChamp.card2 = "Sleight of Hand ii"; TempChamp.card3 = "Watchful iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("androxus");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("andro");
    // Ash
    TempChamp.BotId = 2404; TempChamp.SkinId = 16977; TempChamp.DeviceSkinId = 16981; TempChamp.HeadId = 18859;
    TempChamp.Talent = "Battering Ram"; TempChamp.card1 = "Indomitable iv"; TempChamp.card2 = "War Machine iv"; TempChamp.card3 = "Siege Engine iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("ash");
    
    // Barik
    TempChamp.BotId = 2073; TempChamp.SkinId = 12200; TempChamp.DeviceSkinId = 13169; TempChamp.HeadId = 15217;
    TempChamp.Talent = "Tinkerin"; TempChamp.card1 = "Failsafe iv"; TempChamp.card2 = "War Machine iv"; TempChamp.card3 = "Brave and Bold iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("barik");
    
    // Bomb King (with aliases)
    TempChamp.BotId = 2281; TempChamp.SkinId = 15294; TempChamp.DeviceSkinId = 13380; TempChamp.HeadId = 14960;
    TempChamp.Talent = "Demolition"; TempChamp.card1 = "Air Blast iv"; TempChamp.card2 = "Backdraft iv"; TempChamp.card3 = "King's New Cloak iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("bombking");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("bk");
    
    // Buck
    TempChamp.BotId = 2147; TempChamp.SkinId = 15295; TempChamp.DeviceSkinId = 13170; TempChamp.HeadId = 15572;
    TempChamp.Talent = "Bounce House"; TempChamp.card1 = "Leg Day iv"; TempChamp.card2 = "Stomping Ground iv"; TempChamp.card3 = "Seismic Wave iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("buck");
    
    // Cassie
    TempChamp.BotId = 2092; TempChamp.SkinId = 12201; TempChamp.DeviceSkinId = 13171; TempChamp.HeadId = 15926;
    TempChamp.Talent = "Exaction"; TempChamp.card1 = "Incitement iv"; TempChamp.card2 = "Somersault iv"; TempChamp.card3 = "Onslaught iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("cassie");
    
    // Drogoz
    TempChamp.BotId = 2277; TempChamp.SkinId = 13404; TempChamp.DeviceSkinId = 13379; TempChamp.HeadId = 15274;
    TempChamp.Talent = "Fusillade"; TempChamp.card1 = "Propel iv"; TempChamp.card2 = "Survival iv"; TempChamp.card3 = "Masterful iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("drogoz");
    
    */
    // Evie
    TempChamp.BotId = 2094; TempChamp.SkinId = 15298; TempChamp.DeviceSkinId = 13172; TempChamp.HeadId = 15204;
    TempChamp.Talent = "Wormhole"; TempChamp.card1 = "Swift Witch iv"; TempChamp.card2 = "Flicker iv"; TempChamp.card3 = "Teleport iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("evie");
    /*
    // Fernando (with alias)
    TempChamp.BotId = 2071; TempChamp.SkinId = 15299; TempChamp.DeviceSkinId = 13173; TempChamp.HeadId = 15257;
    TempChamp.Talent = "Scorch"; TempChamp.card1 = "Hot Pursuit iv"; TempChamp.card2 = "Brand iv"; TempChamp.card3 = "Running Start iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("fernando");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("nando");
    
    // Grohk
    TempChamp.BotId = 2093; TempChamp.SkinId = 15300; TempChamp.DeviceSkinId = 13174; TempChamp.HeadId = 15243;
    TempChamp.Talent = "Maelstrom"; TempChamp.card1 = "Arc Lightning iv"; TempChamp.card2 = "Shamanic Might iv"; TempChamp.card3 = "Lightning Rod iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("grohk");
    
    // Grover
    TempChamp.BotId = 2254; TempChamp.SkinId = 15301; TempChamp.DeviceSkinId = 13175; TempChamp.HeadId = 15588;
    TempChamp.Talent = "Ferocity"; TempChamp.card1 = "Verdant Expanse iv"; TempChamp.card2 = "Gentle Breeze iv"; TempChamp.card3 = "Adrenaline iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("grover");
    
    // Inara (with alias)
    TempChamp.BotId = 2348; TempChamp.SkinId = 16245; TempChamp.DeviceSkinId = 16290; TempChamp.HeadId = 16287;
    TempChamp.Talent = "Mother's Grace"; TempChamp.card1 = "Geomancer iv"; TempChamp.card2 = "Steadfast iv"; TempChamp.card3 = "Shear ii";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("inara");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("nara");
    
    // Jenos
    TempChamp.BotId = 2431; TempChamp.SkinId = 19034; TempChamp.DeviceSkinId = 19035; TempChamp.HeadId = 19224;
    TempChamp.Talent = "Luminary"; TempChamp.card1 = "Space Jam iv"; TempChamp.card2 = "Star Seeker iv"; TempChamp.card3 = "Retrograde iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("jenos");
    
    // Kinessa (with aliases, including Lex replacement)
    TempChamp.BotId = 2249; TempChamp.SkinId = 12941; TempChamp.DeviceSkinId = 13176; TempChamp.HeadId = 15235;
    TempChamp.Talent = "Eagle Eye"; TempChamp.card1 = "Prodigy iv"; TempChamp.card2 = "Beam Me Up iv"; TempChamp.card3 = "Open Season i";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("kinessa");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("nessa");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("strix"); // Strix is fucked, so use Kinessa
     */
    
    // Lex
    TempChamp.BotId = 2362; TempChamp.SkinId = 16531; TempChamp.DeviceSkinId = 16532; TempChamp.HeadId = 16958;
    TempChamp.Talent = "Death Hastens"; TempChamp.card1 = "Warrants Out iv"; TempChamp.card2 = "Requip iv"; TempChamp.card3 = "Compel i";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("lex");

    /*
    // Lian
    TempChamp.BotId = 2417; TempChamp.SkinId = 19032; TempChamp.DeviceSkinId = 19033; TempChamp.HeadId = 19321;
    TempChamp.Talent = "Eminence"; TempChamp.card1 = "Inheritance iv"; TempChamp.card2 = "Present Arms iv"; TempChamp.card3 = "Highborn iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("lian");
    
    // Maeve
    TempChamp.BotId = 2338; TempChamp.SkinId = 16216; TempChamp.DeviceSkinId = 16221; TempChamp.HeadId = 16217;
    TempChamp.Talent = "Artful Dodger"; TempChamp.card1 = "Chase iv"; TempChamp.card2 = "Patch Up iv"; TempChamp.card3 = "On Edge iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("maeve");
    
     */
    // Makoa (with alias)
    TempChamp.BotId = 2288; TempChamp.SkinId = 14465; TempChamp.DeviceSkinId = 14466; TempChamp.HeadId = 15124;
    TempChamp.Talent = "Pluck"; TempChamp.card1 = "Rampage iv"; TempChamp.card2 = "Strongarm iv"; TempChamp.card3 = "Surf iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("makoa");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("koa");
    
    // Mal'Damba (with alias)
    TempChamp.BotId = 2303; TempChamp.SkinId = 14587; TempChamp.DeviceSkinId = 14593; TempChamp.HeadId = 15194;
    TempChamp.Talent = "Spirit's Chosen"; TempChamp.card1 = "Possession iv"; TempChamp.card2 = "Swift Spirits iv"; TempChamp.card3 = "Eerie Presence iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("maldamba");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("damba");
    
    // Pip
    TempChamp.BotId = 2056; TempChamp.SkinId = 15303; TempChamp.DeviceSkinId = 13177; TempChamp.HeadId = 14954;
    TempChamp.Talent = "Catalyst"; TempChamp.card1 = "Moxie iv"; TempChamp.card2 = "From Above iv"; TempChamp.card3 = "Side Tanks iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("pip");
    
    /*
    // Ruckus
    TempChamp.BotId = 2149; TempChamp.SkinId = 15304; TempChamp.DeviceSkinId = 13178; TempChamp.HeadId = 15795;
    TempChamp.Talent = "Aerial Assault"; TempChamp.card1 = "Fuel Reserves iv"; TempChamp.card2 = "Dampener iv"; TempChamp.card3 = "Crystal Capacitor iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("ruckus");
    
    // Seris
    TempChamp.BotId = 2372; TempChamp.SkinId = 16584; TempChamp.DeviceSkinId = 16585; TempChamp.HeadId = 16586;
    TempChamp.Talent = "Mortal Reach"; TempChamp.card1 = "Veil iv"; TempChamp.card2 = "Blood Pact iv"; TempChamp.card3 = "Dark Whisper iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("seris");
    
     */
    // Sha Lin (with alias)
    TempChamp.BotId = 2307; TempChamp.SkinId = 14890; TempChamp.DeviceSkinId = 14892; TempChamp.HeadId = 15642;
    TempChamp.Talent = "Desert Shadow"; TempChamp.card1 = "Wanderlust iv"; TempChamp.card2 = "Run Like the Wind iv"; TempChamp.card3 = "Poise iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("shalin");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("sha");
    
    /*
    // Skye
    TempChamp.BotId = 2057; TempChamp.SkinId = 12207; TempChamp.DeviceSkinId = 13179; TempChamp.HeadId = 15407;
    TempChamp.Talent = "Surprise Attack"; TempChamp.card1 = "Victory Rush iv"; TempChamp.card2 = "Poisoner iv"; TempChamp.card3 = "Ninja iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("skye");
    
     */
    // Torvald (with alias)
    TempChamp.BotId = 2322; TempChamp.SkinId = 16485; TempChamp.DeviceSkinId = 15809; TempChamp.HeadId = 16236;
    TempChamp.Talent = "Field Study"; TempChamp.card1 = "Winddancer iv"; TempChamp.card2 = "Glyph of Health iv"; TempChamp.card3 = "Glyph of Freedom iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("torvald");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("torv");
    
    /*
    // Tyra
    TempChamp.BotId = 2314; TempChamp.SkinId = 15822; TempChamp.DeviceSkinId = 15821; TempChamp.HeadId = 16068;
    TempChamp.Talent = "Mercy Kill"; TempChamp.card1 = "In The Fray iv"; TempChamp.card2 = "Bandolier iv"; TempChamp.card3 = "Primal Might iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("tyra");
    
    // Viktor (with alias)
    TempChamp.BotId = 2285; TempChamp.SkinId = 14173; TempChamp.DeviceSkinId = 14174; TempChamp.HeadId = 15154;
    TempChamp.Talent = "Firefight"; TempChamp.card1 = "Grenadier iv"; TempChamp.card2 = "Compensator iv"; TempChamp.card3 = "Firing Stance iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("viktor");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("vik");
    
    // Willo
    TempChamp.BotId = 2393; TempChamp.SkinId = 16810; TempChamp.DeviceSkinId = 16811; TempChamp.HeadId = 18307;
    TempChamp.Talent = "Blastflower"; TempChamp.card1 = "Spritely iv"; TempChamp.card2 = "Flora iv"; TempChamp.card3 = "Just Believe! iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("willo");
    
    // Ying
    TempChamp.BotId = 2267; TempChamp.SkinId = 13212; TempChamp.DeviceSkinId = 13221; TempChamp.HeadId = 15418;
    TempChamp.Talent = "Lifelike"; TempChamp.card1 = "Spring Bloom iv"; TempChamp.card2 = "Spring Forward iv"; TempChamp.card3 = "Rewind iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("ying");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("bestwaifu");
     */

    // Zhin
    TempChamp.BotId = 2420; TempChamp.SkinId = 18231; TempChamp.DeviceSkinId = 18300; TempChamp.HeadId = 18232;
    TempChamp.Talent = "Guillotine"; TempChamp.card1 = "Malice iv"; TempChamp.card2 = "Fuel for the Fire iv"; TempChamp.card3 = "Fan the Flames iv";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("zhin");



    // Churchill
    TempChamp.BotId = 2478; TempChamp.SkinId = 15810; TempChamp.DeviceSkinId = 16236; TempChamp.HeadId = 14174;
    TempChamp.Talent = ""; TempChamp.card1 = ""; TempChamp.card2 = ""; TempChamp.card3 = "";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("churchill"); 
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("vivian");

    // Lazarus
    TempChamp.BotId = 2477; TempChamp.SkinId = 19431; TempChamp.DeviceSkinId = 19434; TempChamp.HeadId = 19750;
    TempChamp.Talent = ""; TempChamp.card1 = ""; TempChamp.card2 = ""; TempChamp.card3 = "";
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("lazarus");
    ChampionDatabase.AddItem(TempChamp); ChampionNames.AddItem("terminus");
}
