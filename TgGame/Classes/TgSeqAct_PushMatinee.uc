class TgSeqAct_PushMatinee extends SeqAct_Interp
    native(Kismet)
    config(Engine)
    forcescriptorder(true)
    hidecategories(Object);

var() const float m_fCheckpoint1Time;
var() const float m_fCheckpoint2Time;
var() const int m_nDefenderTaskForce;

defaultproperties
{
    ObjName="Push Matinee"
	ObjCategory="TgGame"
}