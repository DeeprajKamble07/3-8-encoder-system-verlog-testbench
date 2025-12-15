class driver;
  transaction trans;
  mailbox gen2drv;
  virtual intf.drv vif;
  function new(virtual intf.drv vif,mailbox gen2drv);
    this.vif=vif;
    this.gen2drv=gen2drv;
  endfunction
  task main();
    forever 
      begin
        gen2drv.get(trans);
         @(vif.drvcb);
        vif.drvcb.en<=trans.en;
        vif.drvcb.a<=trans.a;
        trans.display("DRV");
        #2;
      end
  endtask
endclass
