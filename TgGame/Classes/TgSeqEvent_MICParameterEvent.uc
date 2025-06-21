class TgSeqEvent_MICParameterEvent extends SequenceEvent
    native
    forcescriptorder(true)
    hidecategories(Object);

enum eMICEventType
{
    MET_NONE,
    MET_DEFENSE_ALARM,
    //MET_MAX
};

var() TgSeqEvent_MICParameterEvent.eMICEventType MICEventType;
var() array<MaterialInstanceConstant> AttachedMICs;

// Export UTgSeqEvent_MICParameterEvent::execSetScalarParameterValue(FFrame&, void* const)
native function SetScalarParameterValue(name ParamName, float fValue);

// Export UTgSeqEvent_MICParameterEvent::execSetVectorParameterValue(FFrame&, void* const)
native function SetVectorParameterValue(name ParamName, LinearColor Value);

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    bClientSideOnly=true
    OutputLinks(0)=(LinkDesc="Activated",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="Deactivated",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    ObjName="MIC Parameter Event"
	ObjCategory="TgGame"
}