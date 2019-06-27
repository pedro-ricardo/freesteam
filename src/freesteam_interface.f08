module freesteam_interface
    
    use iso_c_binding
    implicit none
    
    interface 
    ! ------
    function freesteam_P_Tsat(P) result(val) bind(C,name='freesteam_region4_Tsat_p')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: P
    end function freesteam_P_Tsat
    ! ------
    function freesteam_T_Psat(T) result(val) bind(C,name='freesteam_region4_psat_T')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T
    end function freesteam_T_Psat
    ! ------
    function freesteam_TP_h(T,P) result(val) bind(C,name='freesteam_TP_h')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, P
    end function freesteam_TP_h
    ! ------
    function freesteam_TP_s(T,P) result(val) bind(C,name='freesteam_TP_s')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, P
    end function freesteam_TP_s
    ! ------
    function freesteam_TP_u(T,P) result(val) bind(C,name='freesteam_TP_u')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, P
    end function freesteam_TP_u
    ! ------
    function freesteam_TP_v(T,P) result(val) bind(C,name='freesteam_TP_v')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, P
    end function freesteam_TP_v
    ! ------
    function freesteam_Tx_h(T,x) result(val) bind(C,name='freesteam_Tx_h')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, x
    end function freesteam_Tx_h
    ! ------
    function freesteam_Tx_s(T,x) result(val) bind(C,name='freesteam_Tx_s')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, x
    end function freesteam_Tx_s
    ! ------
    function freesteam_Tx_u(T,x) result(val) bind(C,name='freesteam_Tx_u')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, x
    end function freesteam_Tx_u
    ! ------
    function freesteam_Tx_v(T,x) result(val) bind(C,name='freesteam_Tx_v')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: T, x
    end function freesteam_Tx_v
    ! ------
    function freesteam_Ps_T(P,s) result(val) bind(C,name='freesteam_Ps_T')
        import:: c_double
        implicit none
        real(c_double):: val
        real(c_double), intent(in), value:: P, s
    end function freesteam_Ps_T
    ! ------
    end interface

contains


end module freesteam_interface