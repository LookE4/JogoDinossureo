/// @description Insert description here
draw_set_font(fnt_texto);
draw_set_color(c_black);
draw_text(430, 10, "Pontuacao: " + string(global.pontos));

if global.dormindo == true {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Calculate the center positions
    var centerX = display_get_gui_width() / 2;
    var centerY = display_get_gui_height() / 2;

    // Draw the text centered horizontally and slightly above center vertically
    draw_text_color(centerX, centerY - 30, "Seu dinossauro esta mimindo", c_black, c_black, c_black, c_black, 1);

    // Create the button at the center
    create_button(centerX, centerY, spr_restart);

    // Reset alignment to default
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
