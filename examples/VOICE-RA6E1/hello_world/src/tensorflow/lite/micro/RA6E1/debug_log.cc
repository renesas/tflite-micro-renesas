/* Copyright 2020 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

// Reference implementation of the DebugLog() function that's required for a
// platform to support the TensorFlow Lite for Microcontrollers library. This is
// the only function that's absolutely required to be available on a target
// device, since it's used for communicating test results back to the host so
// that we can verify the implementation is working correctly.
// It's designed to be as easy as possible to supply an implementation though.
// On platforms that have a POSIX stack or C library, it can be written as a
// single call to `fprintf(stderr, "%s", s)` to output a string to the error
// stream of the console, but if there's no OS or C library available, there's
// almost always an equivalent way to write out a string to some serial
// interface that can be used instead. For example on Arm M-series MCUs, calling
// the `bkpt #0xAB` assembler instruction will output the string in r1 to
// whatever debug serial connection is available. If you're running mbed, you
// can do the same by creating `Serial pc(USBTX, USBRX)` and then calling
// `pc.printf("%s", s)`.
// To add an equivalent function for your own platform, create your own
// implementation file, and place it in a subfolder with named after the OS
// you're targeting. For example, see the Cortex M bare metal version in
// tensorflow/lite/micro/bluepill/debug_log.cc or the mbed one on
// tensorflow/lite/micro/mbed/debug_log.cc.

#include "tensorflow/lite/micro/debug_log.h"

#include "hal_data.h"
//#include <cstring>
//#include <iostream>

volatile bool uart_recv_flag = false;
volatile bool uart_send_complete_flag = false;
//unsigned char recv_data[2];
//unsigned char send_data[30];
unsigned char send_buff[40];

#ifndef TF_LITE_STRIP_ERROR_STRINGS
#include <cstdio>
#endif

extern "C" void DebugLog(const char* s) {
#ifndef TF_LITE_STRIP_ERROR_STRINGS
  // Reusing TF_LITE_STRIP_ERROR_STRINGS to disable DebugLog completely to get
  // maximum reduction in binary size. This is because we have DebugLog calls
  // via TF_LITE_CHECK that are not stubbed out by TF_LITE_REPORT_ERROR.
//  fprintf(stderr, "%s", s);
    fsp_err_t status = FSP_SUCCESS;
    //status = R_SCI_UART_Open(&g_uart7_ctrl, &g_uart7_cfg);
//    sprintf(send_buff, "Please push s to start timer.\r\n");
//    sprintf((char*)send_buff, s);
//    printf("%s\n", s)
//    status = R_SCI_UART_Write(&g_uart7_ctrl, send_buff, strlen(s));
   // undo this comment to go back to normal //    status = R_SCI_UART_Write(&g_uart7_ctrl, s, strlen(s));
//    R_SCI_UART_Write(&g_uart7_ctrl, send_buff, std::strlen(send_buff));

 //   while(!uart_send_complete_flag){}
    uart_send_complete_flag = false;


#endif
}

void user_uart_callback(uart_callback_args_t *p_args)
{
    if(p_args->event == UART_EVENT_RX_COMPLETE)
    {
        uart_recv_flag = true;
    }else if(p_args->event == UART_EVENT_TX_COMPLETE)
    {
        uart_send_complete_flag = true;
    }
}
