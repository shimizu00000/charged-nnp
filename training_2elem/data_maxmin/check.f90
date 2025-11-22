program test
implicit none
integer i
double precision g2(8,2),g5(24,2)

open(unit=1,file="g2_a_a_maxmin.dat",action="read",form="unformatted")
read(1)g2
print*,"g2_a_a"
print*,g2

open(unit=1,file="g5_a_aa_maxmin.dat",action="read",form="unformatted")
read(1)g5
print*,"g5_a_aa"
print*,g5

end
