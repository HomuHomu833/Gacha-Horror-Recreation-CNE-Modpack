function create() {
    defaultCamZoom = 1.3;
    boyfriend.setPosition(830, 100);
    gf.setPosition(240, 100);
    dad.setPosition(210, 120);
    
    var GFbutwithbigboobas = new FlxSprite(-200, -90, Paths.images('stages/red/GF but with big boobas'));
    GFbutwithbigboobas.scrollFactor.set(0.9, 0.9);
    GFbutwithbigboobas.scale.set(1.4, 1.4);
    GFbutwithbigboobas.updateHitbox();
    
    var black = new FlxSprite(-200, 50, Paths.images('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(0.7, 0.7);
    black.updateHitbox();
    
    var dablack = new FlxSprite(-500, -200, Paths.images('dablack'));
    dablack.scrollFactor.set(0.9, 0.9);
    dablack.scale.set(3, 3);
    dablack.updateHitbox();
    
    var GFbutwithbiggerboobas = new FlxSprite(-285, -90, Paths.images('stages/red/GF but with bigger boobas'));
    GFbutwithbiggerboobas.scrollFactor.set(0.9, 0.9);
    GFbutwithbiggerboobas.scale.set(1.3, 1.3);
    GFbutwithbiggerboobas.updateHitbox();
    
    var GFbutwithsmallboobas = new FlxSprite(-700, -2000, Paths.images('stages/red/GF but with small boobas'));
    GFbutwithsmallboobas.scrollFactor.set(0.9, 0.9);
    GFbutwithsmallboobas.scale.set(4.6, 4.6);
    GFbutwithsmallboobas.updateHitbox();
    
    insert(1, GFbutwithsmallboobas);
    insert(2, GFbutwithbigboobas);
    insert(3, black);
    add(GFbutwithbiggerboobas);
    add(GFbutwithbiggerboobas);
}