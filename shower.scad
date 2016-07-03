//Enter OpenSCAD code here.
module 200_balka(){
translate ([0, -10, 10])cube([10, 10, 200]);
}

module 125_balka(){
translate ([0, -10, 0])rotate([90, 0, 90]) cube([10, 10, 125]);
}

module 240_balka(){
rotate([90, 0, 0]) cube([10, 10, 240]);
}

//125_balka();
//200_balka();
//240_balka();

for (i = [[0, 0, 0], 
[0, 0, 210],
[115, 0, 210], [115, 0, 0]]){ translate(i) 240_balka();}

for (i = [
[0, 0, 0], 
[115, 0, 0],
[115, -115, 0], 
[115, -230, 0],
[0, -230, 0],
[0, -115, 0]]){ translate(i) 200_balka();}


for (i = [
[0, 0, 0], 
[0, 0, 210],
[0, -115, 0], 
[0, -115, 210],
[0, -230, 0],
[0, -230, 210]]){ translate(i) 125_balka();}


 echo("Version:",version());
