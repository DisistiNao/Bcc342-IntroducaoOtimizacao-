var iogurte, >= 0;
var qMinas, >= 0;
var mussarela, >= 0;
var parmesao, >= 0;
var provolone, >= 0;

maximize Receita: 1.8*iogurte + 1.4*qMinas + 1.5*mussarela + 1.6*parmesao + 1.65*provolone;

leite: 0.7*iogurte + 0.4*qMinas + 0.5*mussarela + 0.6*parmesao + 0.65*provolone <= 1200;
soro: 0.16*iogurte + 0.22*qMinas + 0.32*mussarela + 0.2*parmesao + 0.25*provolone <= 460;
gordura: 0.25*iogurte + 0.33*qMinas + 0.45*mussarela + 0.4*parmesao + 0.5*provolone <= 650;

homem: 0.05*iogurte + 0.12*qMinas + 0.09*mussarela + 0.04*parmesao + 0.16*provolone <= 170;

min_iogurte: iogurte >= 320;
min_qMinas: qMinas >= 380;
min_mussarela: mussarela >= 450;
min_parmesao: parmesao >= 240;
min_provolone: provolone >= 180;

solve;