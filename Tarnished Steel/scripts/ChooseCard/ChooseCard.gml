
// This function chooses a card based on a random number and the card number
/// @description Creating cards
// This function chooses a card based on a random number and the card number
function ChooseCard(cardNumber) {
    var cardObject;
    var randomCard = floor(random_range(0, 11)); // Random number 0 to 10

    switch (randomCard) {
        case 0:
            cardObject = O_Vision;
            show_debug_message("vision");
            break;

        case 1:
            cardObject = O_Speed;
            show_debug_message("speed");
            break;
			
		 case 2:
            cardObject = O_Size;
            show_debug_message("Size");
            break;
			
		case 3:
            cardObject = O_Recovery;
            show_debug_message("Recovery");
            break;
			
		case 4:
            cardObject = O_PickupEffect;
            show_debug_message("Pickup");
            break;
			
		case 5:
            cardObject = O_HP;
            show_debug_message("HP");
            break;
		
		case 6:
            cardObject = O_Defense;
            show_debug_message("Defense");
            break;
			
		case 7:
            cardObject = O_AtkSpd;
            show_debug_message("Attack Speed");
            break;
		
		case 8:
            cardObject = O_AtkSize;
            show_debug_message("Attack Size");
            break;
		
		case 9:
            cardObject = O_AtkDmg;
            show_debug_message("Attack DMG");
            break;
			
		case 10:
            cardObject = O_SpinAttack;
            show_debug_message("Spin");
            break;
			
    }
	// this is calling in cardlocations script so that we can set where they will be at.
    CardLocations(cardNumber, cardObject);
}

// Create the cards
for (var i = 0; i < 3; i++) {
    ChooseCard(i);
}