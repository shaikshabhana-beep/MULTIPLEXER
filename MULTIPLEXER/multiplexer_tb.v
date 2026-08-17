```verilog
`timescale 1ns/1ps

module multiplexer_tb;

    reg I0, I1, I2, I3;
    reg S1, S0;
    wire Y;

    multiplexer uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",
                 $time, S1, S0, I0, I1, I2, I3, Y);

        // Input values
        I0 = 1'b0;
        I1 = 1'b1;
        I2 = 1'b0;
        I3 = 1'b1;

        // Select I0
        S1 = 1'b0;
        S0 = 1'b0;
        #10;

        // Select I1
        S1 = 1'b0;
        S0 = 1'b1;
        #10;

        // Select I2
        S1 = 1'b1;
        S0 = 1'b0;
        #10;

        // Select I3
        S1 = 1'b1;
        S0 = 1'b1;
        #10;

        $finish;
    end

endmodule
```
