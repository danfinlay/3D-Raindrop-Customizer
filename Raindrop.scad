/*
Creates a 3 dimensional raindrop shape.
				
parameters:
	radius		radius of the sphere on the bottom of the raindrop shape
	centered	boolean value. sets the bottom sphere as centered (true) on [0, 0, 0],
				or sets the entire object in the positive [x, y, z] quadrant
*/

raindrop3D( 12, 1.5, 20, 0.2);

module raindrop3D(radius, height, steps, bowing){

	sphere(radius);

	for( i = [ 0 : steps ] ){
		translate([0, 0, i / steps * radius * height ])
			cylinder(h = i/steps*radius*height, 
					r1 = radius * (steps-i+1) / steps,
					r2 =  radius * (steps-i) / steps); 
	}	

}//end of module raindrop3D
