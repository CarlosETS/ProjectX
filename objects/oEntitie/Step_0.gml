var _hsp = sign(hsp);
var _vsp = sign(vsp);

//Colisão horisontal
if(place_meeting(x+hsp,y,oColision)){
	while(!place_meeting(x+_hsp,y,oColision)){
		x += _hsp;
	}
	hsp = 0;
}
x += hsp;

//Colisão Vetical
if(place_meeting(x,y+vsp,oColision)){
	while(!place_meeting(x,y+_vsp,oColision)){
		y += _vsp;
	}
	vsp = 0;
}
y += vsp;