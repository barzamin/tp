/* c_math.cpp autogenerated by split.py v0.3 at 2020-12-31 13:20:59.345670 */

#include "SComponent/c_math.h"

// additional symbols needed for c_math.cpp
// autogenerated by split.py v0.3 at 2020-12-31 13:20:59.336084
extern double lbl_804550A8;  // SComponent::@2201, 6.2831854820251465
extern float lbl_804550B0;   // SComponent::@2215, 10430.378
extern float lbl_804550B4;   // SComponent::@2232, 1024.0
extern float lbl_804550B8;   // SComponent::@2277, 0.0
extern float lbl_804550BC;   // SComponent::@2282, 9.58738E-5
extern double lbl_804550C0;  // SComponent::@2284, 4.503601774854144E15
extern float lbl_804550C8;   // SComponent::@2296, 30323.0
extern float lbl_804550CC;   // SComponent::@2297, 30269.0
extern float lbl_804550D0;   // SComponent::@2298, 30307.0
extern double lbl_804550D8;  // SComponent::@2299, 1.0
extern float lbl_804550E0;   // SComponent::@2311, 2.0
extern float lbl_804550E4;   // SComponent::@2312, 0.5

extern s32 lbl_80451168;  // SComponent::r0
extern s32 lbl_8045116C;  // SComponent::r1
extern s32 lbl_80451170;  // SComponent::r2
extern s32 lbl_80451174;  // SComponent::r02
extern s32 lbl_80451178;  // SComponent::r12
extern s32 lbl_8045117C;  // SComponent::r22

extern u16 lbl_803C3778[1028];  // SComponent::atntable

// cM_rad2s__Ff
asm s16 cM_rad2s(float){nofralloc
#include "SComponent/c_math/asm/func_802675E4.s"
}

// U_GetAtanTable__Fff
u16 U_GetAtanTable(float f0, float f1) {
    return lbl_803C3778[(int)(f0 / f1 * lbl_804550B4)];
}

// cM_atan2s__Fff
asm s16 cM_atan2s(float, float) {
    nofralloc
#include "SComponent/c_math/asm/func_80267674.s"
}

// cM_atan2f__Fff
asm float cM_atan2f(float, float) {
    nofralloc
#include "SComponent/c_math/asm/func_80267814.s"
}

// cM_initRnd__Fiii
void cM_initRnd(int p0, int p1, int p2) {
    lbl_80451168 = p0;
    lbl_8045116C = p1;
    lbl_80451170 = p2;
}

// cM_rnd__Fv
#ifdef NON_MATCHING
float cM_rnd(void) {
    // matches besides extra double in data from int -> float conversion
    lbl_80451168 = (lbl_80451168 * 0xAB) % 0x763D;
    lbl_8045116C = (lbl_8045116C * 0xAC) % 0x7663;
    lbl_80451170 = (lbl_80451170 * 0xAA) % 0x7673;
    return fabsf((float)func_8036C760(lbl_80451168 / lbl_804550C8 + lbl_8045116C / lbl_804550CC +
                                          lbl_80451170 / lbl_804550D0,
                                      lbl_804550D8));
}
#else
asm float cM_rnd(void) {
    nofralloc
#include "SComponent/c_math/asm/func_8026786C.s"
}
#endif

// cM_rndF__Ff
float cM_rndF(float f) {
    return cM_rnd() * f;
}

// cM_rndFX__Ff
float cM_rndFX(float f) {
    return f * (cM_rnd() - lbl_804550E4) * lbl_804550E0;
}

// cM_initRnd2__Fiii
void cM_initRnd2(int p0, int p1, int p2) {
    lbl_80451174 = p0;
    lbl_80451178 = p1;
    lbl_8045117C = p2;
}

// cM_rnd2__Fv
#ifdef NON_MATCHING
float cM_rnd2(void) {
    // matches besides extra double in data from int -> float conversion
    lbl_80451174 = (lbl_80451174 * 0xAB) % 0x763D;
    lbl_80451178 = (lbl_80451178 * 0xAC) % 0x7663;
    lbl_8045117C = (lbl_8045117C * 0xAA) % 0x7673;
    return fabsf((float)func_8036C760(lbl_80451174 / lbl_804550C8 + lbl_80451178 / lbl_804550CC +
                                          lbl_8045117C / lbl_804550D0,
                                      lbl_804550D8));
}
#else
asm float cM_rnd2(void) {
    nofralloc
#include "SComponent/c_math/asm/func_802679E4.s"
}
#endif

// cM_rndF2__Ff
float cM_rndF2(float f) {
    return cM_rnd2() * f;
}

// cM_rndFX2__Ff
float cM_rndFX2(float f) {
    return f * (cM_rnd2() - lbl_804550E4) * lbl_804550E0;
}
