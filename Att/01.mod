var ligaA, >= 0;
var ligaB, >= 0;

maximize Receita: 30*ligaA + 50*ligaB;

cobre: 2*ligaA + 1*ligaB <= 16;
zinco: 1*ligaA + 2*ligaB <= 11;
chumbo: 1*ligaA + 3*ligaB <= 15;

# max_ligaA: ligaA <= 5;

solve;