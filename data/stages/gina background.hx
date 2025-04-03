function create() {
    defaultCamZoom = 1.1;
    boyfriend.setPosition(725, 380);
    gf.setPosition(240, 100);
    dad.setPosition(210, 84);
    
    var bottom:FlxSprite = new FlxSprite(-200, 50, Paths.image('stages/Ginabg/bottom'));
    bottom.scrollFactor.set(0.9, 0.9);
    bottom.scale.set(0.7, 0.7);
    bottom.updateHitbox();
    
    var top:FlxSprite = new FlxSprite(-200, 50, Paths.image('stages/Ginabg/bottom'));
    top.scrollFactor.set(0.9, 0.9);
    top.scale.set(0.7, 0.7);
    top.updateHitbox();
    
    var black:FlxSprite = new FlxSprite(-200, 50, Paths.image('stages/Ginabg/top'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(2, 2);
    black.updateHitbox();
    
    insert(1, bottom);
    insert(2, top);
    add(black);
}