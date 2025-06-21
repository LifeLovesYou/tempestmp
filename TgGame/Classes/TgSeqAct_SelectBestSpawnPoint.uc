class TgSeqAct_SelectBestSpawnPoint extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() array<Object> Points;
var() Actor PlayerReceived;

function Activated()
{
}

defaultproperties
{
    InputLinks(0)=(LinkDesc="Teleport Pawn",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0000000,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_ObjectList',LinkDesc="Spawn Points",LinkVar="None",PropertyName="Points",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Player",LinkVar="None",PropertyName="PlayerReceived",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Teleport Player To Best Spawn Point"
	ObjCategory="TgGame"
}