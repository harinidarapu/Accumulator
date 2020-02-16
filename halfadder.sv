// designing half adder.

module halfadder (a,b,sum,carry);
	input a,b;
	output sum,carry;
logic w;
xor (sum,a,b);
and (carry,a,b);


endmodule