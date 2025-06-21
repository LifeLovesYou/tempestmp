class TgSeqEvent_Named extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

enum TSE_NAME
{
    TSE_NONE,
    TSE_MENU_CLOSE,
    TSE_MOVIE_DONE,
    //TSE_MAX
};

var() TgSeqEvent_Named.TSE_NAME NamedEvent;

defaultproperties
{
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="Off/Close",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    OutputLinks(1)=(LinkDesc="On/Open",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    ObjName="Named TgSeqEvent"
	ObjCategory="TgGame"
}