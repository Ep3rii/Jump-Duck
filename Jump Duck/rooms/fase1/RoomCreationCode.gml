// Desativar filtro de Interpolação de pixels
gpu_set_texfilter(false);

// Descobre a resolução da tela
altura_da_tela = display_get_height()
largura_da_tela = display_get_width()

// Calcula a posição da Janela
posicao_y = altura_da_tela/5
posicao_x = largura_da_tela/6

// Inicia na posição ideal
window_set_position(posicao_x,posicao_y)

// Resolução interna do jogo (ex base de 16x16)
var largura_base = 320;
var altura_base = 180;

// Descobre o maior multiplicador inteiro que cabe no monitor
var _scale = floor(display_get_width() / largura_base);

var largura_final = largura_base * _scale;
var altura_final = altura_base * _scale;

// Redimensiona a janela e a superfície do aplicativo
window_set_size(1280, 720);
surface_resize(application_surface, largura_final, altura_final);