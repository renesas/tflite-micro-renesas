/* Copyright 2019 The TensorFlow Authors. All Rights Reserved.

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

#include "output_handler.h"

#include "hal_data.h"
#include "stdio.h"


float buff[2];
void HandleOutput(tflite::ErrorReporter* error_reporter,
                    float x_value,
                  float y_value) {
//uint8_t* s = (uint8_t*)"\n";
    float s[2];
    buff[0] = x_value;
    buff[1] = y_value;

    //using the global var buff fixed the issue, is this an interrupt?
    R_SCI_UART_Write(&g_uart0_ctrl, (uint8_t*)buff, sizeof(float)*sizeof(s));//sizeof(s));

  // Log the current X and Y values

  //TF_LITE_REPORT_ERROR(error_reporter, "z_value: %f, y_value: %f\n",
  //                     static_cast<double>(x_value),
  //                     static_cast<double>(y_value));
}
