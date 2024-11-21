var xA, >=0; #toneladas da liga tipo A
var xB, >=0; #toneladas da liga tipo B

maximize Z: 30*xA + 50*xB;

subject to # opcional
cobre: 2*xA + xB <= 16;
zinco: xA + 2*xB <= 11;
chumbo: xA + 3*xB <= 15;
solve;
printf:"\n=== Solução ótima ===\n";
printf: "xA = %.3f \nxB = %.3f\n", xA, xB;
end;