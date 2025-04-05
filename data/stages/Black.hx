function create() {
    defaultCamZoom = 0.7;
    boyfriend.setPosition(1080, 100);
    gf.setPosition(120, 100);
    dad.setPosition(90, 100);
    // ↑ this can be out of create i think
    
    var daBlack:FlxSprite = new FlxSprite(-150, -170, Paths.image('dablack'));
    daBlack.scrollFactor.set(0.9, 0.9);
    daBlack.scale.set(3.9, 3.7);
    daBlack.updateHitbox();
    insert(1, daBlack);
}