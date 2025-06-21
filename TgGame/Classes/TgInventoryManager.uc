class TgInventoryManager extends InventoryManager
    native(Inventory)
    hidecategories(Navigation);

struct native transient InventoryData
{
    var init int nInvId;
    var init int nItemId;
    var init int nPower;
    var init int nInstanceCount;
    var init bool bBoundFlag;
    var init float fAcquiredDatetime;
    var init int nEquipSlotValueId;

    structdefaultproperties
    {
        nInvId=0
        nItemId=0
        nPower=0
        nInstanceCount=0
        bBoundFlag=false
        fAcquiredDatetime=0.0000000
        nEquipSlotValueId=0
    }
};

var int r_ItemCount;
var int m_nPreviousDeviceInstanceId;
var bool m_bNeedsInvUpdate;
var Weapon m_PreviousWeapon;
var init native map{int,TgInventoryObject} m_InventoryMap;
var init native map{int,TgInventoryObject} s_ReplicateMap;
var init native map{int,TgInventoryObject} s_DeletionMap;

// Export UTgInventoryManager::execSetInventoryDirty(FFrame&, void* const)
native function SetInventoryDirty();

// Export UTgInventoryManager::execRequestInventory(FFrame&, void* const)
native function RequestInventory();

// Export UTgInventoryManager::execAddDevice(FFrame&, void* const)
native function TgDevice AddDevice(int nDeviceId, int nEquipPoint, optional TgDevice parentDevice, optional bool bReplaceIfOccupied, optional int nPower);

// Export UTgInventoryManager::execRemoveDevice(FFrame&, void* const)
native function RemoveDevice(TgInventoryObject_Device pInv);
