
pragma solidity ^0.4.24;

contract sendether {

	

	

		function sendetheramount (address _receivercandidate) public payable 
		{

		// Now, try to access the marks obtained from the other contract.
			_receivercandidate.transfer(msg.value);

		// We have to call an event for accepting the ether account

		}

	
}

