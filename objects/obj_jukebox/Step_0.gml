/// @description Play music for current room

var roomName = room_get_name(room);

switch (roomName) {
    case "rm_menu_test":
        JukeboxPlayMusic(snd_menu);
        break;

    case "rm_corredor1":
        JukeboxPlayMusic(snd_corridor);
        break;
		
    case "rm_corredor2":
        JukeboxPlayMusic(snd_corridor);
        break;
		
    case "rm_pensamento":
		audio_stop_all();
        break;

    case "rm_parque":
        JukeboxPlayMusic(snd_park);
        break;

    case "rm_quarto1":
	case "rm_quarto2":
        JukeboxPlayMusic(snd_room);
        break;
		
    default:
        // Stop the music if no specific case matches
        JukeboxStopMusic();
        break;
}
