# set Vitamina := {1..4};
# set Alimento := {1..4};

# param custo_alimento{Alimento};
# param min_vitamina{Vitamina};
# param max_vitamina{Vitamina};

# param vitamina_alimento{Vitamina, Alimento};

# var x{j in Vitamina}, >= 0, integer;

# minimize Lucro: sum{j in Alimento} x[j]*custo_alimento[j];

# data_min_vitamina{i in Vitamina}: sum{j in Alimento} x[j]*vitamina_alimento[i, j] >= min_vitamina[i];
# data_max_vitamina{i in Vitamina}: sum{j in Alimento} x[j]*vitamina_alimento[i, j] <= max_vitamina[i];

# solve;

# data;
# param custo_alimento :=
#     1 3.8
#     2 4.5
#     3 7.5
#     4 25.6;
# param min_vitamina :=
#     1 80
#     2 70
#     3 100
#     4 60;
# param max_vitamina :=
#     1 100
#     2 90
#     3 130
#     4 120;
# param vitamina_alimento : 1 2 3 4 :=
#     1 10 5 9 10
#     2 8  7 6 6
#     3 15 3 4 7
#     4 20 2 3 9;
# end;