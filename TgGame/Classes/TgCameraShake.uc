class TgCameraShake extends CameraShake
    native(View)
    editinlinenew;

var() float m_fShakeScale;
var() bool m_bDoControllerVibration;
var() bool m_bRadialShake;
var() bool m_bOrientTowardRadialEpicenter;
var() float m_fRadialShake_InnerRadius;
var() float m_fRadialShake_OuterRadius;
var() float m_fRadialShake_Falloff;
var() Camera.ECameraAnimPlaySpace m_PlaySpace;

defaultproperties
{
    m_fShakeScale=1.0000000
}