// Draw Event
var minutes = floor(timer_seconds / 60);
var seconds = timer_seconds mod 60;

if (timer_active = true)
{
// Set font size (make sure to create a font in the Fonts resource if you want to customize it)
draw_set_font(BigFont); // Replace 'fnt_large' with your font name
draw_set_color(c_maroon); // Set text color

var timer_text = string(minutes) + "." + string(seconds);


// Draw the text at the center top of the screen
draw_text(640, 10, timer_text);
}
else
{
// Set font size (make sure to create a font in the Fonts resource if you want to customize it)
draw_set_font(BigFont); // Replace 'fnt_large' with your font name
draw_set_color(c_maroon); // Set text color

var timer_text = string(minutes) + "." + string(seconds);


// Draw the text at the center top of the screen
draw_text(165, 220, timer_text);
	
}