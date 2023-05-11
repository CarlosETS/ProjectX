//Sistema de colisão
var _speh = sign(hspeed);
var _spev = sign(vspeed);


//Colisão horisontal
repeat(abs(hspeed)){
	if(place_meeting(x + _speh, y, oColision)){
		hspeed = 0;
		break;
	}
	x += _speh;
}

//Colisão vertical
repeat(abs(vspeed)){
	if(place_meeting(x, y + _spev, oColision)){
		vspeed = 0;
		break;
	}
	y += _spev;
}