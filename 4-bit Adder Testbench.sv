// 4-bit Adder Testbench
module test_adder4bit;
  reg [3:0] A, B;
  wire [3:0] SUM;
  wire CARRY;

  adder4bit uut (A, B, SUM, CARRY);

  initial begin
    $display("A\tB\tSUM\tCARRY");
    $display("---------------------");

    A = 4'b0001; B = 4'b0010; #10;
    $display("%b\t%b\t%b\t%b", A, B, SUM, CARRY);

    A = 4'b0101; B = 4'b0011; #10;
    $display("%b\t%b\t%b\t%b", A, B, SUM, CARRY);

    A = 4'b1111; B = 4'b0001; #10;
    $display("%b\t%b\t%b\t%b", A, B, SUM, CARRY);

    $finish;
  end
endmodule