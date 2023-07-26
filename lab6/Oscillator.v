`timescale 1ns / 1ps

module Oscillator(
    input Enable,
    output Feedback
    );
	 
	 wire w;
	 
	 and T1(w, Enable, Feedback);
	 not #5 T2(Feedback, w);


endmodule
