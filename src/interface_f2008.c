/*

Compilation:
gcc -c freesteam_f2008.c -I/path_to/freesteam/include

 */

#include <steam_ps.h>
#include <steam_pT.h>
#include <steam_Tx.h>
#include <region4.h>

// ############################################################################
// Set Pressure and Temperature, Get Entalpy
double freesteam_TP_h(double const T, double const P)
{
    SteamState S = freesteam_set_pT(P, T);
    double h = freesteam_h(S);
    return h;
}
// ############################################################################

// ############################################################################
// Set Pressure and Temperature, Get Entropy
double freesteam_TP_s(double const T, double const P)
{
    SteamState S = freesteam_set_pT(P, T);
    double s = freesteam_s(S);
    return s;
}
// ############################################################################

// ############################################################################
// Set Pressure and Temperature, Get internal energy
double freesteam_TP_u(double const T, double const P)
{
    SteamState S = freesteam_set_pT(P, T);
    double u = freesteam_u(S);
    return u;
}
// ############################################################################

// ############################################################################
// Set Pressure and Temperature, Get especific volume
double freesteam_TP_v(double const T, double const P)
{
    SteamState S = freesteam_set_pT(P, T);
    double v = freesteam_v(S);
    return v;
}
// ############################################################################

// ############################################################################
// Set Temperature and quality, Get Entalpy
double freesteam_Tx_h(double const T, double const x)
{
    SteamState S = freesteam_set_Tx(T, x);
    double h = freesteam_h(S);
    return h;
}
// ############################################################################

// ############################################################################
// Set Temperature and quality, Get Entropy
double freesteam_Tx_s(double const T, double const x)
{
    SteamState S = freesteam_set_Tx(T, x);
    double s = freesteam_s(S);
    return s;
}
// ############################################################################

// ############################################################################
// Set Temperature and quality, Get internal energy
double freesteam_Tx_u(double const T, double const x)
{
    SteamState S = freesteam_set_Tx(T, x);
    double u = freesteam_u(S);
    return u;
}
// ############################################################################

// ############################################################################
// Set Temperature and quality, Get especific volume
double freesteam_Tx_v(double const T, double const x)
{
    SteamState S = freesteam_set_Tx(T, x);
    double v = freesteam_v(S);
    return v;
}
// ############################################################################

// ############################################################################
// Set Pressure and Temperature, Get especific volume
double freesteam_Ps_T(double const P, double const s)
{
    SteamState S = freesteam_set_ps(P, s);
    double T = freesteam_T(S);
    return T;
}
// ############################################################################
