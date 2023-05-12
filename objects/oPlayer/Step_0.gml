event_inherited();

// Iniciando variaveis
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var jump = keyboard_check(vk_space);
var wall = place_meeting(x,y+1,oColision);

//Movimentação para esquerda e direita
hspeed = (right - left) * maxhspeed;

//Fazer o player olhar na direção que esta andando
if(hspeed != 0){
	xscale = sign(hspeed);
	image_xscale = xscale;
}

//Gravidade
if(!wall){
	vspeed += GRAVITY *mass;
}

//Pulo
if(wall and jump){
	vspeed -=8;
}