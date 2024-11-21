set Produto := {1..4};
set Material := {1..3};

param prod_lucro{Produto};
param disp_material{Material};

param mat_prod{Material, Produto};

var x{j in Produto}, >= 0, integer;

maximize Lucro: sum{j in Produto} x[j]*prod_lucro[j];

data_material{i in Material}: sum {j in Produto} x[j]*mat_prod[i, j] <= disp_material[i];

solve;

data;
param prod_lucro :=
    1 100
    2 80
    3 120
    4 20;
param disp_material :=
    1 250
    2 600
    3 500;
param mat_prod : 1 2 3 4 :=
    1 1 2 1 4
    2 0 1 3 2
    3 3 2 4 0;
end;