`include "fullAdder.v"
`timescale 1 ns / 100 ps 

module testBench;

reg [3:0] a, b;
wire [3:0] sum;
wire cout;
reg cin;

integer i;
fullAdder Add(cout, sum, a,b,cin);

initial begin
    $monitor("A = %b, B = %b, Sum = %b, Cout = %b", a,b, sum, cout);
    b = 4'b0000;
    a = 4'b0111;
    cin = 0;
    for(i = 4'b1111; i > 4'b0100; i =  i - 1)begin 
        #1 a = i;
           b = b + 1; 
    end
end
endmodule