!
! This is a simple example of a Fortran2008 program that use steam properties
! from freesteam.
!
! Compilation:
! gfortran FT_usage.f08 -I../src ../src/libfreesteam.so
!

program main
    use freesteam_interface
    implicit none
    
    double precision:: T, P, Tsat
    double precision:: s

	write(*,'(/,5a,/)')"This example demonstrates use of a few of the basic",&
    " capabilities of freesteam. It calculates the rise in temperature",&
    " seen in isentropic compression of a sample of steam initially at",&
    " 1 bar, 400 K, to a final pressure of 10 bar. It also calculates",&
    " the saturation temperature for steam at that final pressure."
    
    P = 1.d5 !Pa
    T = 400.d0 !K
    write(*,'(2(a,f8.3),a)')"Initial temperature = ",T," K, pressure = ",P/1.d5," bar"
    
    s = freesteam_TP_s(T,P) !J/kgK
    write(*,'(a,f8.3,a)')"Entropy at initial state is ",s/1.d3," kJ/kgK"
    
    P = 10.d5 !Pa
    T = freesteam_Ps_T(P,s) !K
    write(*,'(2(a,f8.3),a)')"New temperature is ",T," K at ",P/1.d5," bar"
    
    Tsat = freesteam_P_Tsat(P) !K
    write(*,'(2(a,f8.3),a,/)')"Saturation temperature at ",P/1.d5," bar is ",Tsat," K"
    

end program main