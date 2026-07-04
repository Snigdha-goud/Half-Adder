`timescale 1ns / 1ps

module half_adder_tb;
    // Inputs (reg) and Outputs (wire)
    reg a;
    reg b;
    wire sum;
    wire carry;

    // Instantiate the Half Adder module
    half_adder uut (
        .a(a), 
        .b(b), 
        .sum(sum), 
        .carry(carry)
    );

    initial begin
        // Apply all possible input combinations
        $dumpfile("dump.vcd");
      $dumpvars(1, half_adder_tb);
        a = 0; b = 0; #10; // Expected: sum=0, carry=0
        a = 0; b = 1; #10; // Expected: sum=1, carry=0
        a = 1; b = 0; #10; // Expected: sum=1, carry=0
        a = 1; b = 1; #10; // Expected: sum=0, carry=1
        
        $finish; // End the simulation
    end
endmodule
