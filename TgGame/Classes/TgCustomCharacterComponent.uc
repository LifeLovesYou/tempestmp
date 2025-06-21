class TgCustomCharacterComponent extends ActorComponent
    native;

struct native CompositeTextureType
{
    var Texture2DComposite CompTexture;
    var name TextureParamName;

    structdefaultproperties
    {
        CompTexture=none
        TextureParamName="None"
    }
};

struct native CompositePartInfo
{
    var int MeshAsmId;
    var int DestOffsetX;
    var int DestOffsetY;
    var int RegionSizeX;
    var int RegionSizeY;

    structdefaultproperties
    {
        MeshAsmId=0
        DestOffsetX=0
        DestOffsetY=0
        RegionSizeX=0
        RegionSizeY=0
    }
};

var array<SkeletalMesh> m_SourceMeshList;
var array<CompositeTextureType> m_CompositeTextures;
var int m_nCompositeTextureSizeX;
var int m_nCompositeTextureSizeY;
var() array<CompositePartInfo> m_CompositeParts;
//var array<TgSpecialFx> m_CompositeFxList;

// Export UTgCustomCharacterComponent::execMergeMeshParts(FFrame&, void* const)
native function MergeMeshParts(SkeletalMeshComponent Mesh);

// Export UTgCustomCharacterComponent::execComposeCharacter(FFrame&, void* const)
native function ComposeCharacter(SkeletalMeshComponent Mesh);

// Export UTgCustomCharacterComponent::execSetupCompositeRegion(FFrame&, void* const)
native function SetupCompositeRegion(int MeshAsmId, int DestOffsetX, int DestOffsetY, int SizeX, int SizeY);
