class TgGame_Paladins_Siege extends TgGame_PaladinsExtended
    native(Game)
    config(Game)
    hidecategories(Navigation,Movement,Collision);


function PostBeginPlay(){}
function TaskforceWin(int nTaskForce, TgGame_PaladinsExtended.EVictoryType VictoryType){}

//event LanePusherReachedOuterWall(TgPawn_LanePusher LanePusher){}