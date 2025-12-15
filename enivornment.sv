`include "agent.sv"
`include "scoreboard.sv"
class enivornment;
  agent age;
  scoreboard scb;
  mailbox mon2scb;
  virtual intf vif;
  function new(virtual intf vif);
    mon2scb=new();
    age=new(vif,mon2scb);
    scb=new(mon2scb);
  endfunction
  task main();
    fork
      age.main();
      scb.main();
    join
  endtask
endclass
