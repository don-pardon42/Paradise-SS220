
/area/station/security
	ambientsounds = HIGHSEC_SOUNDS
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/security/main
	name = "Офис Службы Безопасности"
	icon_state = "securityoffice"

/area/station/security/lobby
	name = "Лобби Службы Безопасности"
	icon_state = "securitylobby"

/area/station/security/brig
	name = "Бриг"
	icon_state = "brig"

/area/station/security/brig/prison_break()
	for(var/obj/structure/closet/secure_closet/brig/temp_closet in src)
		temp_closet.locked = FALSE
		temp_closet.close()
	for(var/obj/machinery/door_timer/temp_timer in src)
		temp_timer.releasetime = 1
	..()

/area/station/security/permabrig
	name = "Тюремное Крыло. Пермабриг"
	icon_state = "sec_prison_perma"
	fast_despawn = TRUE
	can_get_auto_cryod = FALSE

/area/station/security/prison
	name = "Тюремное Крыло"
	icon_state = "sec_prison"
	can_get_auto_cryod = FALSE

/area/station/security/prison/prison_break()
	for(var/obj/structure/closet/secure_closet/brig/temp_closet in src)
		temp_closet.locked = FALSE
		temp_closet.close()
		temp_closet.update_icon()
	for(var/obj/machinery/door_timer/temp_timer in src)
		temp_timer.releasetime = 1
	..()

/area/station/security/prison/cell_block
	name = "Тюремный Блок"
	icon_state = "brig"

/area/station/security/prison/cell_block/A
	name = "Тюремный Блок А"
	icon_state = "brigcella"

/area/station/security/prison/cell_block/B
	name = "Тюремный Блок Б"
	icon_state = "brigcellb"

/area/station/security/prison/cell_block/C
	name = "Тюремный Блок В"
	icon_state = "brig"

/area/station/security/execution
	name = "Комната Казни"
	icon_state = "execution"
	can_get_auto_cryod = FALSE

/area/station/security/processing
	name = "Процедурная Службы Безопасности"
	icon_state = "prisonerprocessing"
	can_get_auto_cryod = FALSE

/area/station/security/interrogation
	name = "Допросная"
	icon_state = "interrogation"
	can_get_auto_cryod = FALSE

/area/station/security/storage
	name = "Склад Снаряжения Службы Безопасности"
	icon_state = "securityequipmentstorage"

/area/station/security/interrogation/observation
	name = "Просматриваемая Допросная"
	icon_state = "security"
	can_get_auto_cryod = FALSE

/area/station/security/evidence
	name = "Комната Хранения Улик"
	icon_state = "evidence"

/area/station/security/prisonlockers
	name = "Комната Шкафов Заключенных"
	icon_state = "sec_prison_lockers"
	can_get_auto_cryod = FALSE

/area/station/security/prisonershuttle
	name = "Челнок Службы Безопасности Для Заключенных"
	icon_state = "security"
	can_get_auto_cryod = FALSE

/area/station/security/warden
	name = "Офис Смотрителя"
	icon_state = "Warden"
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/area/station/security/armory
	name = "Оружейная"
	icon_state = "armory"

/area/station/security/armory/secure
	name = "Защищенная Оружейная"
	icon_state = "secarmory"

/area/station/security/securehallway
	name = "Защищенный Коридор Брига"
	icon_state = "securehall"

/area/station/security/detective
	name = "Офис Детектива"
	icon_state = "detective"
	ambientsounds = list('sound/ambience/ambidet1.ogg', 'sound/ambience/ambidet2.ogg')

/area/station/security/range
	name = "Стрельбище"
	icon_state = "firingrange"

// Checkpoints

/area/station/security/checkpoint
	name = "Контрольно-Пропускной Пункт Службы Безопасности"
	icon_state = "checkpoint1"

/area/station/security/checkpoint/secondary
	name = "Дополнительный Контрольно-Пропускной Пункт Службы Безопасности"
	icon_state = "checkpoint1"

/area/station/security/checkpoint/supply
	name = "Контрольно-Пропускной Пункт Службы Безопасности - Отдел Карго"
	icon_state = "checkpoint1"

/area/station/security/checkpoint/engineering
	name = "Контрольно-Пропускной Пункт Службы Безопасности - Инженерный Отдел"
	icon_state = "checkpoint1"

/area/station/security/checkpoint/medical
	name = "Контрольно-Пропускной Пункт Службы Безопасности - Медицинский Отдел"
	icon_state = "checkpoint1"

/area/station/security/checkpoint/science
	name = "Контрольно-Пропускной Пункт Службы Безопасности - РНД"
	icon_state = "checkpoint1"

// Solitary
/area/station/security/permasolitary
	name = "Одиночная Камера"
	icon_state = "solitary"
