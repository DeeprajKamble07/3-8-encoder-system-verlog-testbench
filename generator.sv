class generator;
  transaction trans;
  mailbox gen2drv;
  int N;
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  task main();
    repeat(N)
      begin
        trans=new();
        trans.randomize();
        trans.display("GEN");
        gen2drv.put(trans);
      end
  endtask
endclass
