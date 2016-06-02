global t = [1:168]';

global F = [ 12.90000, 
    11.30000, 
    10.60000, 
    11.20000, 
    10.90000, 
    7.500000, 
    7.700000, 
    11.70000, 
    12.90000, 
    14.30000, 
    10.90000, 
    13.70000, 
    17.10000, 
    14.00000, 
    15.30000, 
    8.500000, 
    5.700000, 
    5.500000, 
    7.600000, 
    8.600000, 
    7.300000, 
    7.600000, 
    12.70000, 
    11.00000, 
    12.70000, 
    12.90000, 
    13.00000, 
    10.90000, 
   10.400000, 
   10.200000, 
    8.000000, 
    10.90000, 
    13.60000, 
   10.500000, 
    9.200000, 
    12.40000, 
    12.70000, 
    13.30000, 
   10.100000, 
    7.800000, 
    4.800000, 
    3.000000, 
    2.500000, 
    6.300000, 
    9.700000, 
    11.60000, 
    8.600000, 
    12.40000, 
   10.500000, 
    13.30000, 
   10.400000, 
    8.100000, 
    3.700000, 
    10.70000, 
    5.100000, 
   10.400000, 
    10.90000, 
    11.70000, 
    11.40000, 
    13.70000, 
    14.10000, 
    14.00000, 
    12.50000, 
    6.300000, 
    9.600000, 
    11.70000, 
    5.000000, 
    10.80000, 
    12.70000, 
    10.80000, 
    11.80000, 
    12.60000, 
    15.70000, 
    12.60000, 
    14.80000, 
    7.800000, 
    7.100000, 
    11.20000, 
    8.100000, 
    6.400000, 
    5.200000, 
    12.00000, 
   10.200000, 
    12.70000, 
   10.200000, 
    14.70000, 
    12.20000, 
    7.100000, 
    5.700000, 
    6.700000, 
    3.900000, 
    8.500000, 
    8.300000, 
    10.80000, 
    16.70000, 
    12.60000, 
    12.50000, 
    12.50000, 
    9.800000, 
    7.200000, 
    4.100000, 
    10.60000, 
   10.100000, 
   10.100000, 
    11.90000, 
    13.60000, 
    16.30000, 
    17.60000, 
    15.50000, 
    16.00000, 
    15.20000, 
    11.20000, 
    14.30000, 
    14.50000, 
    8.500000, 
    12.00000, 
    12.70000, 
    11.30000, 
    14.50000, 
    15.10000, 
   10.400000, 
    11.50000, 
    13.40000, 
    7.500000, 
   0.6000000, 
   0.3000000, 
    5.500000, 
    5.000000, 
    4.600000, 
    8.200000, 
    9.900000, 
    9.200000, 
    12.50000, 
    10.90000, 
    9.900000, 
    8.900000, 
    7.600000, 
    9.500000, 
    8.400000, 
    10.70000, 
    13.60000, 
    13.70000, 
    13.70000, 
    16.50000, 
    16.80000, 
    17.10000, 
    15.40000, 
    9.500000, 
    6.100000, 
   10.100000, 
    9.300000, 
    5.300000, 
    11.20000, 
    16.60000, 
    15.60000, 
    12.00000, 
    11.50000, 
    8.600000, 
    13.80000, 
    8.700000, 
    8.600000, 
    8.600000, 
    8.700000, 
    12.80000, 
    13.20000, 
    14.00000, 
    13.40000, 
    14.80000];

function f = enso (b)
  global t;
  global F;
  y = b(1) .+ b(2)*cos( 2*pi*t/12) .+ b(3)*sin( 2*pi*t/12) .+ b(5)*cos( 2*pi*t/b(4)) .+ b(6)*sin( 2*pi*t/b(4)) .+ b(8)*cos( 2*pi*t/b(7)) .+ b(9)*sin( 2*pi*t/b(7));
  f = F - y;
end

function J = ensoJ (b)
  global t;
  J = -[ ones(length(t),1) , cos(2*pi*t/12), sin(2*pi*t/12), b(5) * \
        ((2*pi*t)/b(4)^2) .* sin(2*pi*t/b(4)) .+  -b(6) * \
        ((2*pi*t)/b(4)^2) .* cos(2*pi*t/b(4)), cos(2*pi*t/b(4)), \
        sin(2*pi*t/b(4)), b(8) * ((2*pi*t)/b(7)^2) .* sin(2*pi*t/b(7)) \
        .+  -b(9) * ((2*pi*t)/b(7)^2) .* cos(2*pi*t/b(7)), \
        cos(2*pi*t/b(7)), sin(2*pi*t/b(7))];
end
