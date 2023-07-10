module BCD_to_seven_segment(in, seg);
input [3:0] in;
output reg [6:0] seg;

always@(in) begin
    case(in)
      4'h0: seg = 7'b1000000;    // 0
      4'h1: seg = 7'b1111001;    // 1
      4'h2: seg = 7'b0100100;    // 2
      4'h3: seg = 7'b0110000;    // 3
      4'h4: seg = 7'b0011001;    // 4
      4'h5: seg = 7'b0010010;    // 5
      4'h6: seg = 7'b0000010;    // 6
      4'h7: seg = 7'b1111000;    // 7
      4'h8: seg = 7'b0000000;    // 8
      4'h9: seg = 7'b0010000;    // 9
      4'hA: seg = 7'b0001000;    // A
      4'hB: seg = 7'b1100000;    // B
      4'hC: seg = 7'b0110001;    // C
      4'hD: seg = 7'b1000010;    // D
      4'hE: seg = 7'b0110000;    // E
      4'hF: seg = 7'b0111000;    // F
      default: seg = 7'b1111111;    // blank
    endcase
  end
endmodule 