// Descobre a resolução da tela
altura_da_tela = display_get_height()
largura_da_tela = display_get_width()

// Calcula a posição da Janela
posicao_y = altura_da_tela/9.8
posicao_x = largura_da_tela/14.7

draw_self();
draw_set_font(fTitulo)

draw_set_colour(c_black);
draw_text_transformed(posicao_x-2,posicao_y+2,"SAIR",1.05,1.05,0);


draw_set_colour(c_white);
draw_text_transformed(posicao_x,posicao_y,"SAIR",1.05,1.05,0);

