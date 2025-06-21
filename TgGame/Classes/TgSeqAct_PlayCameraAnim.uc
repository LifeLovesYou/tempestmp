class TgSeqAct_PlayCameraAnim extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() CameraAnim AnimToPlay;
var() float BlendInTime;
var() float BlendOutTime;
var() float Rate;
var() float IntensityScale;

static event int GetObjClassVersion()
{
}

defaultproperties
{
    Rate=1.0000000
    IntensityScale=1.0000000
    ObjName="Play Camera Animation"
	ObjCategory="TgGame"
}