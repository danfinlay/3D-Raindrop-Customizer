/*
Creates a 3 dimensional raindrop shape.
				
parameters:
	radius		radius of the sphere on the bottom of the raindrop shape
	centered	boolean value. sets the bottom sphere as centered (true) on [0, 0, 0],
				or sets the entire object in the positive [x, y, z] quadrant
*/

radius = 12; // Radius is pretty arbitrary.  I think it's in milimeters.

height = 3; // Height is a multiple of the radius.

steps = 20;  // Steps are the number of cylinders to make up the upper pointy end.

PI = 3.14159;  // The mathematical constant

loops = 1; // A silly bonus feature for revealing how the script works.

raindrop3D( radius, height, steps, loops );

module raindrop3D(radius, height, steps, loops){

	sphere(radius);

	for( i = [ 0 : steps * loops - 1 ] ){
		translate([0, 0, radius * height / steps * i])
			cylinder(h = 1 / steps * height * radius, // This is fine.
					r1 = (cos( 180 * i / steps )/2+0.5) * radius, 
					r2 = (cos( 180 * (i+1) / steps )/2+0.5) * radius ); 
	}	

}//end of module raindrop3D