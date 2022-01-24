// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gauss(argument0, argument1){
	var x1, x2, w;
 
    do {
        x1 = random(2) - 1;
        x2 = random(2) - 1;
        w = x1*x1 + x2*x2;
    } until (0 < w && w < 1);
 
    w = sqrt(-2 * ln(w)/w);
    return argument0 + argument1 * x1 * w;
}