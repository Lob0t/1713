

/*
 * Kitchen knives
 */
/obj/item/weapon/material/knife
	name = "kitchen knife"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "knife"
	desc = "A general purpose Chef's Knife made by SpaceCook Incorporated. Guaranteed to stay sharp for years to come."
	flags = CONDUCT
	sharp = TRUE
	edge = TRUE
	force_divisor = 0.15 // 9 when wielded with hardness 60 (steel)
	matter = list(DEFAULT_WALL_MATERIAL = 12000)
//	origin_tech = "materials=1"
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	unbreakable = TRUE
	slot_flags = SLOT_BELT|SLOT_POCKET

/obj/item/weapon/material/knife/hook
	name = "meat hook"
	desc = "A sharp, metal hook what sticks into things."
	icon_state = "hook_knife"
	item_state = "hook_knife"

/obj/item/weapon/material/knife/butcher
	name = "butcher's cleaver"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "butch"
	desc = "A huge knife used for chopping and chopping up meat."
	force_divisor = 0.25 // 15 when wielded with hardness 60 (steel)
	attack_verb = list("cleaved", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	drawsound = 'sound/items/unholster_knife.ogg'

/obj/item/weapon/material/knife/boot
	w_class = TRUE
	thrown_force_divisor = TRUE
//	origin_tech = "materials=1"
	attack_verb = list("attacked", "stabbed", "poked")
	sharp = TRUE
	edge = TRUE
	force_divisor = 0.1 // 6 when wielded with hardness 60 (steel)
	thrown_force_divisor = 0.25 // 5 when thrown with weight 20 (steel)

// Identical to the tactical knife but nowhere near as stabby.
// Kind of like the toy esword compared to the real thing.
/obj/item/weapon/material/knife/boot
	name = "boot knife"
	desc = "A small fixed-blade knife for putting inside a boot."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "tacknife"
	item_state = "knife"
	applies_material_colour = FALSE
	unbreakable = TRUE
	drawsound = 'sound/items/unholster_knife.ogg'
	force_divisor = 0.3

/obj/item/weapon/material/knife/boot/makeshift_knife
	name = "boot knife"
	desc = "A small self made knife used a lot in jail."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "makeshift_knife"
	item_state = "knife"
	applies_material_colour = FALSE
	unbreakable = TRUE
	drawsound = 'sound/items/unholster_knife.ogg'
	force_divisor = 0.3

/obj/item/weapon/material/knife/boot/trench_knife
	name = "trench knife"
	desc = "this knife is good when your charging, stabbing, cutting heads and good at slicing yours mothers pepperoni."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "trench_knife"
	item_state = "knife"
	applies_material_colour = FALSE
	unbreakable = TRUE
	drawsound = 'sound/items/unholster_knife.ogg'
	force_divisor = 0.3

/obj/item/weapon/material/knife/boot/nr40_knife
	name = "nr40 knife"
	desc = "standerd german knife that you can put into your boot."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "nr40_knife"
	item_state = "knife"
	applies_material_colour = FALSE
	unbreakable = TRUE
	drawsound = 'sound/items/unholster_knife.ogg'
	force_divisor = 0.3

/obj/item/weapon/material/knife/boot/bowie_knife
	name = "bowie knife"
	desc = "every thing is bigger in mother russia."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "bowie_knife"
	item_state = "knife"
	applies_material_colour = FALSE
	unbreakable = TRUE
	drawsound = 'sound/items/unholster_knife.ogg'
	force_divisor = 0.3

/obj/item/weapon/material/knife/boot/nr40_knife_SS
	name = "SS dagger"
	desc = "'My loyalty is my honor."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "nr40_knife_SS"
	item_state = "knife"
	applies_material_colour = FALSE
	unbreakable = TRUE
	drawsound = 'sound/items/unholster_knife.ogg'
	force_divisor = 0.3

/obj/item/weapon/material/knife/attack(target as mob, mob/living/user as mob)
	if ((CLUMSY in user.mutations) && prob(50))
		user << "<span class='warning'>You accidentally cut yourself with \the [src].</span>"
		user.take_organ_damage(20)
		return
	return ..()
