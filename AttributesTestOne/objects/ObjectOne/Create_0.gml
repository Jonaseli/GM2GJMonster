/// @description All Variables
// You can write your code in this editor
	click_x = x;
	click_y = y;
	
	globalvar charStat;
	global.charStat = ds_map_create();
	//character info
	ds_map_add(charStat, "Name", "DefaultFirst");
	//character stats
	ds_map_add(charStat, "Vit", 0);
	ds_map_add(charStat, "Str", 0);
	ds_map_add(charStat, "Dex", 0);
	ds_map_add(charStat, "max_hp", 0);
	ds_map_add(charStat, "current_sp", 0);