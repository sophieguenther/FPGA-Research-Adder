#ifndef ADDER_H_
#define ADDER_H_

#include "ap_int.h"

void adder_led(ap_uint<1> sw0, ap_uint<1> sw1, ap_uint<1> &led0);

#endif