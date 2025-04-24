//shifting left by 1 bit

`timescale 1ns / 1ps

module Shift_1L(
        input [15:0]data,
        input en,
        output [15:0]q
    );
            assign q[0]=1'b0;
            MUX_2x1 m02(.data1(data[1]),.data2(data[0]),.y(q[1]),.sel(en));
            MUX_2x1 m03(.data1(data[2]),.data2(data[1]),.y(q[2]),.sel(en));
            MUX_2x1 m04(.data1(data[3]),.data2(data[2]),.y(q[3]),.sel(en));
            MUX_2x1 m05(.data1(data[4]),.data2(data[3]),.y(q[4]),.sel(en));
            MUX_2x1 m06(.data1(data[5]),.data2(data[4]),.y(q[5]),.sel(en));
            MUX_2x1 m07(.data1(data[6]),.data2(data[5]),.y(q[6]),.sel(en));
            MUX_2x1 m08(.data1(data[7]),.data2(data[6]),.y(q[7]),.sel(en));
            MUX_2x1 m09(.data1(data[8]),.data2(data[7]),.y(q[8]),.sel(en));
            MUX_2x1 m10(.data1(data[9]),.data2(data[8]),.y(q[9]),.sel(en));
            MUX_2x1 m11(.data1(data[10]),.data2(data[9]),.y(q[10]),.sel(en));
            MUX_2x1 m12(.data1(data[11]),.data2(data[10]),.y(q[11]),.sel(en));
            MUX_2x1 m13(.data1(data[12]),.data2(data[11]),.y(q[12]),.sel(en));
            MUX_2x1 m14(.data1(data[13]),.data2(data[12]),.y(q[13]),.sel(en));
            MUX_2x1 m15(.data1(data[14]),.data2(data[13]),.y(q[14]),.sel(en));
            MUX_2x1 m16(.data1(data[15]),.data2(data[14]),.y(q[15]),.sel(en));
                
        
endmodule
