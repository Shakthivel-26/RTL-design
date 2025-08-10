module vending_machine_df (
    input clk,
    input reset,
    input coin5,    // 5 Rupee coin
    input coin10,   // 10 Rupee coin
    output reg dispense
);

    // State encoding (amount inserted)
    parameter S0 = 2'b00, // 0
              S5 = 2'b01, // 5
              S10 = 2'b10,// 10
              S15 = 2'b11;// >=15

    reg [1:0] state, next_state;

    // State transition
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (state)
            S0:  if (coin5) next_state = S5;
                 else if (coin10) next_state = S10;
                 else next_state = S0;

            S5:  if (coin5) next_state = S10;
                 else if (coin10) next_state = S15;
                 else next_state = S5;

            S10: if (coin5) next_state = S15;
                 else if (coin10) next_state = S15; // Overpayment treated same
                 else next_state = S10;

            S15: next_state = S0; // After dispensing, go to idle
            default: next_state = S0;
        endcase
    end

    // Output logic (Mealy FSM - depends on state & input)
    always @(*) begin
        dispense = ( (state == S10 && coin5) || 
                     (state == S5  && coin10) || 
                     (state == S15) ) ? 1 : 0;
    end

endmodule
