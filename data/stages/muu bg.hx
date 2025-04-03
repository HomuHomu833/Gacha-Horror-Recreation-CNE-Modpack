function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(800, 10);
    gf.setPosition(470, 10);
    dad.setPosition(50, 100);
    
    var muuBg:FlxSprite = new FlxSprite(-600, -400, Paths.image('stages/Muu bg'));
    muuBg.scrollFactor.set(0.9, 0.9);
    muuBg.scale.set(1.6, 2.6);
    muuBg.updateHitbox();
    insert(1, muuBg);
    
    var black:FlxSprite = new FlxSprite(-600, 67, Paths.image('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(3.6, 3.2);
    black.updateHitbox();
    add(black);
}