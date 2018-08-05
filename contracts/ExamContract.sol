pragma solidity ^0.4.24;

contract ExamContract{

	struct CandidateAccount{

		uint paper_code;  

		string candidate_name;

		uint marks_obtained;

		uint[] theresponses;

		uint ether_balance;

	}

	uint private papercodedummy;

	uint public totalnoofcandidates = 0;

	uint public paperlength = 10; 

	uint[] zeroarray;


	function initarray() constant public returns(uint[]) {

		zeroarray.push(0);

		return zeroarray;
	}


	mapping(uint => CandidateAccount) public candidateaccountgetter;

	mapping(address => bool) public testcandidates;  

	function addatestcandidate (string _name) private {

		candidateaccountgetter[papercodedummy] = CandidateAccount(papercodedummy, _name, 0, zeroarray, 0);

		totalnoofcandidates++;
	}


	function recordresponses (uint _theresponse) public {

		require(!testcandidates[msg.sender]);

		for(uint i = 0 ; i < paperlength; i++)
		{
			testcandidates[msg.sender] = true;

			candidateaccountgetter[papercodedummy].theresponses[i] = _theresponse;

		}
	
	}

	uint[] answerkeys = new uint[](10);

	function setquestionpaper() private{

		for(uint i = 0; i < 10; i++)
		{
			answerkeys.push((uint)(i + 25)/6);

			// Random answer key allotment.
		}


	}

	function checkmarks(uint _papercodedummy) public {

		for(uint i = 0; i < paperlength; i++)
		{
			if(answerkeys[i] == candidateaccountgetter[_papercodedummy].theresponses[i])
			{
				candidateaccountgetter[_papercodedummy].marks_obtained++;

				uint marksdummy = candidateaccountgetter[_papercodedummy].marks_obtained;
			}
		}

		
	}

	constructor () public{

		addatestcandidate("John Doe");

		addatestcandidate("Lil John");

		addatestcandidate("Jack The Ripper");

		addatestcandidate("Joe Danver");

	}

}

// Deployement successful 
   


