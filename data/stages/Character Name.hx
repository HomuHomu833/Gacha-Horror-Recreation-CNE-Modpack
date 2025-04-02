function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(700, 100);
    gf.setPosition(500, 90);
    dad.setPosition(190, 100);
    
    var bg:FlxSprite = new FlxSprite(-240, -50, Paths.images('stages/Character Name/bg'));
    bg.scrollFactor.set(0.9, 0.9);
    bg.scale.set(1.6, 1.4);
    bg.updateHitbox();
    
    if (!Options.lowMemoryMode) {
        var blurLeft:FlxSprite = new FlxSprite(-400, 350, Paths.images('stages/Character Name/blur left'));
        blurLeft.scrollFactor.set(1.5, 0.9);
        blurLeft.scale.set(1.6, 1.6);
        blurLeft.updateHitbox();
        
        var blurRight:FlxSprite = new FlxSprite(1250, 350, Paths.images('stages/Character Name/blur right'));
        blurRight.scrollFactor.set(1.5, 0.9);
        blurRight.scale.set(1.6, 1.6);
        blurRight.updateHitbox();
        
        var left:FlxSprite = new FlxSprite(-400, 200, Paths.images('stages/Character Name/Left'));
        left.scrollFactor.set(0.9, 0.9);
        left.scale.set(1.6, 1.6);
        left.updateHitbox();
        
        var right:FlxSprite = new FlxSprite(550, 200, Paths.images('stages/Character Name/Right'));
        right.scrollFactor.set(0.9, 0.9);
        right.scale.set(1.6, 1.6);
        right.updateHitbox();
    }
    
    var daBlack:FlxSprite = new FlxSprite(-240, -50, Paths.images('dablack'));
    daBlack.scrollFactor.set(0.9, 0.9);
    daBlack.scale.set(3.6, 3.4);
    daBlack.updateHitbox();
    
    var black:FlxSprite = new FlxSprite(550, 200, Paths.images('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(3.6, 3.6);
    black.updateHitbox();
    
    var black2:FlxSprite = new FlxSprite(550, 200, Paths.images('black'));
    black2.scrollFactor.set(0.9, 0.9);
    black2.scale.set(3.6, 3.6);
    black2.updateHitbox();
    
    insert(1, bg);
    if (!Options.lowMemoryMode) {
        add(blurLeft); // this makes insert it infront of all
        add(blurRight);
        insert(members.indexOf(bg) + 1, left);
        insert(members.indexOf(left) + 1, right);
    }
    add(daBlack);
    add(black);
    add(black2);
}