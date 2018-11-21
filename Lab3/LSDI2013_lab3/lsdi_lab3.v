`timescale 1ns/100ps

module lsdi_lab3( 
								//------------------------------------------------------------------
                        // main clock sources:
                        clock50MHz,	// master clock input (external oscillator 50MHz)

								//------------------------------------------------------------------
                        // push buttons: button down = logic 1 (no debouncing hw)
								btn3,			// button 3 (leftmost)
								btn2,
								btn1,
								btn0,			// button 0 (rigthmost)

								//------------------------------------------------------------------
								// LEDs: logic 1 lights the LED
								ld7,			// LED 7 (leftmost)
								ld6,
								ld5,
								ld4,
								ld3,
								ld2,
								ld1,
								ld0,			// LED 6 (rightmost)

								//------------------------------------------------------------------
								// Slide switches: UP position generates a logic 1
								sw7,			// switch 7 (leftmost)
								sw6,
								sw5,
								sw4,
								sw3,
								sw2,
								sw1,
								sw0,			// switch 0 (rightmost)

								//------------------------------------------------------------------
								// Seven segment display: logic 0 lights the segment LED
								//                        logic 0 enables each display
								sega,			// segment a
								segb,
								segc,
								segd,
								sege,
								segf,
								segg,
								dp,			// decimal point

								an3,        // display enable (leftmost digit)
								an2,
								an1,
								an0,			// display enable (rightmost digit)
                        );

// clocks:
input				clock50MHz;
 
// buttons and switches:
input			btn3, btn2, btn1, btn0,
					sw7, sw6, sw5, sw4, sw3, sw2, sw1, sw0;

output 		ld0, ld1, ld2, ld3, ld4, ld5, ld6, ld7;

// 7-segment display:
output		sega, segb, segc, segd, sege, segf, segg, dp,
					an3, an2, an1, an0;

//-----------------------------------------------------------------------------------
// DISABLE_OUTPUTS
// This section disable all the output signals, assigning them to non-active logic levels
// Unused outputs should be left assigned to these levels; used outputs that are connected 
// to the user circuit must be commented out:
//------------------------------------------------------------------

//------------------------------------------------------------------
// LEDs: logic 1 lights the LED
assign ld7			= 1'b0;			// LED 7 (leftmost)
assign ld6			= 1'b0;
assign ld5			= 1'b0;
assign ld4			= 1'b0;
/*
assign ld3			= 1'b0;
assign ld2			= 1'b0;
assign ld1			= 1'b0;
assign ld0			= 1'b0;			// LED 0 (rightmost)
*/


// sinal de clock enable para o display de 7 segmentos:
wire 	clken250hz;

//-------------------------------------------------------------------------------
//###############################################################################
// Add additional wires here:

wire [7:0] result;
wire       en_clock, en_clocki;
wire       clken100hz;
wire [2:0] OPR;


//-------------------------------------------------------------------------------
//###############################################################################
// Add your schematic here:

debounce debounce_1
              ( .clock( clock50MHz ),  // master clock (50MHz)
                .reset( 1'b0 ),  // master reset, assynchronous, active high
					 .clken100hz( clken100hz ), // clock enable output, 50Hz ( for Mclk=25M)
                .key0in( btn0 ), // connects to external key input
                .key1in( btn1 ), // connects to external key input
                .key2in( btn2 ), // connects to external key input
                .key3in( btn3 ), // connects to external key input
                .key0out( OPR[0] ),// output signal
                .key1out( OPR[1] ),// output signal
                .key2out( OPR[2] ),// output signal
                .key3out( en_clocki ) // output signal
              );

								 
autorepeat  autorepeat_1
              ( .clock( clock50MHz ),     // master clock (50MHz)
                .reset( 1'b0 ),           // master reset, assynchronous, active high
					 .clken( clken100hz ) ,    // clock enable signal, 50Hz (for mclk=25M), used as time base
					 .rpten( 1'b0 ),           // enable repeat function
                .keyin( en_clocki ),     // connects to the debounced key input
                .keyout( en_clock )       // output signal with autorepeat
              );				  


datapath datapath_1 (	
								.clock( clock50MHz ),
								.reset( 1'b0 ),
								.en( en_clock ),
                        .B( {sw7,sw6,sw5,sw4,sw3,sw2,sw1,sw0} ),
								.A( result ),
								.OPR( OPR ),
								.FLAGS( {ld3, ld2, ld1, ld0} )
							);
	
//-------------------------------------------------------------------------------
//###############################################################################
// interface com o display de 7 segmentos
disp7seg  dip7seg (.clockscan(clock50MHz),
                   .areset(reset),
						  
						 .clkenable(clken250hz),

                   .d3( result[7:4] ),
						 .d2( result[3:0] ),
						 .d1( {sw7, sw6, sw5, sw4} ),
						 .d0( {sw3, sw2, sw1, sw0} ),
						  
                   .dp3(1'b0), 
						 .dp2(1'b0), 
						 .dp1(1'b0), 
						 .dp0(1'b0),

                   .dp(dp), 
						 .seg_a(sega), 
						 .seg_b(segb), 
						 .seg_c(segc), 
						 .seg_d(segd),
						 .seg_e(sege),
						 .seg_f(segf),
						 .seg_g(segg),

                   .en_d3(an3),
						 .en_d2(an2),
						 .en_d1(an1),
						 .en_d0(an0)
						  );

// gerador de rel�gio (sinal de clock enable) para o interface com o display de 7 segmentos
// produz um sinal de clockenable de 250Hz (dura��o igual a um per�odo de rel�gio), 
// para um sinal de rel�gio de 50MHz; para diferentes	frequ�ncias de rel�gio de entrada, 
// o factor de divis�o e o n�mero de bits do contador (registo clkdiv) devem ser ajustados 
// de forma apropriada a obter uma frequ�ncia de varrimento dos displays entre 100 e 300Hz
disp7seg_clockgen  disp7seg_clockgen_1(
																				.clock(clock50MHz), 
																				.reset(reset), 
																				.clocken(clken250hz)
																			);

endmodule

