class Maps extends Object;

struct MapData
{
    var string MapName;
    var string MapReadableName;
};

var array<MapData> MapDatabase;

public function loadChampions()
{
    local MapData TempMap;

    TempMap.MapName = "BMM_P_vO1"; TempMap.MapReadableName = "Brightmarsh"; MapDatabase.AddItem(TempMap);

    TempMap.MapName = "TMM_P_Beach_v02"; TempMap.MapReadableName = "Serpent Beach"; MapDatabase.AddItem(TempMap);

    TempMap.MapName = "TMM_P_Temple_v02"; TempMap.MapReadableName = "Jaguar Falls"; MapDatabase.AddItem(TempMap);

    TempMap.MapName = "TMM_P_Isle_v02"; TempMap.MapReadableName = "Frog Isle"; MapDatabase.AddItem(TempMap);

    TempMap.MapName = "IMM_P_Mine_v02"; TempMap.MapReadableName = "Ice Mines"; MapDatabase.AddItem(TempMap);

    TempMap.MapName = "IMM_P_Igloo_v02"; TempMap.MapReadableName = "Frozen Guard"; MapDatabase.AddItem(TempMap);
    
    TempMap.MapName = "KMM_P_v01"; TempMap.MapReadableName = "Stone Keep"; MapDatabase.AddItem(TempMap);
}
