var int: x1;
var int: x2;

constraint 3*x1 + 2*x2 <= 2400;
constraint x2 <= 800;
constraint 2*x1 <= 1200;
constraint x1 >= 0;
constraint x2 >= 0;

solve maximize (5*x1) + (2*x2);
