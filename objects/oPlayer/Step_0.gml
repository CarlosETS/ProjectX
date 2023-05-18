event_inherited();

// Iniciando variaveis
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check(vk_space);
wall = place_meeting(x,y+1,oColision);

//Movimentação para esquerda e direita
hsp = (right - left) * maxhspeed;

//Fazer o player olhar na direção que esta andando
if(hsp != 0){
	image_xscale = sign(hsp);
}

//Gravidade
if(!wall){
	vsp += GRAVITY * mass;
}

//Pulo
if(wall and jump){
	vsp -=12;
}