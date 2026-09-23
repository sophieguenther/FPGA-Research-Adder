#include <ap_int.h>

void adder_led(ap_uint<1> sw0, ap_uint<1> sw1, ap_uint<3> *led) {
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE ap_none port=sw0
    #pragma HLS INTERFACE ap_none port=sw1
    #pragma HLS INTERFACE ap_none port=led

    ap_uint<1> ld0 = sw0;
    ap_uint<1> ld1 = sw1;
    ap_uint<1> ld2 = sw0 & sw1; // Bitwise AND

    ap_uint<3> temp = 0;
    temp[0] = ld0;
    temp[1] = ld1;
    temp[2] = ld2;

    *led = temp;
}