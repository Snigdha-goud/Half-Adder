module half_adder(
    input a, 
    input b, 
    output sum, 
    output carry
);
    assign sum = a ^ b;     // XOR gate for Sum
    assign carry = a & b;   // AND gate for Carry
endmodule
