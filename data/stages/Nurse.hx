var normalBG:FlxSprite;
var bloodyBG:FlxSprite;

function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(780, 100);
    gf.setPosition(500, 90);
    dad.setPosition(190, 100);
    
    normalBG = new FlxSprite(-160, -60, Paths.image('stages/NurseLuck/Normal'));
    normalBG.scrollFactor.set(0.9, 0.9);
    normalBG.scale.set(2.25, 2.25);
    normalBG.updateHitbox();
    
    bloodyBG = new FlxSprite(-160, -60, Paths.image('stages/NurseLuck/Bloody'));
    bloodyBG.scale.set(2.25, 2.25);
    bloodyBG.updateHitbox();
    bloodyBG.visible = false;
    
    insert(1, normalBG);
    insert(2, bloodyBG);
}

function beatHit()
    if (curBeat == 80) {
        bloodyBG.visible = true;
        normalBG.visible = false;
    }