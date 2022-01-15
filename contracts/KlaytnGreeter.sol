pragma solidity 0.5.6;

contract Mortal {
    address payable owner;

    constructor () public { owner = msg.sender; }

    function kill() public payable {
        if(msg.sender == owner) {
            selfdestruct(owner);
        }
    }

}

contract KlaytnGreeter is Mortal {
    string greeting;

    constructor (string memory _greeting) public  {
        greeting = _greeting;
    }
    function greet() public view returns (string memory) {
        return greeting;
    }
}