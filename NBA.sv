//SV Topics : Procedural assignment
//Problem statement : creating a shift register using procedural assignment

//======================================

module cc(out, clock, reset, in);
  input clock, reset, in;
  output reg out;  //using in procedural assignment so should be reg
  reg a, b, c;
  
  always@(posedge clock)   //at posedge of clock to create FF
    begin
      if(reset)	
        begin
          a <= 0;
          b <= 0;
          c <= 0;
          out  <= 0;
        end
      else begin
        a <= in;
        b <= a;
        c <= b;
        out <= c;
      end
    end
endmodule
