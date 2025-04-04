public var stage_1:FlxSprite;
public var stage_2:FlxSprite;
public var stage_3:FlxSprite;
public var stage_4:FlxSprite;

function create() {
    defaultCamZoom = 1;
    boyfriend.setPosition(100, 100);
    gf.setPosition(400, 130);
    dad.setPosition(770, 200);
    
    stage_1 = new FlxSprite(-250, 10, Paths.image("stages/Gacha Hell/Pixie"));
    stage_1.scale.set(2.25, 2);
    stage_1.updateHitbox();
    insert(1, stage_1);
    
    stage_2 = new FlxSprite(-250, 0, Paths.image('stages/Gacha Hell/Isabelle'));
    stage_2.scale.set(2.25, 2);
    stage_2.updateHitbox();
    stage_2.visible = false;
    insert(2, stage_2);
    
    stage_3 = new FlxSprite(-250, 0, Paths.image('stages/Gacha Hell/Monk'));
    stage_3.scale.set(2.25, 2);
    stage_3.updateHitbox();
    stage_3.visible = false;
    insert(3, stage_3);
    
    stage_4 = new FlxSprite(-200, 0, Paths.image('stages/Gacha Hell/HellBro'));
    stage_4.scale.set(2.25, 2);
    stage_4.updateHitbox();
    stage_4.visible = false;
    insert(4, stage_4);
}