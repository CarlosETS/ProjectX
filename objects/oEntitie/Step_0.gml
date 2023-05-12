var _hsp = sign(hspeed);
var _vsp = sign(vspeed);

//Colisão horisontal
if(place_meeting(x+hspeed,y,oColision)){
	while(!place_meeting(x+_hsp,y,oColision)){
		x += _hsp;
	}
	hspeed = 0;
}
x += hspeed;

//Colisão Vetical
if(place_meeting(x,y+vspeed,oColision)){
	while(!place_meeting(x,y+_vsp,oColision)){
		y += _vsp;
	}
	vspeed = 0;
}
y += vspeed;