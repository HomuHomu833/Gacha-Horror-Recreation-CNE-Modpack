function beatHit() {
    if (curBeat == 192) {
        bg.visible = false;
        if (!Options.lowMemoryMode) tre.visible = tre2.visible = false;
    }
    else if (curBeat == 256) {
        bg.visible = true;
        if (!Options.lowMemoryMode) tre.visible = tre2.visible = true;
    }
}