`timescale 1ns / 1ps

module Left_Barrel_Shifter(
        input [15:0]data,
        input [3:0]control,
        output [15:0] result
    );
    
        wire [15:0]temp1;
        wire [15:0]temp2;
        wire [15:0]temp3;
        wire [15:0]temp4;
        
        Shift_1L mod1(
                .data(data),
                .en(control[0]),
                .q(temp1)
            );
        
         Shift_2L mod2(
                .data(control[0]?temp1:data),
                .en(control[1]),
                .q(temp2)
            );
            
          Shift_4L mod3(
                .data((control[0]||control[1])?temp2:data),
                .en(control[2]),
                .q(temp3)
            );
             
          Shift_8L mod4(
                .data((control[0]||control[1]||control[2])?temp3:data),
                .en(control[3]),
                .q(temp4)
            ); 
          assign result=control[3]?temp4:control[2]?temp3:control[1]?temp2:control[0]?temp1:data;   
    
endmodule
