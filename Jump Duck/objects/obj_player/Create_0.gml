// Variaveis correspondentes ao Player
spdh = 0;
spdv = 0;
spd_player = 2;

gravidade = 0.25;
spd_pulo = -4;



pulos = 2;

var_flor01 = 0;


// No evento CREATE do obj_player
is_aiming = false;


//// Funcao de Mapeamento de Teclas
// Remapeia WASD para as setas direcionais
keyboard_set_map(ord("W"), vk_up);    // W funciona como Cima
keyboard_set_map(ord("A"), vk_left);  // A funciona como Esquerda
keyboard_set_map(ord("S"), vk_down);  // S funciona como Baixo
keyboard_set_map(ord("D"), vk_right); // D funciona como Direita

