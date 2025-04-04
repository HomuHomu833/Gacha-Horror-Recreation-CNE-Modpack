public var blackScreen:FlxSprite;
public var blackScreenHUD:FlxSprite;
public var captions:FunkinText; // the unique time im using smthg from cn
public var errorBG:FlxSprite;

// not lq spr's
public var storyBtn:FlxSprite;
public var freeplayBtn:FlxSprite;
public var arrowsGroup:FlxTypedGroup<FlxSprite>; // more simple than one by one
var spr:Array<String> = ['PURPLEARROW', 'BLUEARROW', 'GREENARROW', 'REDARROW'];

function create() {
    blackScreen = new FlxSprite(-550, -150).makeSolid(2500, 1920, FlxColor.BLACK);
    blackScreen.visible = false;
    insert(1, blackScreen);
    
    blackScreenHUD = new FlxSprite(-550, -150).makeSolid(2500, 1920, FlxColor.BLACK);
    blackScreenHUD.cmaera = camHUD;
    blackScreenHUD.visible = false;
    insert(1, blackScreenHUD);
    
    captions = new FunkinText(55, 515, 1200, "", 30);
    captions.borderSize = 2;
    captions.borderColor = FlxColor.fromString('30AAEE');
    captions.color = FlxColor.fromString('D7E274');
    captions.font = Paths.font('Comfortaa-Bold.ttf');
    captions.alignment = 'center';
    captions.camera = camHUD;
    insert(2, captions);
    
    errorBG = new FlxSprite(-670, -90, Paths.image('stages/Character Name/TVCN/Background'));
    errorBG.scale.set(1.25, 1.25);
    errorBG.updateHitbox();
    errorBG.visible = false;
    insert(2, errorBG);
    
    if (!Options.lowMemoryMode) {
        storyBtn = new FlxSprite(-530,-30, Paths.image('stages/Character Name/TVCN/STORYMODE'));
        storyBtn.visible = false;
        insert(3, storyBtn);
        
        freeplayBtn = new FlxSprite(430,-30, Paths.image('stages/Character Name/TVCN/FREEPLAY'));
        freeplayBtn.visible = false;
        insert(4, freeplayBtn);
        
        arrowsGroup = new FlxTypedGroup();
        add(arrowsGroup);
        
        for (i in 0...spr.length) {
            var arrow:FlxSprite = new FlxSprite(0,0, Paths.image('stages/Character Name/TVCN/' + spr[i]));
            arrow.scale.set(0.65, 0.65);
            arrow.updateHitbox();
            arrow.visible = false;
            
            switch(i) {
                case 0: arrow.setPosition(-530,230);
                case 1:
                    arrow.setPosition(-390,430);
                    arrow.scale.set(0.75, 0.75);
                    arrow.updateHitbox();
                case 2: arrow.setPosition(410,430);
                case 3: arrow.setPosition(610,230);
            }
            
            arrowsGroup.add(arrow);
        }
    }
}