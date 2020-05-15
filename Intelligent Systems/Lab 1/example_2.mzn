var int: x1;
var int: x2;

constraint 5*x1 + 15*x2 >= 50;
constraint 20*x1 + 5*x2 >= 40;
constraint 15*x1 + 2*x2 <= 60;
constraint x1 >= 0;
constraint x2>= 0;

solve minimize 8*x1 + 4*x2;