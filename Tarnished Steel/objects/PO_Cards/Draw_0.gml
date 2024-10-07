if(O_Controller.cardSet = true)
{
// Scaling based on the viewport
var scale_factor = 1 / (view_wport[0] / room_width); // Adjust this based on your viewport size

// Draw the card background
draw_sprite(Menu_UI_1, 0, x, y);
draw_sprite_ext(Menu_UI_1, 0, x, y, scale_factor, scale_factor, 0, c_white, 1);

// Draw the card name
draw_set_color(c_white);
draw_set_font(Smallerfont); // Set your font for the card name
draw_text(x - 65, y - 35 * scale_factor, card_name); // Adjust y position based on scale

// Draw the item sprite in the center of the card
var item_x = x + (sprite_width / 2) - (sprite_width / 2) * scale_factor;
var item_y = y + (sprite_height / 2) - (sprite_height / 2) * scale_factor;
draw_sprite_ext(card_sprite, 0, item_x + 470, item_y + 460, scale_factor, scale_factor, 0, c_white, 1);

// Draw the card description
draw_set_color(c_white);
//draw_set_font(fnt_card_description); // Set your font for the description
draw_text(x - 85, y + 20 * scale_factor, card_description); // Adjust y position based on scale
draw_self()
}