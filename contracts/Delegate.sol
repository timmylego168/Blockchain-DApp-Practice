// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Delegate { // (1) 檔名改為 Delegate.sol
    address payable public owner;

    // 修改構造函數：部署時指定首腦的地址
    constructor(address payable _leaderAddress) {
        owner = _leaderAddress; // 設定只有首腦是 Owner
    }

    // 讓合約可以收錢
    receive() external payable {}

    function getOwnerBalance() public view returns (uint256) {
        return owner.balance;
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // 提款功能
    function withdraw() public {
        // (1) 檢查訊息發送者是否為首腦
        require(msg.sender == owner, "Only owner can withdraw"); 
        
        uint256 amount = address(this).balance; 
        require(amount > 0, "No balance to withdraw");
        
        owner.transfer(amount);
    }
}