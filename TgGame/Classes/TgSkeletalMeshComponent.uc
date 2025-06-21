class TgSkeletalMeshComponent extends SkeletalMeshComponent
    native(Pawns)
    editinlinenew
    hidecategories(Object);

struct native AnimNotifyParticleCacheEntry
{
    var bool bCached;
    var AnimNotify_PlayParticleEffect Notify;
    var export editinline ParticleSystemComponent PSC;

    structdefaultproperties
    {
        bCached=false
        Notify=none
        PSC=none
    }
};

struct native MeshAccessoryStorage
{
    var export editinline TgSkeletalMeshComponent m_Accessory;

    structdefaultproperties
    {
        m_Accessory=none
    }
};

struct native SwappedMeshResetInfo
{
    var export editinline SkeletalMeshComponent SkelMeshComp;
    var int MaterialIndex;
    var MaterialInstanceConstant OrigMatInst;

    structdefaultproperties
    {
        SkelMeshComp=none
        MaterialIndex=0
        OrigMatInst=none
    }
};

struct native MICScalarParamMetaDataStorage
{
    var init array<init SwappedMeshResetInfo> MaterialsToReset;
    var init array<init MaterialInstanceConstant> CurrentModifiedMICs;
    var bool bHasSetMICs;

    structdefaultproperties
    {
        MaterialsToReset=none
        CurrentModifiedMICs=none
        bHasSetMICs=false
    }
};

struct native MICStateParamInterpData
{
    var int nMaterialIndex;
    var name nmToStateName;
    var name nmFromStateName;
    var float fStartTime;
    var float fEndTime;

    structdefaultproperties
    {
        nMaterialIndex=0
        nmToStateName="None"
        nmFromStateName="None"
        fStartTime=0.0000000
        fEndTime=0.0000000
    }
};

var private native const noexport Pointer VfTable_ITgMeshCompInterface_MaterialStack;
var bool c_bFxApplied;
var bool c_bAttachFxToOwner;
var bool c_bIsFemale;
var int m_nAssemblyId;
var export editinline array<export editinline TgSkeletalMeshComponent> m_ChildMeshes;
var Vector FPCTranslation;
var Rotator FPCRotation;
var Vector FPCScale;
var int c_AudioGroupId;
var int c_nForceUpdateAttachmentsInTick;
var init transient array<init AnimNotifyParticleCacheEntry> AnimNotifyPlayParticleEffectEntries;
var array<MeshAccessoryStorage> m_MeshAccessoryStorage;
var init array<init MICScalarParamMetaDataStorage> m_MICScalarParamExtendedStorage;
var init array<init MICStateParamInterpData> m_MICStateParamInterpData;

// Export UTgSkeletalMeshComponent::execInitRagdoll(FFrame&, void* const)
native final function InitRagdoll();

// Export UTgSkeletalMeshComponent::execEndRagdoll(FFrame&, void* const)
native final function EndRagdoll();