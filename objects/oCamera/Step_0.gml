//Confere se o nosso target o player existe na room pra ele poder seguir
if (!instance_exists(target)){
	exit;	
}

x = lerp(x, target.x, 0.1);
y = lerp(y, target.y-height/16, 0.1);

camera_set_view_pos(view_camera[0], x-width/2, y-height/2);