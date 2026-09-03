var cam = view_camera[0];

// Verifica se o player existe para evitar crash
if (!instance_exists(obj_player)) exit;

// Offsets de posicionamento
var off_x = 0;
var off_y = -50;

// Dimensões da câmera
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Posição alvo (alinhada pelo centro da câmera)
var target_x = (obj_player.x + off_x) - (cam_w / 2);
var target_y = (obj_player.y + off_y) - (cam_h / 2);

// Limita a posição alvo para a câmera não sair da room
target_x = clamp(target_x, 0, room_width - cam_w);
target_y = clamp(target_y, 0, room_height - cam_h);

// Posição atual da câmera
var cur_x = camera_get_view_x(cam);
var cur_y = camera_get_view_y(cam);

// Aplica a movimentação suave (lerp)
var new_x = lerp(cur_x, target_x, 0.1);
var new_y = lerp(cur_y, target_y, 0.1);

camera_set_view_pos(cam, new_x, new_y);