set Produto := {1..4};
set Maquina := {1..3};
set MO := {1..2};

param max_venda{Produto};
param prod_lucro{Produto};
param disp_maquina{Maquina};
param disp_MO{MO};

param maquina_prod{Maquina, Produto};
param mo_prod{MO, Produto};

var x{j in Produto}, >= 0, integer;

maximize Lucro: sum{j in Produto} x[j]*prod_lucro[j];

data_maquina{i in Maquina}: sum{j in Produto} x[j]*maquina_prod[i, j] <= disp_maquina[i];
data_mo{i in MO}: sum{j in Produto} x[j]*mo_prod[i, j] <= disp_MO[i];
data_produto{i in Produto}: x[i] <= max_venda[i];

solve;

data;
param max_venda :=
    1 70
    2 60
    3 40
    4 20;
param prod_lucro :=
    1 10
    2 8
    3 9
    4 7;
param disp_maquina :=
    1 80
    2 20
    3 40;
param disp_MO :=
    1 120
    2 160;
param maquina_prod : 1 2 3 4 :=
    1 5 4 8 9
    2 2 6 0 9
    3 3 4 6 2;
param mo_prod : 1 2 3 4 :=
    1 2 4 28 8
    2 7 3 0  7;
end;