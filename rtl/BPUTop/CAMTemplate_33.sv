// Generated by CIRCT firtool-1.62.0
// Standard header to adapt well known macros for register randomization.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

// Include register initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Include rmemory initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_MEM_
    `define ENABLE_INITIAL_MEM_
  `endif // not def ENABLE_INITIAL_MEM_
`endif // not def SYNTHESIS

module CAMTemplate_33(
  input        clock,
  input  [7:0] io_r_req_0_idx,
  output       io_r_resp_0_0,
  output       io_r_resp_0_1,
  output       io_r_resp_0_2,
  output       io_r_resp_0_3,
  output       io_r_resp_0_4,
  output       io_r_resp_0_5,
  output       io_r_resp_0_6,
  output       io_r_resp_0_7,
  output       io_r_resp_0_8,
  output       io_r_resp_0_9,
  output       io_r_resp_0_10,
  output       io_r_resp_0_11,
  output       io_r_resp_0_12,
  output       io_r_resp_0_13,
  output       io_r_resp_0_14,
  output       io_r_resp_0_15,
  input        io_w_valid,
  input  [7:0] io_w_bits_data_idx,
  input  [3:0] io_w_bits_index
);

  reg [7:0] array_0;
  reg [7:0] array_1;
  reg [7:0] array_2;
  reg [7:0] array_3;
  reg [7:0] array_4;
  reg [7:0] array_5;
  reg [7:0] array_6;
  reg [7:0] array_7;
  reg [7:0] array_8;
  reg [7:0] array_9;
  reg [7:0] array_10;
  reg [7:0] array_11;
  reg [7:0] array_12;
  reg [7:0] array_13;
  reg [7:0] array_14;
  reg [7:0] array_15;
  always @(posedge clock) begin
    if (io_w_valid & io_w_bits_index == 4'h0)
      array_0 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h1)
      array_1 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h2)
      array_2 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h3)
      array_3 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h4)
      array_4 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h5)
      array_5 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h6)
      array_6 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h7)
      array_7 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h8)
      array_8 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'h9)
      array_9 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'hA)
      array_10 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'hB)
      array_11 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'hC)
      array_12 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'hD)
      array_13 <= io_w_bits_data_idx;
    if (io_w_valid & io_w_bits_index == 4'hE)
      array_14 <= io_w_bits_data_idx;
    if (io_w_valid & (&io_w_bits_index))
      array_15 <= io_w_bits_data_idx;
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:3];
    initial begin
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        for (logic [2:0] i = 3'h0; i < 3'h4; i += 3'h1) begin
          _RANDOM[i[1:0]] = `RANDOM;
        end
        array_0 = _RANDOM[2'h0][7:0];
        array_1 = _RANDOM[2'h0][15:8];
        array_2 = _RANDOM[2'h0][23:16];
        array_3 = _RANDOM[2'h0][31:24];
        array_4 = _RANDOM[2'h1][7:0];
        array_5 = _RANDOM[2'h1][15:8];
        array_6 = _RANDOM[2'h1][23:16];
        array_7 = _RANDOM[2'h1][31:24];
        array_8 = _RANDOM[2'h2][7:0];
        array_9 = _RANDOM[2'h2][15:8];
        array_10 = _RANDOM[2'h2][23:16];
        array_11 = _RANDOM[2'h2][31:24];
        array_12 = _RANDOM[2'h3][7:0];
        array_13 = _RANDOM[2'h3][15:8];
        array_14 = _RANDOM[2'h3][23:16];
        array_15 = _RANDOM[2'h3][31:24];
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_r_resp_0_0 = io_r_req_0_idx == array_0;
  assign io_r_resp_0_1 = io_r_req_0_idx == array_1;
  assign io_r_resp_0_2 = io_r_req_0_idx == array_2;
  assign io_r_resp_0_3 = io_r_req_0_idx == array_3;
  assign io_r_resp_0_4 = io_r_req_0_idx == array_4;
  assign io_r_resp_0_5 = io_r_req_0_idx == array_5;
  assign io_r_resp_0_6 = io_r_req_0_idx == array_6;
  assign io_r_resp_0_7 = io_r_req_0_idx == array_7;
  assign io_r_resp_0_8 = io_r_req_0_idx == array_8;
  assign io_r_resp_0_9 = io_r_req_0_idx == array_9;
  assign io_r_resp_0_10 = io_r_req_0_idx == array_10;
  assign io_r_resp_0_11 = io_r_req_0_idx == array_11;
  assign io_r_resp_0_12 = io_r_req_0_idx == array_12;
  assign io_r_resp_0_13 = io_r_req_0_idx == array_13;
  assign io_r_resp_0_14 = io_r_req_0_idx == array_14;
  assign io_r_resp_0_15 = io_r_req_0_idx == array_15;
endmodule
