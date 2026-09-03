//// Funções e variaveis
move = -keyboard_check(vk_left)+keyboard_check(vk_right);

spdh = move * spd_player;

if var_flor01=3 {
	//room_goto_next();	
}

if keyboard_check(vk_escape) {
	exit	
}

//// Movimentacao
// X Andar e colisão
if place_meeting(x+spdh, y, obj_blocoPiso01) {
	while !place_meeting(x+sign(spdh), y, obj_blocoPiso01) {
		x+=sign(spdh);
	}
	spdh = 0;
}

x+=spdh
// Y Pulo e colisão
if place_meeting(x,y+1,obj_blocoPiso01) {
	pulos = 2
} else {
	spdv+=gravidade;
	}
if keyboard_check_pressed(vk_space) && pulos>0 {
	spdv=+spd_pulo;
	pulos-=1
}

if place_meeting(x, y+spdv, obj_blocoPiso01) {
	while !place_meeting(x, y+sign(spdv), obj_blocoPiso01) {
		y+=sign(spdv);	
	}
	spdv = 0;
}

y+=spdv


// No evento STEP do obj_player
is_aiming = mouse_check_button(mb_right);

//// Definindo o SPRITE
if move != 0 {
	spr_posicao = move;
	sprite_index = spr_playerCorrendo;
	image_xscale = spr_posicao;
} else {
	sprite_index = spr_playerAnima;
}

if keyboard_check(vk_space) {
	sprite_index = spr_playerPulo
}