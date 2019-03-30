// TODO
// pin holes squared off [x]
// screw tubes set to right height
// screw tubes truncated


    bottom_circle_width = 15;
    bottom_circle_height = 2;
    
    plug_width = 20;
    plug_height = 7;
    grip_height = 26;

difference() {
   // for (i=[0:10:360]) 
 // rotate([0,0,i]) translate([0,0,h_ext+1.5*100/2-0.5]) cube([2,1.2*100,1.5*100],center=true);
    
 //    rotate_extrude($fn = 180)
 //      translate([0.5, 1, 0]) 
 //           circle(r = 1);
       
    

    

    
    rotate_extrude($fn = 180)
        translate([0,0,0]) 
           polygon( points=[[0,0], // middle
                    [bottom_circle_width/2,0], // diameter of bottom circle
                    [plug_width/2,bottom_circle_height], // diameter of top of socket
                    [plug_width/2,plug_height+bottom_circle_height], // diameter of top of socket bezel
                    [35/2,plug_height+bottom_circle_height+6], // diameter of plug neck at top
                    [35/2,plug_height+grip_height+bottom_circle_height], // outter diameter of grip
                    [32/2,plug_height+grip_height+bottom_circle_height], // inner diameter of grip
                    [32/2,plug_height+bottom_circle_height+7], // inner diameter of plug neck at top
                    [bottom_circle_width/2,plug_height+bottom_circle_height+3], // inner diameter at socket bezel at top
                    [(bottom_circle_width/2)-1.5,bottom_circle_height],
                    [0,bottom_circle_height],  // inner diameter of socket bezel at bottom
                    [0,bottom_circle_height], // thickness of bottom Y side 
                    [0,0]] ); // back to start
                    
                    
     // make holes for pins
     translate([-5,0,0]) 
        cylinder(d=2,h=3,center=false,$fn=180);
        
     translate([5,0,0])
        cylinder(d=2,h=3,center=false,$fn=180);
        
         // cutouts for pin thrust pad
     translate([-5,0,0]) 
        cylinder(d=6,h=1,center=false,$fn=360);
      //  cube([15,15,8],center=false);
        
     translate([5,0,0])
        cylinder(d=6,h=1,center=false,$fn=360);
        
      
    // square off pin holes
     translate([5,-3,0])
        cube([15,6,1],center=false);
        
     translate([-20,-3,0])
        cube([15,6,1],center=false);

        
     // crucial SGU10 slots
     
     translate([9,0,3])
        cube([2,15,8],center=true);
        
     translate([-9,0,3])
        cube([2,15,8],center=true);
        

        
}

    h_canal=30; 
    h_ext=3;
    d_lamp=20;

 for (i=[0:22.5:360]) 
  rotate([0,0,i]) translate([18,0,26]) cube([2,6,15],center=true);
  //translate([0,0,h_canal/2+h_ext-h_canal]) difference(){
  //      cylinder(d=d_lamp,h=h_canal,center=false,$fn=180);
  //      cylinder(d=d_lamp-2,h=h_canal+1,center=false,$fn=180);
 // }
 
    
          // make screw holders
     translate([-10,-10,plug_height+bottom_circle_height]) difference() {
        cylinder(d=5,h=10,center=false,$fn=180);
        cylinder(d=1.5,h=10,center=false,$fn=180);
     }
        
     translate([10,10,plug_height+bottom_circle_height]) difference() {
        cylinder(d=5,h=10,center=false,$fn=180);
        cylinder(d=1.5,h=10,center=false,$fn=180);
     }
       
 
 

 
  