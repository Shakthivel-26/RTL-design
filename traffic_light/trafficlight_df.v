module traffic_light_df (
    input clk,
    input reset,
    output reg [2:0] light // {Red, Yellow, Green}
);

    // State encoding
    parameter RED = 2'b00,
              GREEN = 2'b01,
              YELLOW = 2'b10;

    reg [1:0] state, next_state;

    // State transition (Moore FSM)
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= RED;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (state)
            RED:    next_state = GREEN;
            GREEN:  next_state = YELLOW;
            YELLOW: next_state = RED;
            default: next_state = RED;
        endcase
    end

    // Output logic (Dataflow style using state directly)
    always @(*) begin
        light = (state == RED)    ? 3'b100 :
                (state == YELLOW) ? 3'b010 :
                                     3'b001; // GREEN
    end

endmodule
