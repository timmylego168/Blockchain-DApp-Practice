# 區塊鏈 DApp 整合開發實踐 (Blockchain DApp Practice)

本專案是一個整合性的 Web3 實作實驗室，旨在透過智能合約與前端介面的開發，模擬金融場景中的資產管理與安全權限控管流程。

## 🛠️ 技術棧 (Tech Stack)
* **Smart Contracts:** Solidity (^0.8.0 / ^0.8.26)
* **Frontend:** HTML5, JavaScript (ES6+ / Async-Await)
* **Web3 Library:** Ethers.js (v5.7.2)
* **Tooling:** Remix IDE, MetaMask

## 🏗️ 核心模組與功能說明

### 1. 資產安全與權限設計 (Smart Contracts)
* **Delegate.sol / Donate.sol**: 實作 Access Control 機制。透過 `constructor` 指定管理員位址，並運用 `require(msg.sender == owner)` 確保提款權限，模擬金融機構的資金控管邏輯。
* **counter.sol**: 實作鏈上數據持久化儲存，並開發邏輯運算函式（如 mpy 乘法功能），展現對 EVM 狀態變數操作的掌握。

### 2. 全端 Web3 交互整合 (Frontend)
* **drawManage.html / HelloDapp.html**: 利用 Ethers.js 串接 MetaMask 錢包。實作非同步（Async）獲取合約餘額與發送交易，並具備自動偵測連線帳號權限以切換 UI 顯示之邏輯。
* **eventListening.html**: 實作鏈上事件監聽機制（Event Listening），即時捕捉 `Received` 事件並反饋至使用者介面，優化去中心化應用的互動體驗。

## 📂 資料夾結構
* `/contracts`: 存放所有智能合約原始碼 (.sol)。
* `/frontend`: 存放 DApp 前端互動介面 (.html)。

## 🚀 快速開始
1. 使用 Remix IDE 部署 `/contracts` 下的合約至測試網路。
2. 將合約地址更新至 `/frontend` 下對應 HTML 檔案的 `contractAddress` 變數。
3. 透過瀏覽器開啟 HTML 檔案並連接 MetaMask 即可進行互動。
