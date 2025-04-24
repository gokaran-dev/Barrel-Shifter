`timescale 1ns / 1ps

module Right_Barrel_Shifter_TB;

    reg [15:0] data;
    reg [3:0] control;
    wire [15:0] result;

    Right_Barrel_Shifter uut(
        .data(data),
        .control(control),
        .result(result)
    );

    initial begin
        data=16'b1010101010101010;
        control=4'b0000;
        #10;
        
        control=4'b0001;
        #10;

        control=4'b0010;
        #10;

        control=4'b0100;
        #10;

        control=4'b1000;
        #10;

        control=4'b1100;
        #10;

        control=4'b0110;
        #10;

        control=4'b1011;
        #10;

        control=4'b1111;
        #10;

        $finish;
    end
endmodule
