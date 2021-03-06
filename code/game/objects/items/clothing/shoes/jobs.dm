
/obj/item/clothing/shoes/jackboots
	name = "jackboots"
	desc = "Standard-issue Security combat boots for combat scenarios or combat situations. All combat, all the time."
	icon_state = "jackboots"
	item_state = "jackboots"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 30, bullet = 10, laser = 10, energy = 15, bomb = 20, bio = FALSE, rad = FALSE)
	siemens_coefficient = 0.7
	can_hold_knife = TRUE

/obj/item/clothing/shoes/workboots
	name = "workboots"
	desc = "A pair of steel-toed work boots designed for use in industrial settings. Safety first."
	icon_state = "workboots"
	item_state = "workboots"
	armor = list(melee = 40, bullet = FALSE, laser = FALSE, energy = 15, bomb = 20, bio = FALSE, rad = 20)
	siemens_coefficient = 0.7
	can_hold_knife = TRUE