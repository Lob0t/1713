/obj/item/flashlight/lantern
	name = "lantern"
	icon_state = "lantern"
	desc = "A simple lantern."
	brightness_on = 6			// luminosity when on
	light_color = rgb(200, 255, 200) // green tint
	on_state = "lantern-on"
	off_state = "lantern"
	value = 12

/obj/item/flashlight/lantern/on
	icon_state = "lantern-on"
	on = TRUE

/obj/item/flashlight/lantern/anchored
	on_state = "lantern-on_a"
	off_state = "lantern_a"
	icon_state = "lantern_a"
	anchored = TRUE

/obj/item/flashlight/lantern/on/anchored
	on_state = "lantern-on_a"
	off_state = "lantern_a"
	icon_state = "lantern-on_a"
	anchored = TRUE

/obj/item/flashlight/torch
	name = "torch"
	icon_state = "torch"
	desc = "A simple wood stick with animal fat on top."
	brightness_on = 4			// luminosity when on
	light_color = rgb(254, 200, 200) // red tint
	on_state = "torch-on"
	off_state = "torch"
	value = 6

/obj/item/flashlight/torch/on
	icon_state = "torch-on"
	on = TRUE

/obj/item/flashlight/lantern/anchored
	anchored = TRUE

/obj/item/flashlight/lantern/on/anchored
	anchored = TRUE
