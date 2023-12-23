/// @description Initialization
pos = 0;

// This array contains all existent instances of obj_title_button
buttonArray = [];

// Get the total number of instances of obj_buttons
var totalButtons = instance_number(obj_title_button);

// Loop through all instances and add them to the array
for (var i = 0; i < totalButtons; i++) {
    var currentButton = instance_find(obj_title_button, i);
    if (currentButton != noone) {
        array_push(buttonArray, currentButton);
    }
}

option_length = array_length(buttonArray);
