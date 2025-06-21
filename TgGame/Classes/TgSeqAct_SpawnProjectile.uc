class TgSeqAct_SpawnProjectile extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int m_nFireModeID;
var TgDeviceFire m_FireMode;
var bool m_bSetupFireMode;

// Export UTgSeqAct_SpawnProjectile::execSetupFireMode(FFrame&, void* const)
native function SetupFireMode();

event Activated()
{
}

defaultproperties
{
    bCallHandler=false
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Spawn Location",LinkVar="None",PropertyName="Targets",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=1,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Target Location",LinkVar="None",PropertyName="None",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=1,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Instigator",LinkVar="None",PropertyName="None",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=0,MaxVars=1,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="Spawn Projectile"
	ObjCategory="TgGame"
}