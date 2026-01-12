// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 public count;
    // (1) 新增 public 狀態變數 resuit
    uint256 public resuit; 

    function get() public view returns (uint256) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public {
        count -= 1;
    }

    // (1) 新增 mpy 函式，計算 $a \times b$ 並儲存於 resuit
    function mpy(uint256 a, uint256 b) public {
        resuit = a * b;
    }
}