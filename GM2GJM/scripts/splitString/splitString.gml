/// @descroåtopm splitString(argument0, argument1, argument2);
/// @param list
/// @param theString
/// @param yPos

var grid = argument0;
var theString = argument1;
var yPos = argument2;

var list = ds_list_create();

var sym = ","; // delimiter
var delimiter = string_pos(sym, theString);

ds_list_clear(list)

if (delimiter == 0) ds_list_add(list, theString);
else
{
	while(delimiter > 0)
	{
	var part = string_delete(theString, delimiter , string_length(theString));
		
	theString = string_delete(theString, 1, delimiter);
	delimiter = string_pos(sym, theString);
	
	ds_list_add(list, part)

	if (delimiter == 0 && theString != "") ds_list_add(list, theString);
	}
}

var listAmount = ds_list_size(list);

for (var i = 0; i < listAmount; i++)
{
	var value = ds_list_find_value(list, i);
	ds_grid_add(grid, i, yPos, value);
}