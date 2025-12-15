`include "interface.sv"
`include "test.sv"
module tb;
  logic clk;
  initial clk=0;
  always #5 clk=~clk;
  intf vif(clk);
  test tst(vif);
  encoder8_3 dut(.en(vif.en),.a(vif.a),.y(vif.y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    #100; $finish;
  end
endmodule
