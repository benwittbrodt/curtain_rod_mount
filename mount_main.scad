to_mm = 25.4;
$fn=1000;
thickness = 1 * to_mm;
rod_diameter = 0.75 * to_mm;
depth = 5 * to_mm;
height = 4 * to_mm;

module base(){
    cube([thickness,depth,height]);
        translate([0,depth,height/2]){
            rotate([0,90,0]){
                cylinder(h = thickness, r = height/2);
               }
        }; 
};

module rod(){
    translate([thickness/2,depth,height/2]){
        rotate([0,90,0]){
        cylinder(h = thickness/2, r = rod_diameter/2);
        };
    };
    
    };

difference(){
base();
    rod();
    }