//package funkin.states;
package;

import funkin.states.MainMenuState;
import funkin.states.TitleState;
import flixel.FlxG;
import flixel.util.FlxTimer;
import flixel.FlxState;
import flixel.addons.transition.FlxTransitionableState;
import funkin.audio.FunkinSound;
import funkin.backend.Conductor;
import flixel.text.FlxText;

var first:FlxText;

function onCreate() 
	{
	// trace("Hello");
	
	first = new FlxText(0,0,0,"There are violent and disturbing images in this game.\n\nThere are also flashing lights and other graphics\n\nthat may not be suitable for those with epilepsy.\n\nPress Enter to continue.",32,true);
	first.color = FlxColor.CYAN;
	first.wordWrap = false;
	first.autoSize = false;
	first.screenCenter();
	first.alignment = "center";

	add(first);
	// FlxTimer.wait(10, () -> {
    // FlxG.switchState(() -> new MainMenuState());
	// });

}

function onUpdate(elapsed:Float)
{
	if (FlxG.keys.pressed.ENTER)
	{
		FlxG.switchState(() -> new MainMenuState());
	}
}