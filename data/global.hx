import funkin.backend.utils.WindowUtils;
import lime.graphics.Image;

function new()
{
	window.title = WindowUtils.winTitle = "Friday Night Funkin': Gacha Horror V2.5";
	#if SHOW_BUILD_ON_FPS
	Main.framerateSprite.codenameBuildField.visible = false;
	#end
	window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('game/icon'))));
}