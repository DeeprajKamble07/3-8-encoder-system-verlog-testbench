class monitor;
  transaction trans;
  mailbox mon2scb;
  virtual intf.mon vif;
  function new(virtual intf.mon vif, mailbox mon2scb);
    this.vif=vif;
    this.mon2scb=mon2scb;
  endfunction
  task main();
    forever 
      begin
        @(vif.moncb);
        trans=new();
        #1;
        trans.en=vif.moncb.en;
        trans.a=vif.moncb.a;
        trans.y=vif.moncb.y;
        trans.display("MON");
        mon2scb.put(trans);
      end
  endtask
endclass
