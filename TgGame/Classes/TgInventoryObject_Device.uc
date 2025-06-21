class TgInventoryObject_Device extends TgInventoryObject
    native(Inventory);

var TgDevice s_Device;
var int m_nDeviceInstanceId;
var int c_nNumFindDeviceFails;
var int m_nStackCount;
var native const Pointer m_pAmDevice;

// Export UTgInventoryObject_Device::execSetInstanceCount(FFrame&, void* const)
native function SetInstanceCount(int nInstanceCount);

// Export UTgInventoryObject_Device::execIsCard(FFrame&, void* const)
native final function bool IsCard();