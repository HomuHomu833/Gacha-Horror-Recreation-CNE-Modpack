function create() {
    defaultCamZoom = 1.1;
    boyfriend.setPosition(725, 380);
    gf.setPosition(240, 100);
    dad.setPosition(210, 84);
    
    var mess:FlxSprite = new FlxSprite(-300, -70, Paths.image('stages/mess'));
    mess.scrollFactor.set(0.9, 0.9);
    mess.scale.set(1.8, 1.6);
    mess.updateHitbox();
    insert(1, mess);
}