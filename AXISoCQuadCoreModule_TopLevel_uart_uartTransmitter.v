`timescale 1ns/1ps
`default_nettype none
// PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
// * This file was generated by Quokka FPGA Toolkit.
// * Generated code is your property, do whatever you want with it
// * Place custom code between [BEGIN USER ***] and [END USER ***].
// * CAUTION: All code outside of [USER] scope is subject to regeneration.
// * Bad things happen sometimes in developer's life,
//   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
// * Internal structure of code is subject to change.
//   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
// * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
// * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
//
// DISCLAIMER:
//   Code comes AS-IS, it is your responsibility to make sure it is working as expected
//   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
//
// System configuration name is AXISoCQuadCoreModule_TopLevel_uart_uartTransmitter, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_uart_uartTransmitter
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire BoardSignals_Clock,
	input wire BoardSignals_Reset,
	input wire BoardSignals_Running,
	input wire BoardSignals_Starting,
	input wire BoardSignals_Started,
	input wire iCE,
	input wire iValid,
	input wire [7:0] iValue,
	output wire oCE,
	output wire oTransmitting,
	output wire oTX,
	output wire oWillStartTransmitting
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire [3: 0] UARTTransmitterModule_L38F44T46_Expr = 4'b1010;
	wire UARTTransmitterModule_L40F50T55_Expr = 1'b0;
	wire UARTTransmitterModule_L44F72T73_Expr = 1'b1;
	wire UARTTransmitterModule_L45F86T90_Expr = 1'b1;
	wire UARTTransmitterModule_L53F21T25_Expr = 1'b1;
	wire UARTTransmitterModule_L55F21T26_Expr = 1'b0;
	wire UARTTransmitterModule_L56F21T25_Expr = 1'b1;
	wire UARTTransmitterModule_L58F42T46_Expr = 1'b1;
	wire UARTTransmitterModule_L59F39T40_Expr = 1'b0;
	wire Inputs_iCE;
	wire Inputs_iValid;
	wire [7: 0] Inputs_iValue;
	reg NextState_transmitting;
	reg [7: 0] NextState_txCounter;
	reg [10: 0] NextState_txValue;
	wire [7: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F47T74_Cast;
	wire [10: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L45F45T113_Source;
	wire [10: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L50F13L60T14_UARTTransmitterModule_L51F37L57T18_Source;
	reg State_transmitting = 1'b0;
	wire State_transmittingDefault = 1'b0;
	reg [7: 0] State_txCounter = 8'b00000000;
	wire [7: 0] State_txCounterDefault = 8'b00000000;
	reg [10: 0] State_txValue = 11'b00000000000;
	wire [10: 0] State_txValueDefault = 11'b01111111111;
	wire UARTTransmitterModule_L28F47T92_Expr;
	wire UARTTransmitterModule_L28F47T92_Expr_1;
	wire UARTTransmitterModule_L28F47T92_Expr_2;
	wire UARTTransmitterModule_L28F47T66_Expr;
	wire UARTTransmitterModule_L28F47T66_Expr_1;
	wire [9: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr;
	wire signed [9: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr_1;
	wire signed [9: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr_2;
	wire UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_Expr;
	wire signed [8: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_ExprLhs;
	wire signed [8: 0] UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_ExprRhs;
	always @ (posedge BoardSignals_Clock)
	begin
		if ((BoardSignals_Reset == 1))
		begin
			State_transmitting <= State_transmittingDefault;
			State_txCounter <= State_txCounterDefault;
			State_txValue <= State_txValueDefault;
		end
		else
		begin
			State_transmitting <= NextState_transmitting;
			State_txCounter <= NextState_txCounter;
			State_txValue <= NextState_txValue;
		end
	end
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_Expr = UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_ExprLhs == UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_ExprRhs ? 1'b1 : 1'b0;
	assign UARTTransmitterModule_L28F47T92_Expr = UARTTransmitterModule_L28F47T92_Expr_1 & UARTTransmitterModule_L28F47T92_Expr_2;
	assign UARTTransmitterModule_L28F47T66_Expr = ~UARTTransmitterModule_L28F47T66_Expr_1;
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr = UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr_1 + UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr_2;
	always @ (*)
	begin
		NextState_transmitting = State_transmitting;
		NextState_txCounter = State_txCounter;
		NextState_txValue = State_txValue;
		if ((State_transmitting == 1))
		begin
			if ((Inputs_iCE == 1))
			begin
				if ((UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_Expr == 1))
				begin
					NextState_transmitting = UARTTransmitterModule_L40F50T55_Expr;
				end
				else
				begin
					NextState_txCounter = UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F47T74_Cast;
					NextState_txValue = UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L45F45T113_Source;
				end
			end
		end
		else if ((Inputs_iValid == 1))
		begin
			NextState_txValue = UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L50F13L60T14_UARTTransmitterModule_L51F37L57T18_Source;
			NextState_transmitting = UARTTransmitterModule_L58F42T46_Expr;
			NextState_txCounter = {
				{7{1'b0}},
				UARTTransmitterModule_L59F39T40_Expr
			}
			;
		end
	end
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_ExprLhs = {
		1'b0,
		State_txCounter
	}
	;
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L38F25T46_ExprRhs = {
		{5{1'b0}},
		UARTTransmitterModule_L38F44T46_Expr
	}
	;
	assign UARTTransmitterModule_L28F47T92_Expr_1 = UARTTransmitterModule_L28F47T66_Expr;
	assign UARTTransmitterModule_L28F47T92_Expr_2 = NextState_transmitting;
	assign UARTTransmitterModule_L28F47T66_Expr_1 = State_transmitting;
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr_1 = {
		{2{1'b0}},
		State_txCounter
	}
	;
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr_2 = {
		{9{1'b0}},
		UARTTransmitterModule_L44F72T73_Expr
	}
	;
	assign Inputs_iCE = iCE;
	assign Inputs_iValid = iValid;
	assign Inputs_iValue = iValue;
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F47T74_Cast = UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L44F54T73_Expr[7:0];
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L35F13L48T14_UARTTransmitterModule_L37F17L47T18_UARTTransmitterModule_L43F21L46T22_UARTTransmitterModule_L45F45T113_Source = {
		UARTTransmitterModule_L45F86T90_Expr,
		State_txValue[10:1]
	}
	;
	assign UARTTransmitterModule_L33F9L61T10_UARTTransmitterModule_L50F13L60T14_UARTTransmitterModule_L51F37L57T18_Source = {
		UARTTransmitterModule_L53F21T25_Expr,
		Inputs_iValue,
		UARTTransmitterModule_L55F21T26_Expr,
		UARTTransmitterModule_L56F21T25_Expr
	}
	;
	assign oCE = Inputs_iCE;
	assign oTransmitting = State_transmitting;
	assign oTX = State_txValue[0];
	assign oWillStartTransmitting = UARTTransmitterModule_L28F47T92_Expr;
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
