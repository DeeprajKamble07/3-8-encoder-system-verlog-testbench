`include "enivornment.sv"
program test(intf vif);
  enivornment env;
  initial begin
    env=new(vif);
    env.age.gen.N=5;
    env.main();
  end
endprogram
