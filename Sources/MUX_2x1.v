`timescale 1ns / 1ps

module MUX_2x1(
        input data1,data2,
        input sel,
        output y
    );
    
    wire sel_bar;
    wire [1:0] temp;
    
    not g1(sel_bar,sel);
    and g2(temp[0],data1,sel_bar);
    and g3(temp[1],data2,sel);
    or g4(y,temp[0],temp[1]);
    
endmodule
