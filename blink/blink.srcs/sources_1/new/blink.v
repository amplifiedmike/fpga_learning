`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 09:49:24 PM
// Design Name: 
// Module Name: blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blink(
    input CLK100MHZ,
    output led
    );
    
    reg [24:0] count = 0;
    assign led = count[23]; //blink rate = 100MHz/(2^reg)
    always @ (posedge(CLK100MHZ)) count <= count + 1;
    
endmodule
