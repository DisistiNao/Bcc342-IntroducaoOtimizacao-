var escrivaninha, >= 0;
var mesa, >= 0;
var armario, >= 0;
var prateleira, >= 0;

maximize Receita: 100*escrivaninha + 80*mesa + 120*armario + 20*prateleira;

tabua: 1*escrivaninha + 2*mesa + 1*armario + 4*prateleira <= 250;
prancha: 0*escrivaninha + 1*mesa + 3*armario + 2*prateleira <= 250;
paineis: 3*escrivaninha + 2*mesa + 4*armario + 0*prateleira <= 250;

solve;