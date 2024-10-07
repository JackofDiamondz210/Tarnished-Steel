if(O_Controller.playerHit = true)
{
draw_set_color(c_white);
//draw_set_font(fnt_card_description); // Set your font for the description
draw_text(x - 25 , y - 65, O_Player.hp); // Adjust y position based on scale
draw_self()
}