`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class agent;
  mailbox gen2drv;
  generator gen;
  driver drv;
  monitor mon;
  virtual intf vif;
  function new(virtual intf vif, mailbox mon2scb);
    gen2drv=new();
    gen=new(gen2drv);
    drv=new(vif,gen2drv);
    mon=new(vif,mon2scb);
  endfunction
  task main();
    fork
      gen.main();
      drv.main();
      mon.main();
    join
  endtask
endclass
