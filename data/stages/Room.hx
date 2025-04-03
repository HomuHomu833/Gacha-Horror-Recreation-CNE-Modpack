function create() {
    var roomwblood:FlxSprite = new FlxSprite(-150, -170, Paths.image('stages/high/roomwblood'));
    roomwblood.scrollFactor.set(0.9, 0.9);
    roomwblood.scale.set(1.9, 1.7);
    roomwblood.updateHitbox();
    
    if (!Options.lowMemoryMode) {
        var bookswblood:FlxSprite = new FlxSprite(-150, 180, Paths.image('stages/high/bookswblood'));
        bookswblood.scrollFactor.set(0.9, 0.9);
        bookswblood.scale.set(1.0, 1.0);
        bookswblood.updateHitbox();
    }
    
    var room:FlxSprite = new FlxSprite(-150, -170, Paths.image('stages/high/room'));
    room.scrollFactor.set(0.9, 0.9);
    room.scale.set(1.0, 1.0);
    room.updateHitbox();
    
    if (!Options.lowMemoryMode) {
        var books:FlxSprite = new FlxSprite(-150, 180, Paths.image('stages/high/books'));
        books.scrollFactor.set(0.9, 0.9);
        books.scale.set(1.0, 1.0);
        books.updateHitbox();
    }
    
    var noob:FlxSprite = new FlxSprite(450, 490, Paths.image('stages/high/noob'));
    noob.scrollFactor.set(0.9, 0.9);
    noob.scale.set(0.7, 0.7);
    noob.updateHitbox();
    
    var dablack:FlxSprite = new FlxSprite(-150, -170, Paths.image('dablack'));
    dablack.scrollFactor.set(0.9, 0.9);
    dablack.scale.set(1.9, 1.7);
    dablack.updateHitbox();
    
    var black:FlxSprite = new FlxSprite(-150, -170, Paths.image('black'));
    black.scrollFactor.set(0.9, 0.9);
    black.scale.set(1.9, 1.7);
    black.updateHitbox();
    
    insert(1, roomwblood);
    insert(2, noob);
    insert(3, room);
    if (!Options.lowMemoryMode) add(bookswblood);
    if (!Options.lowMemoryMode) add(books);
    add(dablack);
    add(black);
}