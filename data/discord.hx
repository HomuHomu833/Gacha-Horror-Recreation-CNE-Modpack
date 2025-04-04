import funkin.backend.utils.DiscordUtil;

function onPlayStateUpdate() {
	DiscordUtil.changeSongPresence(
		(PlayState.instance.paused ? "Paused: " : "Playing: ") + PlayState.SONG.meta.displayName,
		"",
		PlayState.instance.getIconRPC()
	);
}

function onMenuLoaded(name:String)
	DiscordUtil.changePresenceSince("In the Menus", null);