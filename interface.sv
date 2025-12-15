interface intf(input logic clk);
  logic en;
  logic [7:0] a;
  logic [2:0] y;
  clocking drvcb @(posedge clk);
    output en,a;
    input y;
  endclocking
  clocking moncb @(posedge clk);
    input en,a,y;
  endclocking
  modport drv(clocking drvcb);
    modport mon(clocking moncb);
endinterface
