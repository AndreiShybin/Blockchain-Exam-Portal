
pragma solidity ^0.4.24;

contract receiveether{

	uint ether_balance = 0;

	event Receive(uint value);

	function receiveamount () public payable {
		
		Receive(msg.value);

		ether_balance = ether_balance + msg.value;
	}
}
