draw_rectangle(x-32, y-32, x+32, y+32, true);

var recSide1 = 48;
var recSide2 = 32;


var horizontalAlign = 128;
var verticalAlign = 130;
// left rectangle

draw_rectangle(
	x - recSide1 - verticalAlign,
	y - recSide2 - horizontalAlign,
	x + recSide1 - verticalAlign,
	y + recSide2 - horizontalAlign,
	true
);
// middle rectangle
draw_rectangle(
	x - recSide1,
	y - recSide2 - horizontalAlign,
	x + recSide1,
	y + recSide2 - horizontalAlign,
	true
);
// right rectangle
draw_rectangle(
	x - recSide1 + verticalAlign,
	y - recSide2 - horizontalAlign,
	x + recSide1 + verticalAlign,
	y + recSide2 - horizontalAlign,
	true
);