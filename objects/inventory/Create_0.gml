function create_item(_name, _desc, _spr) constructor{
	name = _name;
	description = _desc;
	icon = _spr;
}
function pickup_obj(_item){
	array_push(_inventory,_item);
}

global.items_list = {
	rock : new create_item(
			"Rock",
			"Better than your hands",
			spr_rock1),
};	
_inventory = array_create(0);