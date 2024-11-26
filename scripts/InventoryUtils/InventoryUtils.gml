// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetObject(item_definition){
	switch(item_definition){
	case 0:
		break;
	case 1:
		return ob_strength_potion
	case 2:
		return ob_health_potion
	case 3:
		return ob_key
	case 4:
		return
	}
}

enum item_definitions{
	empty,
	strength_potion,
	health_potion,
	key,
}