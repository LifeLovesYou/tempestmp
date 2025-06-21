class TgSeqEvent_TicketCountUpdated extends SequenceEvent
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

defaultproperties
{
    MaxTriggerCount=0
    bPlayerOnly=false
    OutputLinks(0)=(LinkDesc="Pulse",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0000000,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Threshold",LinkVar="None",PropertyName="m_fPercentTicketsThreshold",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Ticket Count Updated"
	ObjCategory="TgGame"
}