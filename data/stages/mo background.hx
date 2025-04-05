var JGGHD:FlxSprite;

function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(780, 100);
    gf.setPosition(470, 10);
    dad.setPosition(190, 100);
    
    var moe:FlxSprite = new FlxSprite(-600, 67, Paths.image('stages/mo/moe'));
    moe.scrollFactor.set(0.9, 0.9);
    moe.scale.set(1.6, 1.2);
    moe.updateHitbox();
    
    var mo:FlxSprite = new FlxSprite(-1000, -190, Paths.image('stages/mo/mo'));
    mo.scrollFactor.set(0.9, 0.9);
    mo.scale.set(2.2, 1.8);
    mo.updateHitbox();
    
    var dablack:FlxSprite = new FlxSprite(-600, 32, Paths.image('dablack'));
    dablack.scrollFactor.set(0.9, 0.9);
    dablack.scale.set(1.9, 1.2);
    dablack.updateHitbox();
    
    var black:FlxSprite = new FlxSprite(-600, 32, Paths.image('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(3.6, 3.2);
    black.updateHitbox();
    
    if (!Options.lowMemoryMode) {
        JGGHD = new FlxSprite(400, 100);
        JGGHD.frames = Paths.getSparrowAtlas('stages/mo/JGGHD');
        JGGHD.animation.addByPrefix('idle', 'idle', 24, true);
        JGGHD.animation.play('idle', false);
        JGGHD.scale.set(3.6, 3.2);
        JGGHD.updateHitbox();
    }
    
    insert(1, moe);
    insert(2, mo);
    if (!Options.lowMemoryMode) insert(3, JGGHD);
    add(dablack);
    add(black);
}

function beatHit()
    JGGHD.animation.play('idle', false, 13);