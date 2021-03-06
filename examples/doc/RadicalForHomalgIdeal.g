#! @System RadicalOfIdeal
#! @Example
LoadPackage( "PrimaryDecomposition" );
#! true
Q := HomalgFieldOfRationalsInSingular( );
#! Q
A := Q * "x,y,z";
#! Q[x,y,z]
I := LeftSubmodule( "y*z-x, x*z-y, y^2-z^2, x*y-z, x^2-z^2, z^3-z", A );
#! <A torsion-free ideal given by 6 generators>
RI := RadicalOfIdeal( I );
#! <A torsion-free ideal given by 6 generators>
Display( last );
#! y*z-x,  
#! x*z-y,  
#! y^2-z^2,
#! x*y-z,  
#! x^2-z^2,
#! z^3-z 
#!
#! An ideal generated by the 6 entries of the above matrix
IsSubset( I, RI );
#! true
A := HomalgRingOfIntegersInSingular( 3, "t" ) * "x,y";
#! GF(3)(t)[x,y]
J := LeftSubmodule( "x-t, y", A);
#! <A torsion-free ideal given by 2 generators>
RadicalOfIdeal( J^2 );
#! <A torsion-free ideal given by 2 generators>
Display( last );
#! y,    
#! x+(-t)
#!
#! An ideal generated by the 2 entries of the above matrix
#! @EndExample
