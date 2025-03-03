if language ~= "de" then return end

local Translations = {
	warning = {
		warning = 'Warnung',
		-- WRONG BRANCH NOTIFIER --
		wrong_branch_warning = '~b~LVC~w~: ~o~Warnung~w~: Dies ist der Entwicklungs-Branch (master)',
		wrong_branch_info = '~y~DIESE VERSION IST IN ENTWICKLUNG UND WIRD NICHT\nFÜR DEN PRODUKTIONSGEBRAUCH EMPFOHLEN. WENN DIES EIN FEHLER WAR, DANN DOWNLOAD DIE\nNEUESTEN STABLE-RELEASE UNTER:\n~g~github.com/TrevorBarns/luxart-vehicle-control~p~~h~/releases~h~',
		wrong_branch_mute = '~b~ZUM STUMMSCHALTEN~w~: Setze die CONVAR "~o~experimental~w~" auf "~o~true~w~" in der fxmanifest.',
		profile_missing = '^3LVC(%{ver}) WARNUNG: "DEFAULT" Tabelle fehlt aus der %{tbl} Tabelle. Es wird eine leere Tabelle für %{model} verwendet.',
		-- SIREN CONTROLLER --
		too_few_tone_frontend = '~b~LVC ~y~Warnung %{code}:~s~ Zu wenig Sirenen zugewiesen.',
		too_few_tone_console = '^3LVC(%{ver}) Warnung %{code}: Zu wenig Sirenen zugewiesen. Mindestens %{req_tone_count} Töne erforderlich. (UTIL:SetToneByPos(%{tone_string}, %{pos})',
		tone_position_nil_frontend = '~b~LVC ~y~Warnung %{code}:~s~ Es wurde versucht einen Ton einzustellen, wobei kein approved_tones ausfindig gemacht werden konnte. Siehe Konsole.',
		tone_position_nil_console = '^3LVC(%{ver}) Warnung %{code}: Es wurde versucht den Ton "%{tone_string}" einzustellen, aber es konnte die Tabelle approved_tones nicht ausfindig gemacht werden. (UTIL:SetToneByPos(%{tone_string}, %{pos}). Versuchen Sie, die Einstelluingen auf die Werkseinstellungen zurückzusetzen, da dies nach einer Änderung der Sirenentonzuordnung auftreten kann.',
		tone_id_nil_frontend = '~b~LVC ~y~Warnung %{code}:~s~ Es wurde versucht einen Ton einzustellen, welcher nicht in approved_tones gefunden werden konnte. Siehe Konsole.',
		tone_id_nil_console = '^3LVC(%{ver}) Warnung %{code}: Es wurde versucht den Ton %{tone_string} einzustellen, aber es konnte die Pos %{tone_id} in der approved_tones nicht gefunden werden. (UTIL:SetToneByPos(%{tone_string}, %{pos}). Versuchen Sie, die Einstelluingen auf die Werkseinstellungen zurückzusetzen, da dies nach einer Änderung der Sirenentonzuordnung auftreten kann.',
		factory_reset = 'Sind Sie sicher, dass Sie alle gespeicherten LVC-Daten löschen und auf die Werkseinstellungen zurücksetzen möchten?',
		facory_reset_options= '~g~Nein: Escape \t ~r~Ja: Enter',
	},
	error = {
		-- CONFIG ERRORS -- 
		missing_community_id_frontend = '~b~~h~LVC~h~ ~r~~h~KONFIGURATIONSFEHLER~h~~s~: COMMUNITY-ID FEHLT. SIEHE LOGS. SERVER-ENTWICKLER KONTAKTIEREN.',
		missing_community_id_console = '^KONFIGURATIONSFEHLER: COMMUNITY ID NICHT GESETZT, DIES IST ERFORDERLICH, UM KONFLIKTE FÜR SPIELER ZU VERMEIDEN, DIE AUF MEHREREN SERVERN MIT LVC SPIELEN. BITTE SETZEN SIE DIES IN DER SETTINGS.LUA.',
		invalid_resource_name_frontend = '~b~~h~LVC~h~ ~r~~h~KONFIGURATIONSFEHLER~h~~s~: UNGÜLTIGER RESSOURCENNAME. SIEHE LOGS. SERVER-ENTWICKLER KONTAKTIEREN.',
		invalid_resource_name_console = '^KONFIGURATIONSFEHLER: UNGÜLTIGER RESSOURCENNAME. BITTE ÜBERPRÜFEN SIE, OB DER NAME DES RESSOURCENORDNERS "^3lvc^1" (CASE-SENSITIVE) LAUTET. DIES IST FÜR DIE ORDNUNGSGEMÄSSE SPEICHER-/LADEFUNKTION ERFORDERLICH. BITTE UMBENENNEN, AKTUALISIEREN UND SICHERSTELLEN.',
		resource_conflict_frontend = '~b~~h~LVC~h~ ~r~~h~KONFLIKTFEHLER~h~~s~: RESSOURCENKONFLIKT. SIEHE KONSOLE.',
		resource_conflict_console = '^1LVC ERROR: "lux_vehcontrol" LÄUFT BEREITS UND STEHT IM KONFLIKT MIT LVC. BITTE STOPPEN SIE "lux_vehcontrol" UND STARTEN SIE LVC NEU.',
		-- FRONTEND ERRORS --
		reg_keymap_nil_1 = '~b~~h~LVC~h~ ~r~~h~ERROR 2~h~~s~: Nullwert gefangen.\nDetails: (%{i}, %{proposed_tone}, %{profile_name})',
		reg_keymap_nil_2 = '~b~~h~LVC~h~ ~r~~h~ERROR 2~h~~s~: Versuchen Sie, das Fahrzeug zu wechseln und wieder zurückzuschalten ODER die Profileinstellungen zu laden (falls vorhanden).',
		profile_nil_table_frontend = '~b~~h~LVC~h~ ~r~ERROR: %{tbl} hat versucht, das Profil aus der Tabelle "nil" abzurufen. Siehe Konsole.',
		profile_nil_table_console = '^1LVC(%{ver}) ERROR: %{tbl} versucht, das Profil aus der Tabelle "nil" zu holen. Dies wird normalerweise durch ein ungültiges Zeichen oder eine fehlende { }-Klammer in der SIRENS.lua verursacht. (https://git.io/JDVhK)',
	},
	info = {
		locked = 'Sirenensteuergerät: ~r~Gesperrt',
		unlocked = 'Sirenensteuergerät: ~g~Ungesperrt',
		debug_mode_frontend = '~y~~h~Info:~h~ ~s~Debug-Modus eingestellt auf %{state}. Siehe Konsole.',
		debug_mode_console = '^3LVC Info: Debug-Modus vorübergehend auf %{state} gesetzt. Debug_mode wird nach einem Neustart der Ressourcen zurückgesetzt, sofern nicht in der fxmanifest festgelegt. Stellen Sie sicher, dass Sie "refresh" ausführen, um die Änderungen von fxmanifest zu sehen.',
		profile_found = '^4LVC(%{ver}) ^5%{tbl}: ^7Profil %{profile} gefunden für %{model}.',
		profile_default_console = '^4LVC(%{ver}) ^5%{tbl}: ^7Verwendung des Standardprofils für %{model}.',
		profile_default_frontend = '~b~LVC~s~: Verwendung des ~b~STANDARD~s~ Profil für \'~o~ %{model} ~s~\'.',
		extra_on = '^4LVC: ^7%{extra} einschalten',
		extra_off = '^4LVC: ^7%{extra} ausschalten',
		unknown = 'unbekannt',
		unable_to_disable = '~y~~h~Info:~h~ ~s~Luxart Vehicle Control\nAktion verboten, kann nicht alle Sirenen deaktivieren.',
		factory_reset_success_console = 'Erfolg: Alle gespeicherten Daten wurden gelöscht.',
		factory_reset_success_frontend = '~g~Erfolg~s~: Sie haben alle gespeicherten Daten gelöscht und LVC zurückgesetzt.',
	},
	control = {
		siren_control_desc = 'LVC Sirene: %{ord_num}',
		lock_desc = 'LVC: Sperren der Kontrollen',
		menu_desc = 'LVC: Menü öffnen',
	},
	command = {
		lock_command = 'lvclock',
		lock_desc = 'Umschalten der Luxart Vehicle Kontroll-Tastenbelegung.',
		debug_command = 'lvcdebug',
		
	},
	menu = {
		-- MENU SUBTITLES --
		main = 'Hauptmenü',
		siren = 'Hauptmenü der Sireneneinstellungen',
		siren_desc = 'Ändern, welcher/wie jeder verfügbare Primärton verwendet wird.',
		hud = 'HUD-Einstellungen',
		hud_desc = 'HUD-Einstellungsmenü öffnen.',
		audio = 'Audio-Einstellungen',
		audio_desc = 'Audio-Einstellungsmenü öffnen.',
		plugins = 'Plugins',
		plugins_desc = 'Plugins-Einstellungsmenü öffnen.',
		storage = 'Speicherverwaltung',
		storage_desc = 'Fahrzeugprofile speichern / laden.',
		copy = 'Profileinstellungen kopieren',
		more_info = 'Mehr Informationen',
		more_info_desc = 'Erfahren Sie mehr über Luxart Vehicle Control.',
		--------------------
		airhorn_interrupt = 'Lufthorn Unterbrechungsmodus',
		airhorn_interrupt_desc = 'Umschalten, ob das Signalhorn die Hauptsirene unterbricht.',
		reset_standby = 'Zurücksetzen auf Standby',
		reset_standby_desc = '~g~Aktiviert~s~, die primäre Sirene wird auf die 1. Sirene zurückgesetzt, wenn die Sirene umgeschaltet wird. ~r~Deaktiviert~s~, der zuletzt gespielte Ton wird beim Umschalten der Sirene fortgesetzt.',
		--------------------
		primary_manu = 'Manueller Hauptton',
		primary_manu_desc =  'Ändern Sie Ihren primären manuellen Ton.',
		secondary_manu = 'Sekundärer manueller Ton',
		secondary_manu_desc =  'Ändern Sie Ihren sekundären manuellen Ton.',
		aux_tone = 'Hilfssirenenton',
		aux_tone_desc = 'Ändern Sie den Ton der Hilfssirene/Doppelsirene.',
		siren_park_kill = 'Sirene Park Kill-Schalter',
		siren_park_kill_desc = 'Legt fest, ob die Sirenen automatisch ausgeschaltet werden, wenn Sie Ihr Fahrzeug verlassen.',
		--------------------
		siren_settings_seperator = 'Sirenen-Einstellungen',
		other_settings_seperator = 'Andere Einstellungen',
		misc_settings_seperator = 'Sonstiges',
		tone_options_seperator = 'Klangoptionen',
		audio_sfx_separator = 'SoundFX-Einstellungen',
		advanced_separator = 'Erweiterte Einstellungen',
		--------------------
		cycle_button = 'Zyklus & Taste', 
		cycle_only = 'Nur Zyklus',
		button_only = 'Nur Taste', 
		enabled = 'Aktiviert',
		disabled = 'Deaktiviert',
		tone_options_desc = '~g~Zyklus:~s~ abspielen, während Sie durch Sirenen zirkulieren.\n~g~Taste:~s~ abspielen, wenn die registrierte Taste gedrückt wird.\n~b~Auswählen, um Sirenentöne umzubenennen.',
		--------------------
		hud_enabled_desc = 'Schaltet um, ob das HUD angezeigt wird. Erfordert, dass das GTA V HUD aktiviert ist.',
		hud_move_mode = 'Verschieben-Modus',
		hud_move_mode_desc = 'HUD-Position auf dem Bildschirm verschieben. Zum verlassen ~r~Rechtsklick~s~ oder "~r~Esc~s~" drücken.',
		hud_scale = 'Skala',
		hud_scale_desc = 'Deckkraft des HUD-Hintergrundrechtecks ändern.',
		hud_backlight = 'Hintergrundbeleuchtung',
		hud_backlight_auto = 'Auto', 
		hud_backlight_off = 'Aus',
		hud_backlight_on = 'An',
		hud_backlight_desc = 'Ändert das Verhalten der HUD-Hintergrundbeleuchtung. ~b~Auto~s~ wird durch den Zustand des Scheinwerfers bestimmt.',
		hud_reset = 'Zurücksetzen',
		hud_reset_desc =  'HUD-Position auf Standard zurücksetzen.',
		--------------------
		audio_radio = 'Radio-Steuerung',
		audio_radio_desc = 'Wenn aktiviert, fungiert die Tilde-Taste (~) als Radiotaste.',
		audio_scheme = 'Sirenenbox-Schema',
		audio_scheme_desc = 'Ändern Sie, welche SFX für das Klicken der Sirenenbox verwendet werden sollen.',
		audio_manu_sfx = 'Manuelle Tastenklicks',
		audio_manu_sfx_desc = 'Wenn diese Funktion aktiviert ist, aktiviert Ihre manuelle Tontaste den Upgrade-SFX.',
		audio_horn_sfx = 'Lufthorn-Klicks',
		audio_horn_sfx_desc = 'Wenn diese Funktion aktiviert ist, aktiviert die Lufthorntaste den Upgrade-SFX.',
		audio_activity_reminder = 'Aktivitätserinnerung',
		audio_activity_reminder_desc = 'Empfangen Sie einen Erinnerungston, dass Ihr Licht eingeschaltet ist. Optionen sind in Minuten. Timer (Sekunden): %{timer}',
		audio_volumes = 'Lautstärken anpassen',
		audio_volumes_desc = 'Menü Lautstärkeeinstellungen öffnen.',
		on_volume = 'Ein - Lautstärke',
		on_volume_desc = 'Lautstärke des Schiebereglers / der Taste einstellen. Spielt, wenn das Licht ~g~eingeschaltet~s~ wird. Drücken Sie Enter, um den Ton abzuspielen.',
		off_volume = 'Aus - Lautstärke',
		off_volume_desc = 'Lautstärke des Schiebereglers / der Taste einstellen. Spielt, wenn das Licht ~r~ausgeschaltet~s~ wird. Drücken Sie Enter, um den Ton abzuspielen.',
		upgrade_volume = 'Upgrade Lautstärke',
		upgrade_volume_desc = 'Lautstärke der Sirenentaste einstellen. Spielt, wenn die Sirene ~g~eingeschaltet~s~ wird. Drücken Sie Enter, um den Ton abzuspielen.',
		downgrade_volume = 'Downgrade Lautstärke',
		downgrade_volume_desc = 'Lautstärke der Sirenentaste einstellen. Spielt, wenn die Sirene ~r~ausgeschaltet~s~ wird. Drücken Sie Enter, um den Ton abzuspielen.',
		reminder_volume = 'Aktivitätserinnerung Lautstärke',
		reminder_volume_desc = 'Lautstärke des Aktivitätserinnerungstons einstellen. Spielt, wenn die Lichter ~g~eingeschaltelt~s~ sind, die Sirene ~r~ausgeschaltet~s~ ist und der Timer abgelaufen ist. Drücken Sie Enter, um den Ton abzuspielen.',
		hazards_volume = 'Gefahren Lautstärke',
		hazards_volume_desc = 'Lautstärke der Gefahrentaste einstellen. Spielt, wenn Gefahren umgeschaltet werden. Drücken Sie Enter, um den Ton abzuspielen.',
		lock_volume = 'Sperr-Lautstärke',
		lock_volume_desc = 'Lautstärke der Sperrbenachrichtigung einstellen. Wird abgespielt, wenn das Sperren der Sirenenbox umgeschaltet wird. Drücken Sie Enter, um den Ton abzuspielen.',
		lock_reminder_volume = 'Sperrsignal Lautstärke',
		lock_reminder_volume_desc = 'Legen Sie die Lautstärke des Sperrsignaltons fest. Wird abgespielt, wenn die gesperrten Tasten wiederholt gedrückt werden. Drücken Sie Enter, um den Ton abzuspielen.',
		--------------------
		confirm = 'Sind Sie sicher?',
		save = 'Einstellungen speichern',
		save_desc = 'LVC-Einstellungen speichern.',
		save_success = '~g~Erfolg~s~: Ihre Einstellungen wurden gespeichert.',
		save_override = 'Sind Sie sicher?',
		save_override_desc =  '~r~Dadurch werden alle bereits gespeicherten Daten für dieses Fahrzeugprofil außer Kraft gesetzt (%{profile}).',
		load = 'Einstellungen laden',
		load_desc =  'LVC-Einstellungen laden.',
		load_success = '~g~Erfolg~s~: Ihre Einstellungen wurden geladen.',
		load_override = '~r~Dadurch werden alle nicht gespeicherten Einstellungen überschrieben..',
		copy = 'Einstellungen kopieren',
		copy_desc = 'Profileinstellungen von einem anderen Fahrzeug kopieren.',
		reset = 'Einstellungen zurücksetzen',
		reset_desc = '~r~Setzt LVC auf den Standardzustand zurück, wobei vorhandene Speicherungen erhalten bleiben. Setzt ungespeicherte Einstellungen außer Kraft.',
		reset_success = '~g~Erfolg~s~: Die Einstellungen wurden zurückgesetzt.',
		factory_reset = 'Werkseinstellung',
		factory_reset_desc = '~r~Dauerhaftes Löschen von Speicherständen und Zurücksetzen von LVC in den Standardzustand.',
		load_copy = 'Laden',
		load_copy_desc = 'Einstellungen aus dem Profil \'~b~%{profile}~s~\' versuchen zu laden.',
		--------------------
		storage_default_profile_msg = 'Verwendung des ~b~STANDARD~s~ Profil für \'~b~%{veh}~s~\'.',
		rename_tone = 'Neue Tonbezeichnung eingeben für %{tone_string}:',
		--------------------
		current_version = 'Aktuelle Version',
		version_string = 'Auf diesem Server läuft %{ver}%{ver_desc}',
		latest_version = 'Neueste Version',
		latest_update_desc =  'Das letzte Update ist die Version %{ver}.',
		latest_version_desc = ', die neueste Version.',
		old_version_desc = ', eine veraltete Version.',
		experimental_version_desc = ', eine ~y~experimentelle~s~ Version.',
		unknown_version_desc = ', die neueste Version konnte nicht ermittelt werden.',
		about_credits = 'Über uns / Credits',
		about_credits_desc = 'Ursprünglich entworfen und erstellt von ~b~Lt. Caine~s~. ELS-Soundeffekte von ~b~Faction~s~. Version 3 Erweiterung von ~b~Trevor Barns~s~.\n\nSpezieller Dank an alle Mitwirkenden (siehe GitHub), das RageUI-Team und alle anderen, die beim Betatest geholfen haben. Dies wäre ohne euch alle nicht möglich gewesen!',
	},
	plugins ={
		menu_tkd = 'Takedown-Einstellungen',
		menu_tkd_desc = 'Menü Takedown-Lichter öffnen. (takedowns)',
		menu_ei = 'Zusätzliche Integrationseinstellungen',
		menu_ei_desc = 'Zusätzliches Integrationsmenü öffnen. (extra_integration)',
		menu_ta = 'Menü Verkehrsinfo öffnen',
		menu_ta_desc = 'Menü Verkehrsinfo öffnen. (traffic_advisor)',
		menu_ts = 'Einstellungen für die Anhängerunterstützung',
		menu_ts_desc = 'Öffnen Sie das Einstellungsmenü für die Anhängerunterstützung. (trailer_support)',
		menu_ec = 'Einstellungen für zusätzliche Steuerelemente',
		menu_ec_desc = 'Öffnen Sie das Einstellungsmenü für zusätzliche Steuerelemente. (extra_controls)',
		-------------------
		ec_shortcuts_separator = 'Tastenkürzel',
		ec_shortcut_prefix_change = 'Ändern',
		ec_shortcut_prefix_view = 'Anschauen',
		ec_shortcut_desc = '%{prefix} Tastenkürzel-Einstellungen.',
		ec_enabled_desc = 'Umschalten der Funktionalität zusätzlicher Steuerelemente.',
		ec_save = 'Speichern von Profilsteuerungen',
		ec_save_desc = 'Speichern neuer Steuerelemente im clientseitigen Speicher (KVP).',
		ec_load = 'Laden von Profilsteuerungen',
		ec_load_desc = 'Laden gespeicherter Steuerelemente aus dem clientseitigen Speicher (KVP).',
		ec_reset = 'Profilsteuerungen zurücksetzen',
		ec_reset_desc = '~r~Setzt die Steuerelemente dieses Profils auf die Standardeinstellungen zurück, so dass die vorhandenen Speicherungen erhalten bleiben. Setzt alle nicht gespeicherten Einstellungen außer Kraft.',
		ec_factory_reset = 'Alle Profilsteuerungen löschen',
		ec_factory_reset_desc = '~r~Löschen aller Extra Controls gespeicherten Daten aus dem clientseitigen Speicher (KVP).',
		ec_factory_reset_success_console = 'Erfolg: Alle zusätzlichen Kontrolldaten gelöscht.',
		ec_factory_reset_success_frontend = '~g~Erfolg~s~: Sie haben alle zusätzlichen Kontrolldaten gelöscht und das Plugin zurückgesetzt.',
		ec_no_shortcuts = '(Keine)',
		ec_no_shortcuts_desc = 'Keine Tastaturkürzel gefunden.',
		ec_combo = 'Kombo',
		ec_combo_desc = 'Bedienelement, das zusätzlich zur Taste gedrückt werden muss, um Extras umzuschalten. ~m~Format: (TASTATUR | CONTROLLER)',
		ec_key = 'Taste',
		ec_key_desc = 'Steuerelement, das zusätzlich zur Kombinationstaste gedrückt werden muss, um Extras umzuschalten. ~m~Format: (TASTATUR | CONTROLLER)',
		ec_not_approved_console = '^3LVC Warnung P404: versuch das Steuerelement %{control} zu verwenden, konnte aber CONTROLS nicht finden. %{type} Tabelle. Versuchen Sie auf die Werkseinstellungen zurückzusetzen oder melden Sie sich beim Serverentwickler.',
		ec_not_approved_frontend = '~b~LVC ~y~Warnung P404:~s~ versuch die Kontrolle zu nutzen, die aber nicht zugelassen wurde. Siehe Konsole.',
		ec_fail_load_console = '^3LVC Warnung:  Die gespeicherte Kontrolle für \'${name}\' ist vom Serverentwickler nicht mehr erlaubt. Rückkehr zum Standard. Speichern Sie das Steuerprofil erneut, um diesen Fehler zu beheben. STEUERUNG: %{control}',
		ec_fail_load_frontend = '~b~LVC ~y~Warnung: Steuerung kann nicht geladen werden für \'%{name}\'. Siehe Konsole.',
		ec_save_not_used = '^3LVC Info: Es wurden Speicherdaten gefunden, die nicht mit der aktuellen Konfiguration von Extra Controls übereinstimmen. Wahrscheinlich handelt es sich um alte Daten, die inzwischen von einem Serverentwickler geändert wurden. Sie können diese durch erneutes Speichern löschen.',
		-------------------
		ei_blackout = 'Verdunklung',
		ei_blackout_desc = 'Deaktivierte automatische Bremslichter beim Anhalten.',
		ei_auto_park = 'Automatischer Parkmodus',
		ei_auto_park_desc = 'Wie lange dauert es nach dem Anhalten, um die automatischen Bremslichter zu deaktivieren und das Fahrzeug zu parken? Die Optionen sind in Minuten angegeben. Timer (Sekunden): %{timer}',
		ei_control_desc = 'LVC Verdunklung umschalten',
		ei_command_desc = 'LVC-Verdunklungs-Modus umschalten.',
		ei_invalid_extra = '^3LVC Info: EXTRA_INTEGRATION Tabelle enthält nicht existierendes Extra: %{extra} für %{profile}.',
		-------------------
		tkd_integration = 'Integration',
		tkd_integration_desc = 'Legt fest, ob Fernlicht automatisch auf Abblendlicht umgeschaltet wird oder umgekehrt.',
		tkd_integration_off = 'Aus',
		tkd_integration_set_highbeam = 'TKDs setzen Fernlichter', 
		tkd_integration_highbeam_set_tkd = 'Fernlichter setzen TKDs',
		tkd_position = 'Position',
		tkd_position_desc = 'Position',
		tkd_intensity = 'Intensität',
		tkd_intensity_desc = 'Helligkeit/Intensität der Take-Downs einstellen.',
		tkd_radius = 'Radius',
		tkd_radius_desc = 'Breite der Take-Downs einstellen.',
		tkd_distance = 'Entfernung',
		tkd_distance_desc = 'Legen Sie die maximale Entfernung fest, die die Take-Downs zurücklegen können.',
		tkd_falloff = 'Abstieg',
		tkd_falloff_desc = 'Einstellen, wie schnell das Licht "abfällt" oder gedämpft erscheint.',
		-------------------
		ta_pattern = 'TA HUD-Muster',
		ta_pattern_desc = 'Ändern Sie das auf den HUD der Verkehrsinfo angezeigte Muster.',
		ta_save = 'TA-Status speichern',
		ta_save_desc = 'Erhält den Status der Verkehrsinfo beim Umschalten der Ampel. Wenn Sie diese Option deaktivieren, werden die TA-Extras ausgeschaltet, wenn die Beleuchtung ausgeschaltet wird.',
		ta_sync = 'Sync TA Status',
		ta_sync_desc = '~o~Demnächst verfügbar~c ~ Wenn möglich, Synchronisierung des TA-Status mit Fahrzeugen in der Nähe.',
		ta_control_desc_left = 'LVC Umschalten Links TA',
		ta_control_desc_right = 'LVC Umschalten Rechts TA',
		ta_control_desc_middle = 'LVC Umschalten Mitte TA',
		-------------------
		ts_menu_extras = 'Anhänger Extras',
		ts_menu_doors = 'Anhänger-Türen',
		ts_menu_extras_button = 'Menü Extras',
		ts_menu_extras_desc = 'Öffnen Sie das Menü, um die zusätzlichen Zustände des Anhängers umzuschalten',
		ts_menu_doors_button = 'Tür Menü',
		ts_menu_doors_desc = 'Menü zum Öffnen/Schließen von Türen',
		ts_door_fl = 'Linke Vordertür', 
		ts_door_fr = 'Rechte Vordertür',
		ts_door_rl = 'Linke Hintertür', 
		ts_door_rr = 'Rechte Hintertür', 
		ts_door_hood = 'Haube', 
		ts_door_trunk = 'Kofferraum',
		ts_door_extra1 = 'Extra #1', 
		ts_door_extra2 = 'Extra #2', 
		ts_door_bombbay = 'Waffenschacht', 
		ts_current = 'Aktueller Trailer',
		ts_current_desc = 'Aktuell ermittelter und angehängter Anhänger .',
		ts_shortcut_desc = 'Shortcut auslösen %{shortcut}',
		ts_shortcut_separator = 'Shortcuts',
		ts_submenus_separator = 'Untermenüs',
		ts_truck_separator = 'Kabine/LKW',
		ts_trailer_separator = 'Anhänger',
		ts_extra = 'Extra #%{extra}',
		ts_extra_desc = 'Extra #%{extra} umschalten',
		ts_door_desc = 'Öffnen / Schließen %{door}.',
		ts_not_found = 'NICHT GEFUNDEN',
	},
}

Lang = Locale:new({
	phrases = Translations,
	warnOnMissing = true
})