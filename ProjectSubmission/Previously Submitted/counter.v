// Filename: counter.v
module counter (
    input clk,        // Clock input
    input reset,      // Reset input
    output [3:0] out  // 4-bit output
);

reg [3:0] count;

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;   // Reset the counter to 0
    else
        count <= count + 1; // Increment the counter
end

assign out = count; // Assign the count value to the output

endmodule
