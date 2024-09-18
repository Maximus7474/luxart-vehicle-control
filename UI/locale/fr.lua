if language ~= "fr" then return end

local Translations = {
	warning = {
		warning = 'Attention',

		-- WRONG BRANCH NOTIFIER --
		wrong_branch_warning = '~b~LVC~w~: ~o~Attention~w~: Ceci est la branche de développement (master)',
		wrong_branch_info = '~y~CETTE VERSION EST EN DÉVELOPPEMENT ET N\'EST PAS RECOMMANDÉE\nPOUR UNE UTILISATION EN PRODUCTION. SI C\'EST UNE ERREUR, TÉLÉCHARGEZ LA\nDERNIÈRE VERSION STABLE À:\n~g~github.com/TrevorBarns/luxart-vehicle-control~p~~h~/releases~h~',
		wrong_branch_mute = '~b~POUR DÉSACTIVER CET AVERTISSEMENT~w~: Définissez CONVAR "~o~experimental~w~" sur "~o~true~w~" dans fxmanifest.',
		profile_missing = '^3LVC(%{ver}) ATTENTION: la table "DEFAULT" est absente de la table %{tbl}. Utilisation d\'une table vide pour %{model}.',

		-- SIREN CONTROLLER --
		too_few_tone_frontend = '~b~LVC ~y~Attention %{code}:~s~ trop peu de sirènes assignées.',
		too_few_tone_console = '^3LVC(%{ver}) Attention %{code}: trop peu de sirènes assignées. Minimum %{req_tone_count} tons requis. (UTIL:SetToneByPos(%{tone_string}, %{pos})',
		tone_position_nil_frontend = '~b~LVC ~y~Attention %{code}:~s~ tentative de définir un ton mais, impossible de localiser approved_tones. Voir console.',
		tone_position_nil_console = '^3LVC(%{ver}) Attention %{code}: tentative de définir le ton "%{tone_string}" mais, impossible de localiser la table approved_tones. (UTIL:SetToneByPos(%{tone_string}, %{pos}). Essayez de réinitialiser car cela peut se produire après un changement d\'assignations des tons de sirène.',
		tone_id_nil_frontend = '~b~LVC ~y~Attention %{code}:~s~ tentative de définir un ton mais, impossible de localiser dans approved_tones. Voir console.',
		tone_id_nil_console = '^3LVC(%{ver}) Attention %{code}: tentative de définir le ton %{tone_string} mais, impossible de localiser la position: %{tone_id} dans approved_tones. (UTIL:SetToneByPos(%{tone_string}, %{pos}). Essayez de réinitialiser car cela peut se produire après un changement d\'assignations des tons de sirène.',
		factory_reset = 'Êtes-vous sûr de vouloir supprimer toutes les données LVC enregistrées et réinitialiser l\'usine?',
		facory_reset_options= '~g~Non: Échap \t ~r~Oui: Entrée',
	},
	error = {
		-- CONFIG ERRORS -- 
		missing_community_id_frontend = '~b~~h~LVC~h~ ~r~~h~ERREUR DE CONFIGURATION~h~~s~: IDENTIFIANT DE LA COMMUNAUTÉ MANQUANT. VOIR LES JOURNAUX. CONTACTEZ LE DÉVELOPPEUR DU SERVEUR.',
		missing_community_id_console = '^1ERREUR DE CONFIGURATION: IDENTIFIANT DE LA COMMUNAUTÉ NON DÉFINI, CECI EST NÉCESSAIRE POUR ÉVITER LES CONFLITS POUR LES JOUEURS QUI JOUENT SUR PLUSIEURS SERVEURS AVEC LVC. VEUILLEZ DÉFINIR CELA DANS SETTINGS.LUA.',
		invalid_resource_name_frontend = '~b~~h~LVC~h~ ~r~~h~ERREUR DE CONFIGURATION~h~~s~: NOM DE RESSOURCE INVALIDE. VOIR LES JOURNAUX. CONTACTEZ LE DÉVELOPPEUR DU SERVEUR.',
		invalid_resource_name_console = '^1ERREUR DE CONFIGURATION: NOM DE RESSOURCE INVALIDE. VEUILLEZ VÉRIFIER QUE LE NOM DU DOSSIER DE RESSOURCE EST "^3lvc^1" (SENSIBLE À LA CASSE). CECI EST NÉCESSAIRE POUR LE BON FONCTIONNEMENT DE SAUVEGARDE / CHARGEMENT. VEUILLEZ RENOMMER, RAFRAÎCHIR ET ASSURER.',
		resource_conflict_frontend = '~b~~h~LVC~h~ ~r~~h~ERREUR DE CONFLIT~h~~s~: CONFLIT DE RESSOURCES. VOIR LA CONSOLE.',
		resource_conflict_console = '^1ERREUR LVC: DÉTECTION DE "lux_vehcontrol" EN COURS D\'EXÉCUTION, CECI ENTRE EN CONFLIT AVEC LVC. VEUILLEZ ARRÊTER "lux_vehcontrol" ET REDÉMARRER LVC.',
		profile_none_found_frontend = '~b~~h~LVC~h~ ~r~~h~ERREUR DE CONFIGURATION~h~~s~: TABLE PAR DÉFAUT MANQUANTE. VOIR LES JOURNAUX. CONTACTEZ LE DÉVELOPPEUR DU SERVEUR.',
		profile_none_found_console = '^1ERREUR DE CONFIGURATION: IMPOSSIBLE DE TROUVER UN PROFIL POUR \'^3%{game_name}^1\', ET LA TABLE DE SECOURS REQUISE \'DEFAULT\' EST ABSENTE. (https://bit.ly/LVC-CSATS)',

		-- FRONTEND ERRORS --
		reg_keymap_nil_1 = '~b~~h~LVC~h~ ~r~~h~ERREUR 2~h~~s~: Valeur nulle capturée.\ndétails: (%{i}, %{proposed_tone}, %{profile_name})',
		reg_keymap_nil_2 = '~b~~h~LVC~h~ ~r~~h~ERREUR 2~h~~s~: Essayez de changer de véhicule et de revenir OU de charger les paramètres du profil (si une sauvegarde est présente).',
		profile_nil_table_frontend = '~b~~h~LVC~h~ ~r~ERREUR: %{tbl} a tenté d\'obtenir un profil à partir d\'une table nulle. Voir la console.',
		profile_nil_table_console = '^1LVC(%{ver}) ERREUR: %{tbl} a tenté d\'obtenir un profil à partir d\'une table nulle. Cela est généralement causé par un caractère invalide ou un { } manquant dans SIRENS.lua. (https://git.io/JDVhK)',
	},

	info = {
		locked = 'Boîte de contrôle des sirènes: ~r~Verrouillé',
		unlocked = 'Boîte de contrôle des sirènes: ~g~Déverrouillé',
		debug_mode_frontend = '~y~~h~Info:~h~ ~s~mode debug défini sur %{state}. Voir la console.',
		debug_mode_console = '^3Info LVC: mode debug défini sur %{state} temporairement. Le mode debug se réinitialise après le redémarrage de la ressource à moins qu\'il ne soit défini dans fxmanifest. Assurez-vous de lancer "refresh" pour voir les modifications de fxmanifest.',
		profile_found = '^4LVC(%{ver}) ^5%{tbl}: ^7profil %{profile} trouvé pour %{model}.',
		disabled_profile = '^4LVC(%{ver}) ^5%{tbl}: ^1LVC désactivé pour %{model} en utilisant le profil %{profile}.',
		profile_default_console = '^4LVC(%{ver}) ^5%{tbl}: ^7utilisation du profil par défaut pour %{model}.',
		profile_default_frontend = '~b~LVC~s~: Utilisation du profil ~b~DEFAULT~s~ pour \'~o~ %{model} ~s~\'.',
		extra_on = '^4LVC: ^7Activation de %{extra}',
		extra_off = '^4LVC: ^7Désactivation de %{extra}',
		unknown = 'inconnu',
		unable_to_disable = '~y~~h~Info:~h~ ~s~Luxart Vehicle Control\nAction interdite, impossible de désactiver toutes les sirènes.',
		factory_reset_success_console = 'Succès: toutes les données enregistrées ont été effacées.',
		factory_reset_success_frontend = '~g~Succès~s~: Vous avez supprimé toutes les données enregistrées et réinitialisé LVC.',
	},

	control = {
		siren_control_desc = 'LVC Sirène: %{ord_num}',
		lock_desc = 'LVC: Verrouiller les contrôles',
		menu_desc = 'LVC: Ouvrir le menu',
	},

	command = {
		lock_command = 'lvclock',
		lock_desc = 'Basculer le verrouillage des touches de Luxart Vehicle Control.',
		debug_command = 'lvcdebug',
	},

	menu = {
		-- MENU SUBTITLES --
		main = 'Menu Principal',
		siren = 'Paramètres Principaux des Sirènes',
		siren_desc = 'Changer comment chaque tonalité primaire disponible est utilisée.',
		hud = 'Paramètres HUD',
		hud_desc = 'Ouvrir le menu des paramètres HUD.',
		audio = 'Paramètres Audio',
		audio_desc = 'Ouvrir le menu des paramètres audio.',
		plugins = 'Plugins',
		plugins_desc = 'Ouvrir le menu des plugins.',
		storage = 'Gestion du Stockage',
		storage_desc = 'Sauvegarder / Charger les profils de véhicules.',
		copy = 'Copier les Paramètres du Profil',
		more_info = 'Plus d\'Informations',
		more_info_desc = 'En savoir plus sur Luxart Vehicle Control.',
		--------------------
		airhorn_interrupt = 'Mode Interruption Klaxon',
		airhorn_interrupt_desc = 'Activer ou désactiver l\'interruption du klaxon principal par le klaxon.',
		reset_standby = 'Réinitialiser en Veille',
		reset_standby_desc = '~g~Activé~s~, la sirène principale se réinitialisera à la 1ère sirène lors du changement de sirène. ~r~Désactivé~s~, le dernier ton joué reprendra lors du changement de sirène.',
		--------------------
		primary_manu = 'Ton Manuel Principal',
		primary_manu_desc = 'Changer votre ton manuel principal.',
		secondary_manu = 'Ton Manuel Secondaire',
		secondary_manu_desc = 'Changer votre ton manuel secondaire.',
		aux_tone = 'Ton de Sirène Auxiliaire',
		aux_tone_desc = 'Changer votre ton de sirène auxiliaire / dual.',
		siren_park_kill = 'Arrêt Sirène au Stationnement',
		siren_park_kill_desc = 'Activer ou désactiver l\'arrêt automatique des sirènes lorsque vous sortez de votre véhicule.',
		--------------------
		siren_settings_seperator = 'Paramètres des Sirènes',
		other_settings_seperator = 'Autres Paramètres',
		misc_settings_seperator = 'Divers',
		tone_options_seperator = 'Options de Tonalités',
		audio_sfx_separator = 'Paramètres SoundFX',
		advanced_separator = 'Paramètres Avancés',
		--------------------
		cycle_button = 'Cycle & Bouton', 
		cycle_only = 'Cycle Seulement',
		button_only = 'Bouton Seulement', 
		enabled = 'Activé',
		disabled = 'Désactivé',
		tone_options_desc = '~g~Cycle:~s~ jouer en parcourant les sirènes.\n~g~Bouton:~s~ jouer lorsque la touche enregistrée est pressée.\n~b~Sélectionner pour renommer les tonalités de sirènes.',
		--------------------
		hud_enabled_desc = 'Activer ou désactiver l\'affichage du HUD. Nécessite que le HUD de GTA V soit activé.',
		hud_move_mode = 'Mode Déplacement',
		hud_move_mode_desc = 'Déplacer la position du HUD sur l\'écran. Pour sortir ~r~cliquez-droit~s~ ou appuyez sur "~r~Esc~s~".',
		hud_scale = 'Échelle',
		hud_scale_desc = 'Changer l\'échelle du HUD.',
		hud_backlight = 'Rétroéclairage',
		hud_backlight_auto = 'Auto', 
		hud_backlight_off = 'Éteint',
		hud_backlight_on = 'Allumé',
		hud_backlight_desc = 'Changer le comportement du rétroéclairage du HUD. ~b~Auto~s~ est déterminé par l\'état des phares.',
		hud_reset = 'Réinitialiser',
		hud_reset_desc = 'Réinitialiser la position du HUD par défaut.',
		--------------------
		audio_radio = 'Contrôles Radio',
		audio_radio_desc = 'Lorsqu\'activé, la touche tilde agira comme une touche de roue de radio.',
		audio_scheme = 'Schéma de la Boîte de Sirène',
		audio_scheme_desc = 'Changer les effets sonores utilisés pour les clics de la boîte de sirène.',
		audio_manu_sfx = 'Clics du Bouton Manuel',
		audio_manu_sfx_desc = 'Lorsqu\'activé, votre bouton de ton manuel activera les effets sonores améliorés.',
		audio_horn_sfx = 'Clics du Bouton Klaxon',
		audio_horn_sfx_desc = 'Lorsqu\'activé, votre bouton de klaxon activera les effets sonores améliorés.',
		audio_activity_reminder = 'Rappel d\'Activité',
		audio_activity_reminder_desc = 'Recevez un rappel sonore que vos lumières sont allumées. Les options sont en minutes. Minuteur (sec): %{timer}',
		audio_volumes = 'Régler les Volumes',
		audio_volumes_desc = 'Ouvrir le menu des réglages de volume.',
		on_volume = 'Volume Marche',
		on_volume_desc = 'Régler le volume du curseur / bouton lumineux. Joue lorsque les lumières sont ~g~allumées~s~. Appuyez sur Entrée pour jouer le son.',
		off_volume = 'Volume Arrêt',
		off_volume_desc = 'Régler le volume du curseur / bouton lumineux. Joue lorsque les lumières sont ~r~éteintes~s~. Appuyez sur Entrée pour jouer le son.',
		upgrade_volume = 'Volume Amélioration',
		upgrade_volume_desc = 'Régler le volume du bouton de sirène. Joue lorsque la sirène est ~g~allumée~s~. Appuyez sur Entrée pour jouer le son.',
		downgrade_volume = 'Volume Réduction',
		downgrade_volume_desc = 'Régler le volume du bouton de sirène. Joue lorsque la sirène est ~r~éteinte~s~. Appuyez sur Entrée pour jouer le son.',
		reminder_volume = 'Volume Rappel d\'Activité',
		reminder_volume_desc = 'Régler le volume du ton de rappel d\'activité. Joue lorsque les lumières sont ~g~allumées~s~, la sirène est ~r~éteinte~s~, et le minuteur est terminé. Appuyez sur Entrée pour jouer le son.',
		hazards_volume = 'Volume des Feux de Détresse',
		hazards_volume_desc = 'Régler le volume du bouton des feux de détresse. Joue lorsque les feux de détresse sont activés. Appuyez sur Entrée pour jouer le son.',
		lock_volume = 'Volume de Verrouillage',
		lock_volume_desc = 'Régler le volume du son de notification de verrouillage. Joue lorsque le verrouillage de la boîte de sirène est activé. Appuyez sur Entrée pour jouer le son.',
		lock_reminder_volume = 'Volume de Rappel de Verrouillage',
		lock_reminder_volume_desc = 'Régler le volume du son de rappel de verrouillage. Joue lorsque des touches verrouillées sont pressées à plusieurs reprises. Appuyez sur Entrée pour jouer le son.',
		--------------------
		confirm = 'Êtes-vous sûr?',
		save = 'Enregistrer les Paramètres',
		save_desc = 'Enregistrer les paramètres LVC.',
		save_success = '~g~Succès~s~: Vos paramètres ont été enregistrés.',
		save_override = 'Êtes-vous sûr?',
		save_override_desc =  '~r~Cela écrasera toutes les données de sauvegarde existantes pour ce profil de véhicule (%{profile}).',
		load = 'Charger les Paramètres',
		load_desc =  'Charger les paramètres LVC.',
		load_success = '~g~Succès~s~: Vos paramètres ont été chargés.',
		load_override = '~r~Cela écrasera tous les paramètres non enregistrés.',
		copy_desc = 'Copier les paramètres du profil d\'un autre véhicule.',
		reset = 'Réinitialiser les Paramètres',
		reset_desc = '~r~Réinitialiser LVC à son état par défaut, préserve les sauvegardes existantes. Écrasera tous les paramètres non enregistrés.',
		reset_success = '~g~Succès~s~: Les paramètres ont été réinitialisés.',
		factory_reset = 'Réinitialisation d\'Usine',
		factory_reset_desc = '~r~Supprimer définitivement toutes les sauvegardes, réinitialiser LVC à son état par défaut.',
		load_copy = 'Charger',
		load_copy_desc = 'Essayer de charger les paramètres du profil \'~b~%{profile}~s~\'.',
		--------------------
		storage_default_profile_msg = 'Utilisation du profil ~b~DEFAULT~s~ pour \'~b~%{veh}~s~\'.',
		rename_tone = 'Entrer un nouveau nom pour %{tone_string}:',
		--------------------
		current_version = 'Version Actuelle',
		version_string = 'Ce serveur utilise la version %{ver}%{ver_desc}',
		latest_version = 'Dernière Version',
		latest_update_desc = 'La dernière mise à jour est %{ver}.',
		latest_version_desc = ', la dernière version.',
		old_version_desc = ', une version obsolète.',
		experimental_version_desc = ', une version ~y~expérimentale~s~.',
		unknown_version_desc = ', la dernière version n\'a pas pu être déterminée.',
		about_credits = 'À Propos / Crédits',
		about_credits_desc = 'Conçu et créé à l\'origine par ~b~Lt. Caine~s~. Effets sonores ELS par ~b~Faction~s~. Extension de la version 3 par ~b~Trevor Barns~s~.\n\nRemerciements particuliers à tous les contributeurs (voir GitHub), à l\'équipe de RageUI, et à tous ceux qui ont aidé aux tests bêta, cela n\'aurait pas été possible sans vous tous !'
	},

	plugins = {
		menu_tkd = 'Paramètres Takedown',
		menu_tkd_desc = 'Ouvrir le menu des feux takedown. (takedowns)',
		menu_ei = 'Paramètres d\'Intégration Supplémentaire',
		menu_ei_desc = 'Ouvrir le menu d\'intégration supplémentaire. (extra_integration)',
		menu_ta = 'Paramètres du Conseiller en Trafic',
		menu_ta_desc = 'Ouvrir le menu du conseiller en trafic. (traffic_advisor)',
		menu_ts = 'Paramètres de Support de Remorque',
		menu_ts_desc = 'Ouvrir le menu des paramètres de support de remorque. (trailer_support)',
		menu_ec = 'Paramètres des Contrôles Supplémentaires',
		menu_ec_desc = 'Ouvrir le menu des contrôles supplémentaires. (extra_controls)',
		-------------------
		ec_shortcuts_separator = 'Raccourcis',
		ec_shortcut_prefix_change = 'Modifier',
		ec_shortcut_prefix_view = 'Voir',
		ec_shortcut_desc = 'Paramètres de raccourci %{prefix}.',
		ec_enabled_desc = 'Activer / Désactiver la fonctionnalité des contrôles supplémentaires.',
		ec_save = 'Sauvegarder les Contrôles du Profil',
		ec_save_desc = 'Enregistrer de nouveaux contrôles dans le stockage client (KVP).',
		ec_load = 'Charger les Contrôles du Profil',
		ec_load_desc = 'Charger les contrôles sauvegardés depuis le stockage client (KVP).',
		ec_reset = 'Réinitialiser les Contrôles du Profil',
		ec_reset_desc = '~r~Réinitialiser les contrôles de ce profil à l\'état par défaut, préserve les sauvegardes existantes. Cela remplacera tous les paramètres non sauvegardés.',
		ec_factory_reset = 'Supprimer Tous les Contrôles du Profil',
		ec_factory_reset_desc = '~r~Supprimer toutes les données sauvegardées des Contrôles Supplémentaires du stockage client (KVP).',
		ec_factory_reset_success_console = 'Succès : toutes les données des contrôles supplémentaires ont été supprimées.',
		ec_factory_reset_success_frontend = '~g~Succès~s~ : Vous avez supprimé toutes les données des contrôles supplémentaires et réinitialisé le plugin.',
		ec_no_shortcuts = '(Aucun)',
		ec_no_shortcuts_desc = 'Aucun raccourci trouvé.',
		ec_combo = 'Combo',
		ec_combo_desc = 'Contrôle à presser en plus de la touche pour activer les extras. ~m~Format : (CLAVIER | MANETTE)',
		ec_key = 'Touche',
		ec_key_desc = 'Contrôle à presser en plus de la touche combo pour activer les extras. ~m~Format : (CLAVIER | MANETTE)',
		ec_controller_support = 'Support de la Manette',
		ec_controller_support_desc = 'Quand désactivé, LVC ignore les entrées des boutons de la manette. Nécessite que la touche combo soit None.',
		ec_not_approved_console = '^3LVC Attention P404 : tentative d\'utilisation du contrôle %{control} mais, n\'a pas pu trouver la table CONTROLS.%{type}. Essayez de réinitialiser ou contactez le développeur du serveur.',
		ec_not_approved_frontend = '~b~LVC ~y~Attention P404 :~s~ tentative d\'utilisation du contrôle mais non approuvé. Voir la console.',
		ec_fail_load_console = '^3LVC Attention : Le contrôle sauvegardé pour \'${name}\' n\'est plus autorisé par le développeur du serveur. Réinitialisation aux valeurs par défaut. Re-sauvegardez le profil de contrôle pour supprimer cette erreur. CONTRÔLE : %{control}',
		ec_fail_load_frontend = '~b~LVC ~y~Attention : Impossible de charger le contrôle pour \'%{name}\'. Voir la console.',
		ec_save_not_used = '^3LVC Info : données de sauvegarde trouvées non conformes à la configuration actuelle des Contrôles Supplémentaires. Probablement des données anciennes modifiées par un développeur du serveur. Vous pouvez les supprimer en re-sauvegardant.',
		-------------------
		ei_blackout = 'Blackout',
		ei_blackout_desc = 'Désactiver les feux de freinage automatiques à l\'arrêt.',
		ei_auto_park = 'Mode Auto Park',
		ei_auto_park_desc = 'Temps après arrêt pour désactiver les feux de freinage automatiques et mettre le véhicule en "park". Options en minutes. Minuteur (sec) : %{timer}',
		ei_control_desc = 'Basculer le mode Blackout LVC',
		ei_command_desc = 'Basculer le mode Blackout LVC.',
		ei_invalid_extra = '^3LVC Info : la table EXTRA_INTEGRATION contient un extra inexistant : %{extra} pour %{profile}.',
		-------------------
		tkd_integration = 'Intégration',
		tkd_integration_desc = 'Détermine si les feux de route activeront automatiquement les feux takedown ou vice versa.',
		tkd_integration_off = 'Désactivé',
		tkd_integration_set_highbeam = 'Les feux TKD activent les feux de route',
		tkd_integration_highbeam_set_tkd = 'Les feux de route activent les feux TKD',
		tkd_position = 'Position',
		tkd_position_desc = 'Position',
		tkd_intensity = 'Intensité',
		tkd_intensity_desc = 'Régler la luminosité/intensité des feux takedown.',
		tkd_radius = 'Rayon',
		tkd_radius_desc = 'Régler la largeur des feux takedown.',
		tkd_distance = 'Distance',
		tkd_distance_desc = 'Régler la distance maximale des feux takedown.',
		tkd_falloff = 'Atténuation',
		tkd_falloff_desc = 'Régler la vitesse de diminution de la lumière.',
		-------------------
		ta_pattern = 'Modèle du HUD Traffic Advisor',
		ta_pattern_desc = 'Changer le modèle affiché sur les indicateurs du conseiller en trafic du HUD.',
		ta_save = 'Enregistrer l\'état TA',
		ta_save_desc = 'Préserve l\'état du conseiller en trafic lors de l\'activation des feux. Décocher cette option désactivera les extras TA lorsque les feux sont éteints.',
		ta_sync = 'Synchroniser l\'état TA',
		ta_sync_desc = '~o~Bientôt Disponible~c ~ Lorsque possible, synchroniser l\'état TA avec les véhicules à proximité.',
		ta_control_desc_left = 'Basculer le TA gauche LVC',
		ta_control_desc_right = 'Basculer le TA droit LVC',
		ta_control_desc_middle = 'Basculer le TA central LVC',
		-------------------
		ts_menu_extras = 'Extras de la Remorque',
		ts_menu_doors = 'Portes de la Remorque',
		ts_menu_extras_button = 'Menu Extras',
		ts_menu_extras_desc = 'Ouvrir le menu pour basculer l\'état des extras de la remorque.',
		ts_menu_doors_button = 'Menu Portes',
		ts_menu_doors_desc = 'Ouvrir le menu pour ouvrir/fermer les portes.',
		ts_door_fl = 'Porte Avant Gauche',
		ts_door_fr = 'Porte Avant Droite',
		ts_door_rl = 'Porte Arrière Gauche',
		ts_door_rr = 'Porte Arrière Droite',
		ts_door_hood = 'Capot',
		ts_door_trunk = 'Coffre',
		ts_door_extra1 = 'Extra #1',
		ts_door_extra2 = 'Extra #2',
		ts_door_bombbay = 'Soute à Bombes',
		ts_current = 'Remorque Actuelle',
		ts_current_desc = 'Remorque actuelle détectée attachée.',
		ts_shortcut_desc = 'Déclencher le raccourci %{shortcut}',
		ts_shortcut_separator = 'Raccourcis',
		ts_submenus_separator = 'Sous-menus',
		ts_truck_separator = 'Cabine/Camion',
		ts_trailer_separator = 'Remorque',
		ts_extra = 'Extra #%{extra}',
		ts_extra_desc = 'Basculer l\'extra #%{extra}',
		ts_door_desc = 'Ouvrir / Fermer %{door}.',
		ts_not_found = 'Introuvable',
	},
}

Lang = Locale:new({
	phrases = Translations,
	warnOnMissing = true
})