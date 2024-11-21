var mala, >= 0;
var mochila, >= 0;

maximize Receita: 50*mala + 40*mochila;

corte: 2*mala + 1*mochila <= 300;
tingimento: 1*mala + 2.5*mochila <= 540;
costura: 2*mala + 2*mochila <= 440;
embalagem: 0.2*mala + 0.5*mochila <= 300;

solve;