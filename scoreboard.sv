class scoreboard;
  transaction trans;
  mailbox mon2scb;
  bit [2:0] expected;
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
  endfunction
  task main();
    forever begin
      mon2scb.get(trans);
      trans.display("SCB");
      
      if(trans.en)
        begin
        case(trans.a)
        8'b00000001: expected=3'b000;
        8'b00000010: expected=3'b001;
        8'b00000100: expected=3'b010;
        8'b00001000: expected=3'b011;
        8'b00010000: expected=3'b100;
        8'b00100000: expected=3'b101;
        8'b01000000: expected=3'b110;
        8'b10000000: expected=3'b111;
        endcase
      
          if(trans.y==expected)
          $display("PASS");
          else
            $display("FAIL");
        end
      else
        begin
        $display("INFO enableis 0");
        end
    end
  endtask
endclass
