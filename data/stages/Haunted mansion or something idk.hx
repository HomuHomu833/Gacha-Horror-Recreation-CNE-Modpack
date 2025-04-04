var bg:FlxSprite;
var tre:FlxSprite;
var tre2:FlxSprite;

function create() {
    defaultCamZoom = 0.9;
    boyfriend.setPosition(780, 100);
    gf.setPosition(500, 70);
    dad.setPosition(190, 100);
    
    bg = new FlxSprite(-300, -70, Paths.images('stages/Creepy Cutie shinaniganz/bg'));
    bg.scrollFactor.set(0.9, 0.9);
    bg.scale.set(1.8, 1.6);
    bg.updateHitbox();
    
    if (!Options.lowMemoryMode) {
        tre = new FlxSprite(-400, -90, Paths.images('stages/Creepy Cutie shinaniganz/tre'));
        tre.scrollFactor.set(1.5, 1.5);
        tre.scale.set(1.6, 2.3);
        tre.updateHitbox();
        
        tre2 = new FlxSprite(900, -90, Paths.images('stages/Creepy Cutie shinaniganz/tre2'));
        tre2.scrollFactor.set(1.5, 1.5);
        tre2.scale.set(1.6, 2.3);
        tre2.updateHitbox();
    }
    
    var black:FlxSprite = new FlxSprite(-600, 67, Paths.image('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(3.8, 3.2);
    black.updateHitbox();
    
    var blairBg:FlxSprite = new FlxSprite(30, 30, Paths.image('stages/Creepy Cutie shinaniganz/blair bg'));
    blairBg.scrollFactor.set(0.9, 0.9);
    blairBg.scale.set(1.1, 1.1);
    blairBg.updateHitbox();
    
    insert(1, blairBg);
    insert(2, bg);
    insert(3, black);
    if (!Options.lowMemoryMode) {
        add(tre);
        add(tre2);
    }
}