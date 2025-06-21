class TgInventoryObject extends Object
    native(Inventory);

enum EReplicatedState
{
    IORS_Ok,                        // 0
    IORS_Edited,                    // 1
    IORS_Deleted,                   // 2
};


var protected InventoryData m_InventoryData;
var int m_nRefData;
var TgInventoryManager m_InvManager;
var bool m_bTemporary;
var TgInventoryObject.EReplicatedState s_ReplicatedState;
var native const Pointer m_pAmItem;
var int c_nNbrAcquired;
var float c_fTimeAcquired;