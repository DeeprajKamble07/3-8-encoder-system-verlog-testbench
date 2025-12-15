class transaction;
  rand bit en;
  rand logic [7:0] a;
  bit [2:0] y;
  constraint c1{a inside {8'd1,8'd2,8'd4,8'd8,8'd16,8'd32,8'd64,8'd128};}
  function void display(string name);
    $display("%0s en=%0b a=%0b y=%0b",name,en,a,y);
  endfunction
endclass
