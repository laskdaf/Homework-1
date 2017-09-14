pragma solidity ^0.4.13;


contract greeter {
	/* Add one variable to hold our greeting */
	uint x;
	string [] greetings;
	uint [] greetingCounts;
	uint count;

	function greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greetings = new string [](3);
		greetingCounts = new uint[](3);

		if (bytes(_greeting).length == 0) {
		    greetings[0] = "Greetings";
		} else {
		    greetings[0] = _greeting;
		}
		greetings[1] = "Hello World!";
		greetings[2] = "B@B #1";

		greetingCounts[0] = 0;
		greetingCounts[1] = 0;
		greetingCounts[2] = 0;

		count = 0;
	}

    // Returns a tuple of the # of times a specific greeting has been called as well as that greeting
	function greetCycle() returns (uint, string)  { // Removed constant delimeter to increment the counter
		/* Write one line of code to allow the contract to return our greeting */
		uint index = count % 3;
		greetingCounts[index] = greetingCounts[index] + 1;
		count += 1;
		return (greetingCounts[index], greetings[index]);
	}

	function() { x = 1; }

}
