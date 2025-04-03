function create() {
    var bg:FlxSprite = new FlxSprite(300, 170, Paths.image('stages/gachastage'));
    bg.scrollFactor.set(0.9, 0.9);
    bg.scale.set(1.5 1.3);
    insert(1, bg);
}