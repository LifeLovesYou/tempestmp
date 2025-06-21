class TgGame_Mission extends TgGame
    native(Game)
    config(Game)
    hidecategories(Navigation,Movement,Collision);

event PostLogin(PlayerController NewPlayer){}