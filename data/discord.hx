import funkin.backend.utils.DiscordUtil;

function onPlayStateUpdate() {
	DiscordUtil.changeSongPresence(
		(PlayState.instance.paused ? "Paused - Freeplay" : "Freeplay"),
		PlayState.SONG.meta.displayName,
		PlayState.instance.getIconRPC()
	);
}

function onMenuLoaded(name:String)
	DiscordUtil.changePresenceSince("In the Menus", null);