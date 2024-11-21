set MP := {1..3};
set Ligas := {1..2};

param PV{Ligas};
param disp{i in MP};
param matriz{i in MP, j in Ligas};
var x{j in Ligas}, >= 0;

maximize lucro: sum{j in Ligas} x[j]*PV[j];

Mat_prima{i in MP}: sum{j in Ligas} x[j]*matriz[i,j] <= disp[i];

solve;

data;
param PV :=
    1 30
    2 50;
param disp :=
    1 16
    2 11
    3 15;
param matriz : 1 2 :=
    1 2 1
    2 1 2
    3 1 3;
end;