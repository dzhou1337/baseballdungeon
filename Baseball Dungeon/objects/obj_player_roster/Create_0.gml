/// @description Necessary data for roster management

//Full list of baseball players on the player's roster
roster = array_create(25)

//list of ints. each int corresponds to an index in roster that corresponds to one player
battingOrder = array_create(9, -1)

//like batting order, position 0 here corresponds to the DH, other numbered positions
//correspond to actual defensive positions (1-P, 2-C, 3-1B...)
defensePositioning = array_create(10, -1)
