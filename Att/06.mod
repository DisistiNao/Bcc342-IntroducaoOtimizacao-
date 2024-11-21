var p1, >= 0 integer;
var p2, >= 0 integer;
var p3, >= 0 integer;
var p4, >= 0 integer;

maximize Receita: 10*p1 + 8*p2 + 9*p3 + 7*p4;

m1: 5*p1 + 4*p2 + 8*p3 + 9*p4 <= 80;
m2: 2*p1 + 6*p2 + 0*p3 + 9*p4 <= 20;
m3: 3*p1 + 4*p2 + 6*p3 + 2*p4 <= 40;

mo1: 2*p1 + 4*p2 + 28*p3 + 8*p4 <= 120;
mo2: 7*p1 + 3*p2 + 0*p3  + 7*p4 <= 160;

max_venda_p1: p1 <= 70;
max_venda_p2: p2 <= 60;
max_venda_p3: p3 <= 40;
max_venda_p4: p4 <= 20;

solve;