var azan:FlxSprite;

function create() {
    defaultCamZoom = 0.7;
    boyfriend.setPosition(780, 140);
    gf.setPosition(500, 110);
    dad.setPosition(100, 150);
    
    var bg:FlxSprite = new FlxSprite(-720, -50, Paths.image('stages/Voider/bg'));
    bg.scrollFactor.set(0.9, 0.9);
    bg.scale.set(2.6, 2.4);
    bg.updateHitbox();
    
    var back:FlxSprite = new FlxSprite(-600, -100, Paths.image('stages/Voider/back'));
    back.scrollFactor.set(0.9, 0.9);
    back.scale.set(1.7, 1.7);
    back.updateHitbox();
    
    var front:FlxSprite = new FlxSprite(-700, -250, Paths.image('stages/Voider/front'));
    front.scrollFactor.set(0.9, 0.9);
    front.scale.set(2.0, 2.0);
    front.updateHitbox();
    
    var dablack:FlxSprite = new FlxSprite(-700, -250, Paths.image('dablack'));
    dablack.scrollFactor.set(0.9, 0.9);
    dablack.scale.set(3.0, 3.0);
    dablack.updateHitbox();
    
    var black:FlxSprite = new FlxSprite(-700, -250, Paths.image('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(3.0, 3.0);
    black.updateHitbox();
    
    if (!Options.lowMemoryMode) {
        azan = new FlxSprite(1000, 210);
        azan.frames = Paths.getSparrowAtlas('stages/Voider/Azan');
        azan.animation.addByPrefix('idle', 'idle', 24, true);
        azan.animation.play('idle');
        azan.scrollFactor.set(0.9, 0.9);
        azan.scale.set(0.6, 0.6);
        azan.updateHitbox();
    }
    
    insert(1, bg);
    insert(2, back);
    if (!Options.lowMemoryMode) insert(3, azan);
    add(front);
    add(dablack);
    add(black);
}

function beatHit()
    if (curBeat % 2 == 5)
        if (!Options.lowMemoryMode) azan.animation.play('idle', false, 13);