import funkin.backend.utils.WindowUtils;
import funkin.backend.system.MainState;
import lime.graphics.Image;

static var redirectStates:Map<FlxState, String> = [
    //MainMenuState => "MainMenuState",
    //FreeplayState => "",
    //CreditsMain => "CreditsState"
];

function new()
{
	MainState.betaWarningShown = true;
	window.title = WindowUtils.winTitle = "Friday Night Funkin': Gacha Horror V2.5";
	#if SHOW_BUILD_ON_FPS
	Main.framerateSprite.codenameBuildField.visible = false;
	#end
	window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('game/icon'))));
}

function preStateSwitch()
	for (redirectState in redirectStates.keys()) 
		 if (Std.isOfType(FlxG.game._requestedState, redirectState)) 
			 FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));