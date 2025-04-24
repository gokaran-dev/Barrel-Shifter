`timescale 1ns / 1ps

module Barrel_Shifter_TB;

    reg [15:0]data;
    reg [3:0]shift;
    reg dir;
    wire [15:0]result;

    Barrel_Shifter uut (
        .data(data),
        .shift(shift),
        .dir(dir),
        .result(result)
    );

    initial begin
        data=16'b1010101010101010;
        shift=4;
        dir=0;
        #10;

        data=16'b0011001100110011;
        shift=8;
        dir=1;
        #10;

        data=16'b1111000011110000;
        shift=1;
        dir=0;
        #10;

        data=16'b0000111100001111;
        shift=15;
        dir=1;
        #10;

        data=16'b1010101010101010;
        shift=0;
        dir=0;
        #10;

        data=16'b0101010101010101;
        shift=0;
        dir=1;
        #10;

        $finish;
    end
endmodule
