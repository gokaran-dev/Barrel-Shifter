//shifting right by 8 bits

`timescale 1ns / 1ps

module Shift_8(
        input [15:0]data,
        input en,
        output [15:0]q
    );
         
            MUX_2x1 m01(.data1(data[0]),.data2(data[8]),.y(q[0]),.sel(en));
            MUX_2x1 m02(.data1(data[1]),.data2(data[9]),.y(q[1]),.sel(en));
            
            MUX_2x1 m03(.data1(data[2]),.data2(data[10]),.y(q[2]),.sel(en));
            MUX_2x1 m04(.data1(data[3]),.data2(data[11]),.y(q[3]),.sel(en));
            MUX_2x1 m05(.data1(data[4]),.data2(data[12]),.y(q[4]),.sel(en));
            MUX_2x1 m06(.data1(data[5]),.data2(data[13]),.y(q[5]),.sel(en)); 
            MUX_2x1 m07(.data1(data[6]),.data2(data[14]),.y(q[6]),.sel(en));
            MUX_2x1 m08(.data1(data[7]),.data2(data[15]),.y(q[7]),.sel(en));
            
            assign q[8]=data[15];
            assign q[9]=data[15];
            assign q[10]=data[15];
            assign q[11]=data[15];
            assign q[12]=data[15];
            assign q[13]=data[15];
            assign q[14]=data[15];
            assign q[15]=data[15];
                
        
endmodule
