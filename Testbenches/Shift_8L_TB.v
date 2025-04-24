`timescale 1ns / 1ps

module Shift_8L_TB;

    reg [15:0]data;
    reg en;
    wire [15:0]q;

    Shift_8L uut(
        .data(data),
        .en(en),
        .q(q)
    );

    initial 
        begin
        data=16'b1010101010101010;
        en=1;
        #10;

        data=16'b1100110011001100;
        en=0;
        #10;


        data=16'b1111000011110000;
        en=1;
        #10;

        $stop;
    end

endmodule
