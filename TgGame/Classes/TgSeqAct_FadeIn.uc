class TgSeqAct_FadeIn extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() float m_fDuration;

event Activated()
{
}

defaultproperties
{
    m_fDuration=2.0000000
    ObjName="Fade In"
	ObjCategory="TgGame"
}