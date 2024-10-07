// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// This function places the card instance in the correct location
function CardLocations(cardNumber, cardObject) {
    var cardX;
    var cardY;

    var cardControllerInstance = instance_find(O_Cardcontroller, 0);
    if (cardControllerInstance != noone) {
        cardY = cardControllerInstance.y; // Use the Y position from the Cardcontroller

        switch (cardNumber) {
            case 0:
                cardX = cardControllerInstance.x; // Original X position
                show_debug_message("Creating card 1");
                break;

            case 1:
                cardX = cardControllerInstance.x + 400; // Offset for card 2
                show_debug_message("Creating card 2");
                break;

            case 2:
                cardX = cardControllerInstance.x - 400; // Offset for card 3
                show_debug_message("Creating card 3");
                break;
        }

        instance_create_layer(cardX, cardY, "Cards", cardObject);
    } else {
        show_debug_message("O_Cardcontroller instance not found!");
    }
}