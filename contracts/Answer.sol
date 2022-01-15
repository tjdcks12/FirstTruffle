// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Answer {
  uint256 answer;

  function setAnswer(uint _answer) public {
    answer = _answer;
  }

  function getAnswer() public view returns (uint) {
    return answer;
  }
}
