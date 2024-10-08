/// @description Spawns the cards after a set time

vision = 0;

var card0;
var card1;
var card2;

card0 = random_range(1, 11);
card1 = random_range(1, 11);
card2 = random_range(1, 11);

while (card0 == card1) {
	card1 = random_range(1, 11);
}
while (card0 == card2 || card1 == card2) {
	card2 = random_range(1, 11);
}

window_set_cursor(cr_arrow);
