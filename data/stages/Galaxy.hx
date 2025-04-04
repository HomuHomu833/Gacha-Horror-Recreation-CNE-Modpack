import hxvlc.flixel.FlxVideoSprite;

function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(980, 190);
    gf.setPosition(550, 170);
    dad.setPosition(250, 190);
    
    var galaxii:FlxSprite = new FlxSprite(-300, 70, Paths.images('black'));
    galaxii.scrollFactor.set(0.9, 0.9);
    galaxii.scale.set(1.8, 1.6);
    galaxii.updateHitbox();
    insert(1, galaxii);
    
    var galaxy:FlxVideoSprite = new FlxVideoSprite(-300, 70);
    galaxy.load(Assets.getPath(Paths.video('stages/galaxy')), [':input-repeat=65535']);
    insert(2, galaxy);
    galaxy.play();
}