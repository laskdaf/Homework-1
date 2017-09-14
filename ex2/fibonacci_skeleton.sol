pragma solidity ^0.4.16;


contract Fibonacci {
    uint x;

    mapping(uint => uint) fib;
    uint lastfib;

    function Fibonacci () {
        fib[1] = 1;
        fib[2] = 1;
        lastfib = 2;
    }

    event ReturnFibonacci(uint);
    // event SavedValue(string);
	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		if (fib[position] != 0) {
		    ReturnFibonacci(fib[position]);
		  //  SavedValue("This value has already been calculated.");
		    return fib[position];
		}

		uint a = fib[lastfib - 1];
		uint b = fib[lastfib];

		uint count = lastfib;
		uint temp = 0;

		while (count < position) {
		    temp = a + b;
		    a = b;
		    b = temp;
		    count += 1;
		    fib[count] = b;
		}
		lastfib = count;
		ReturnFibonacci(fib[position]);
		return fib[position];
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() { x = 1; }
}
