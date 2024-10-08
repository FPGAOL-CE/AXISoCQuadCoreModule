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
// System configuration name is AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire [31:0] iAddress,
	output wire oActive,
	output wire [2:0] oIndex
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire signed [3: 0] rangeDetectorsCount = 4'b0101;
	wire RangeDetectorArrayModule_L48F13L54T14_0_idx = 1'b0;
	wire RangeDetectorArrayModule_L48F13L54T14_1_idx = 1'b1;
	wire [1: 0] RangeDetectorArrayModule_L48F13L54T14_2_idx = 2'b10;
	wire [1: 0] RangeDetectorArrayModule_L48F13L54T14_3_idx = 2'b11;
	wire [2: 0] RangeDetectorArrayModule_L48F13L54T14_4_idx = 3'b100;
	wire RangeDetectorArrayModule_L56F13L59T14_0_idx = 1'b0;
	wire RangeDetectorArrayModule_L56F13L59T14_1_idx = 1'b1;
	wire [1: 0] RangeDetectorArrayModule_L56F13L59T14_2_idx = 2'b10;
	wire [1: 0] RangeDetectorArrayModule_L56F13L59T14_3_idx = 2'b11;
	wire [2: 0] RangeDetectorArrayModule_L56F13L59T14_4_idx = 3'b100;
	wire [31: 0] Inputs_iAddress;
	wire encoder_HasActive;
	wire [2: 0] encoder_MSBIndex;
	wire [4: 0] encoder_MSBValue;
	wire [31: 0] rangeDetectors0_Value;
	wire rangeDetectors0_IsActive;
	wire [31: 0] rangeDetectors1_Value;
	wire rangeDetectors1_IsActive;
	wire [31: 0] rangeDetectors2_Value;
	wire rangeDetectors2_IsActive;
	wire [31: 0] rangeDetectors3_Value;
	wire rangeDetectors3_IsActive;
	wire [31: 0] rangeDetectors4_Value;
	wire rangeDetectors4_IsActive;
	wire [31: 0] RangeDetectorArrayModule_L48F13L54T14_0_RangeDetectorArrayModule_L50F52L53T18_Object;
	wire [31: 0] RangeDetectorArrayModule_L48F13L54T14_1_RangeDetectorArrayModule_L50F52L53T18_Object;
	wire [31: 0] RangeDetectorArrayModule_L48F13L54T14_2_RangeDetectorArrayModule_L50F52L53T18_Object;
	wire [31: 0] RangeDetectorArrayModule_L48F13L54T14_3_RangeDetectorArrayModule_L50F52L53T18_Object;
	wire [31: 0] RangeDetectorArrayModule_L48F13L54T14_4_RangeDetectorArrayModule_L50F52L53T18_Object;
	wire [4: 0] RangeDetectorArrayModule_L36F36L40T14_Object;
	wire encoder_iValues0_encoder_iValues_HardLink;
	wire encoder_iValues1_encoder_iValues_HardLink;
	wire encoder_iValues2_encoder_iValues_HardLink;
	wire encoder_iValues3_encoder_iValues_HardLink;
	wire encoder_iValues4_encoder_iValues_HardLink;
	wire encoder_HasActive_encoder_HasActive_HardLink;
	wire [2: 0] encoder_MSBIndex_encoder_MSBIndex_HardLink;
	wire [4: 0] encoder_MSBValue_encoder_MSBValue_HardLink;
	wire [31: 0] rangeDetectors0_Value_rangeDetectors0_Value_HardLink;
	wire rangeDetectors0_IsActive_rangeDetectors0_IsActive_HardLink;
	wire [31: 0] rangeDetectors1_Value_rangeDetectors1_Value_HardLink;
	wire rangeDetectors1_IsActive_rangeDetectors1_IsActive_HardLink;
	wire [31: 0] rangeDetectors2_Value_rangeDetectors2_Value_HardLink;
	wire rangeDetectors2_IsActive_rangeDetectors2_IsActive_HardLink;
	wire [31: 0] rangeDetectors3_Value_rangeDetectors3_Value_HardLink;
	wire rangeDetectors3_IsActive_rangeDetectors3_IsActive_HardLink;
	wire [31: 0] rangeDetectors4_Value_rangeDetectors4_Value_HardLink;
	wire rangeDetectors4_IsActive_rangeDetectors4_IsActive_HardLink;
	wire rangeActive [0 : 4];
	wire encoder_iValues [0 : 4];
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_encoder
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_encoder
	(
		// [BEGIN USER MAP FOR encoder]
		// [END USER MAP FOR encoder]
		.iValues0 (encoder_iValues0_encoder_iValues_HardLink),
		.iValues1 (encoder_iValues1_encoder_iValues_HardLink),
		.iValues2 (encoder_iValues2_encoder_iValues_HardLink),
		.iValues3 (encoder_iValues3_encoder_iValues_HardLink),
		.iValues4 (encoder_iValues4_encoder_iValues_HardLink),
		.HasActive (encoder_HasActive_encoder_HasActive_HardLink),
		.MSBIndex (encoder_MSBIndex_encoder_MSBIndex_HardLink),
		.MSBValue (encoder_MSBValue_encoder_MSBValue_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors0
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors0
	(
		// [BEGIN USER MAP FOR rangeDetectors0]
		// [END USER MAP FOR rangeDetectors0]
		.Value (rangeDetectors0_Value_rangeDetectors0_Value_HardLink),
		.IsActive (rangeDetectors0_IsActive_rangeDetectors0_IsActive_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors1
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors1
	(
		// [BEGIN USER MAP FOR rangeDetectors1]
		// [END USER MAP FOR rangeDetectors1]
		.Value (rangeDetectors1_Value_rangeDetectors1_Value_HardLink),
		.IsActive (rangeDetectors1_IsActive_rangeDetectors1_IsActive_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors2
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors2
	(
		// [BEGIN USER MAP FOR rangeDetectors2]
		// [END USER MAP FOR rangeDetectors2]
		.Value (rangeDetectors2_Value_rangeDetectors2_Value_HardLink),
		.IsActive (rangeDetectors2_IsActive_rangeDetectors2_IsActive_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors3
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors3
	(
		// [BEGIN USER MAP FOR rangeDetectors3]
		// [END USER MAP FOR rangeDetectors3]
		.Value (rangeDetectors3_Value_rangeDetectors3_Value_HardLink),
		.IsActive (rangeDetectors3_IsActive_rangeDetectors3_IsActive_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors4
	AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_rangeDetectorArray0_rangeDetectors4
	(
		// [BEGIN USER MAP FOR rangeDetectors4]
		// [END USER MAP FOR rangeDetectors4]
		.Value (rangeDetectors4_Value_rangeDetectors4_Value_HardLink),
		.IsActive (rangeDetectors4_IsActive_rangeDetectors4_IsActive_HardLink)
	);
	assign Inputs_iAddress = iAddress;
	assign RangeDetectorArrayModule_L48F13L54T14_0_RangeDetectorArrayModule_L50F52L53T18_Object[31:0] = Inputs_iAddress;
	assign rangeDetectors0_Value = RangeDetectorArrayModule_L48F13L54T14_0_RangeDetectorArrayModule_L50F52L53T18_Object[31:0];
	assign RangeDetectorArrayModule_L48F13L54T14_1_RangeDetectorArrayModule_L50F52L53T18_Object[31:0] = Inputs_iAddress;
	assign rangeDetectors1_Value = RangeDetectorArrayModule_L48F13L54T14_1_RangeDetectorArrayModule_L50F52L53T18_Object[31:0];
	assign RangeDetectorArrayModule_L48F13L54T14_2_RangeDetectorArrayModule_L50F52L53T18_Object[31:0] = Inputs_iAddress;
	assign rangeDetectors2_Value = RangeDetectorArrayModule_L48F13L54T14_2_RangeDetectorArrayModule_L50F52L53T18_Object[31:0];
	assign RangeDetectorArrayModule_L48F13L54T14_3_RangeDetectorArrayModule_L50F52L53T18_Object[31:0] = Inputs_iAddress;
	assign rangeDetectors3_Value = RangeDetectorArrayModule_L48F13L54T14_3_RangeDetectorArrayModule_L50F52L53T18_Object[31:0];
	assign RangeDetectorArrayModule_L48F13L54T14_4_RangeDetectorArrayModule_L50F52L53T18_Object[31:0] = Inputs_iAddress;
	assign rangeDetectors4_Value = RangeDetectorArrayModule_L48F13L54T14_4_RangeDetectorArrayModule_L50F52L53T18_Object[31:0];
	assign rangeActive[0] = rangeDetectors0_IsActive;
	assign rangeActive[1] = rangeDetectors1_IsActive;
	assign rangeActive[2] = rangeDetectors2_IsActive;
	assign rangeActive[3] = rangeDetectors3_IsActive;
	assign rangeActive[4] = rangeDetectors4_IsActive;
	assign RangeDetectorArrayModule_L36F36L40T14_Object[4:0] = {
		rangeActive[4],
		rangeActive[3],
		rangeActive[2],
		rangeActive[1],
		rangeActive[0]
	}
	;
	assign encoder_iValues[4] = RangeDetectorArrayModule_L36F36L40T14_Object[4];
	assign encoder_iValues[3] = RangeDetectorArrayModule_L36F36L40T14_Object[3];
	assign encoder_iValues[2] = RangeDetectorArrayModule_L36F36L40T14_Object[2];
	assign encoder_iValues[1] = RangeDetectorArrayModule_L36F36L40T14_Object[1];
	assign encoder_iValues[0] = RangeDetectorArrayModule_L36F36L40T14_Object[0];
	assign oActive = encoder_HasActive;
	assign oIndex = encoder_MSBIndex;
	assign encoder_iValues0_encoder_iValues_HardLink = encoder_iValues[0];
	assign encoder_iValues1_encoder_iValues_HardLink = encoder_iValues[1];
	assign encoder_iValues2_encoder_iValues_HardLink = encoder_iValues[2];
	assign encoder_iValues3_encoder_iValues_HardLink = encoder_iValues[3];
	assign encoder_iValues4_encoder_iValues_HardLink = encoder_iValues[4];
	assign encoder_HasActive = encoder_HasActive_encoder_HasActive_HardLink;
	assign encoder_MSBIndex = encoder_MSBIndex_encoder_MSBIndex_HardLink;
	assign encoder_MSBValue = encoder_MSBValue_encoder_MSBValue_HardLink;
	assign rangeDetectors0_Value_rangeDetectors0_Value_HardLink = rangeDetectors0_Value;
	assign rangeDetectors0_IsActive = rangeDetectors0_IsActive_rangeDetectors0_IsActive_HardLink;
	assign rangeDetectors1_Value_rangeDetectors1_Value_HardLink = rangeDetectors1_Value;
	assign rangeDetectors1_IsActive = rangeDetectors1_IsActive_rangeDetectors1_IsActive_HardLink;
	assign rangeDetectors2_Value_rangeDetectors2_Value_HardLink = rangeDetectors2_Value;
	assign rangeDetectors2_IsActive = rangeDetectors2_IsActive_rangeDetectors2_IsActive_HardLink;
	assign rangeDetectors3_Value_rangeDetectors3_Value_HardLink = rangeDetectors3_Value;
	assign rangeDetectors3_IsActive = rangeDetectors3_IsActive_rangeDetectors3_IsActive_HardLink;
	assign rangeDetectors4_Value_rangeDetectors4_Value_HardLink = rangeDetectors4_Value;
	assign rangeDetectors4_IsActive = rangeDetectors4_IsActive_rangeDetectors4_IsActive_HardLink;
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
