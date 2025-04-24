`timescale 1ns / 1ps

module Barrel_Shifter(
    input [15:0]data,
    input [3:0]shift,
    input dir,  
    output [15:0]result
);
    wire [15:0] right_shift_result;
    wire [15:0] left_shift_result;

 
    Right_Barrel_Shifter right_shifter(
                .data(data),
                .control(shift),
                .result(right_shift_result)
            );


    Left_Barrel_Shifter left_shifter(
               .data(data),
               .control(shift),
               .result(left_shift_result)
            );

   
    assign result = dir?left_shift_result:right_shift_result;
endmodule
