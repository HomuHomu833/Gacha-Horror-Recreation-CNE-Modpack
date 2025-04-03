function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(980, 150);
    gf.setPosition(550, 170);
    dad.setPosition(150, 120);
    
    var mess:FlxSprite = new FlxSprite(-300, -70, Paths.image('stages/mess'));
    mess.scrollFactor.set(0.9, 0.9);
    mess.scale.set(1.8, 1.6);
    mess.updateHitbox();
    insert(1, mess);
}