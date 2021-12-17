/* Example of 4-bit BinaryAdder
**for 1-bit FUllAdder: 
    Sum  = A ^ B ^ Cin;
    Cout = A.B || Cin(A^B);
    *OR* 
       HalfAdder--HalfAdder---Sum
                |-|-------OR Cout
                  |-------|

**for 1-bit HalfAdder: 
    Sum  = A ^ B;
    Cout = A.B;

**for n-bit Ripple Carry Adder
    Cascade FA's with Cout1 ->Cin2 ...etc
    Disadvantage: 
        1. Overflow
        2. Propagation delay as the time needed to produce the correct output 
           depends on the no.Of data bits
    Instead, we can use carry-look ahead Adder
    See: https://technobyte.org/carry-look-ahead-adder-working-circuit-truth-table/#:~:text=What%20is%20a%20Carry%20Look%20Ahead%20Adder%3F%20A,uses%20the%20concepts%20of%20generating%20and%20propagating%20carries.

*/
module fullAdder(output reg Cout, 
    output reg [3:0] Sum,
    input [3:0] A, 
    input [3:0] B, 
    input Cin
    );
//Outputs inside always must be reg
//Outputs at continious assignment statement must be wires
always @(*) begin
//What will be implemented? Parallel or carryOverhead adder?    
{Cout, Sum} = A + B + Cin;
end

endmodule

//Notes about reg vs wire
/*
Register (reg) type holds the value until the next value is driven by the clock pulse
 onto it and is always under initial or always block. It is used to apply a stimulus to the input.

Wires (wire) are declared for the passive variables;
Their values don't change and can't be assigned them inside, always an initial block.
*/
