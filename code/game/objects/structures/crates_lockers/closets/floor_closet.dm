/obj/structure/closet/bluespace/floor_closet
	name = "floor(?)"
	desc = "Where did this come from?"
	density = TRUE
	plane = OBJ_LAYER
	layer = BELOW_OBJ_LAYER
	storage_capacity = 30 //With the chameleon technology it doesn't hold as much as a normal bluespace closet


/obj/structure/closet/floor_closet/close()
	if(!opened)
		return 
	if(!can_close())
		return 
	var/turf/T = get_turf(src)
	if(T)
		icon = T.icon
		icon_closed = T.icon_state
		desc = T.desc + " It looks odd."
		plane = T.plane
		layer = T.layer
		name = T.name
		density = FALSE
	else
		icon = initial(icon)
		icon_closed = initial(icon_closed)
	. = ..()	
	

/obj/structure/closet/floor_closet/open()
	. = ..()
	if(opened)
		plane = initial(plane)
		layer = initial(layer)
		icon = initial(icon)
		icon_opened = initial(icon_opened)
		name = initial(name)
		desc = initial(desc)
		