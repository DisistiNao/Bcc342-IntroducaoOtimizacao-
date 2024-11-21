var soldado, >= 0 integer;
var trem, >= 0 integer;

maximize Receita: 3*soldado + 2*trem;

carpinteiro: 1*soldado + 1*trem <= 80;
acabador: 2*soldado + 1*trem <= 100;
max_trem: trem <= 40;
mult_soldado: 4*trem <= soldado;

solve;