/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log   :   This file is generated by Anlogic IP Generator.
 ** File   :   /home/forth32/dvk-fpga/board/tang/ip-components/tang_kgdvram.v
 ** Date   :   2021 03 18
 ** TD version   :   4.6.18154
\************************************************************/

`timescale 1ns / 1ps

module tang_kgdvram ( 
   doa, dia, addra, clka, wea,
   dob, dib, addrb, clkb, web
);

   output [7:0] doa;
   output [0:0] dob;


   input  [7:0] dia;
   input  [0:0] dib;
   input  [13:0] addra;
   input  [16:0] addrb;
   input  wea;
   input  web;
   input  clka;
   input  clkb;




   EG_LOGIC_BRAM #( .DATA_WIDTH_A(8),
            .DATA_WIDTH_B(1),
            .ADDR_WIDTH_A(14),
            .ADDR_WIDTH_B(17),
            .DATA_DEPTH_A(16384),
            .DATA_DEPTH_B(131072),
            .MODE("DP"),
            .REGMODE_A("NOREG"),
            .REGMODE_B("NOREG"),
            .WRITEMODE_A("NORMAL"),
            .WRITEMODE_B("NORMAL"),
            .RESETMODE("SYNC"),
            .IMPLEMENT("9K"),
            .INIT_FILE("NONE"),
            .FILL_ALL("NONE"))
         inst(
            .dia(dia),
            .dib(dib),
            .addra(addra),
            .addrb(addrb),
            .cea(1'b1),
            .ceb(1'b1),
            .ocea(1'b0),
            .oceb(1'b0),
            .clka(clka),
            .clkb(clkb),
            .wea(wea),
            .web(web),
            .bea(1'b0),
            .beb(1'b0),
            .rsta(1'b0),
            .rstb(1'b0),
            .doa(doa),
            .dob(dob));


endmodule