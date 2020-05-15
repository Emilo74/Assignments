var 0..1: m1;
var 0..1: m2;
var 0..1: c1;
var 0..1: c2;
var 0..1: d1;
var 0..1: d2;
var 0..1: l1;
var 0..1: l2;

constraint m1 + m2 = 1;
constraint c1 + c2 = 1;
constraint d1 + d2 = 1;
constraint l1 + l2 = 1;

constraint m1 + c1 + d1 + l1 = 2;
constraint m2 + c2 + d2 + l2 = 2;

solve minimize 4.5*m1 + 4.9*m2 + 7.8*c1 + 7.2*c2 + 3.6*d1 + 4.3*d2 + 2.9*l1 + 3.1*l2;

