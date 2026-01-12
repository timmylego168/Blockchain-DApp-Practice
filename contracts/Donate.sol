// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address payable public owner;

    // 構造函數：設定合約擁有者
    constructor() {
        owner = payable(msg.sender);
    }

    // 讓合約可以收錢
    receive() external payable {}

    // 顯示 Owner 錢包餘額
    function getOwnerBalance() public view returns (uint256) {
        return owner.balance;
    }

    // 顯示目前合約內部的餘額
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // 提款功能
    function withdraw() public {
        // 檢查呼叫者是否為 owner
        require(msg.sender == owner, "Only owner can withdraw");
        
        uint256 amount = address(this).balance;
        require(amount > 0, "No balance to withdraw");
        
        // 轉帳給 owner
        owner.transfer(amount);
    }
}