class TgSeqAct_GetPlayerCount extends SequenceAction
    native(Kismet)
    forcescriptorder(true)
    hidecategories(Object);

var() int m_nTaskForce;
var float m_fPlayerCount;
var float m_fAssaultCount;
var float m_fMedicCount;
var float m_fReconCount;
var float m_fRoboticsCount;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Players",LinkVar="None",PropertyName="m_fPlayerCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Assault",LinkVar="None",PropertyName="m_fAssaultCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Medic",LinkVar="None",PropertyName="m_fMedicCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(3)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Recon",LinkVar="None",PropertyName="m_fReconCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    VariableLinks(4)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="Robotics",LinkVar="None",PropertyName="m_fRoboticsCount",bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false)
    ObjName="GetPlayerCount"
	ObjCategory="TgGame"
}