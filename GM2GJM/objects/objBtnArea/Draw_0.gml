draw_self();
var hAlign = -sprite_width/2;
var vAlign = -sprite_height/2;
draw_text(x + hAlign, y + vAlign, btnId);

var connectId = btnId+1;
var list = objMap.list_btns;

for (var i = 0; i < ds_list_size(list); i++)
{
	var item = ds_list_find_value(list, i);
	if (item.btnId = connectId)
	{
		var len = 48;
		var dir = point_direction(x, y, item.x, item.y);
		
		var xPos = lengthdir_x(len, dir);
		var yPos = lengthdir_y(len, dir);
		
		draw_line(x + xPos, y + yPos, item.x - xPos, item.y - yPos);
	}
}

if (levelType != undefined)
{
	if (levelType == "chaos") draw_sprite(sprBtnIcons, 0, x, y);
	if (levelType == "tough") draw_sprite(sprBtnIcons, 1, x, y);
	if (levelType == "loot") draw_sprite(sprBtnIcons, 2, x, y);
	if (levelType == "boss") draw_sprite(sprBtnIcons, 3, x, y);
}