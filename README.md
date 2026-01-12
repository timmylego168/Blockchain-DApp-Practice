# 🚀 區塊鏈 DApp 整合開發實踐 (Blockchain DApp Practice)

本專案集結了多項去中心化應用程式 (DApp) 的實作練習，涵蓋從 **Solidity 智能合約開發**、**安全性權限設計** 到 **Ethers.js 前端互動整合** 的完整流程。

---

## 🛠 技術棧 (Tech Stack)
* **Smart Contracts:** Solidity (^0.8.0)
* **Frontend:** HTML5, CSS3, JavaScript (ES6+)
* **Web3 Library:** Ethers.js (v5.7.2)
* **Wallet:** MetaMask Integration

---

## 🏗 核心模組分析

### 1. 智能合約與資產安全性控制 (Smart Contracts)
針對金融場景最重視的安全性與權限，實作了以下機制：
* **權限控管 (`Delegate.sol`)**：透過 `constructor` 指定首腦地址，並利用 `require` 斷言實作嚴格的「僅限管理員」提款邏輯。
* **資金管理 (`Donate.sol`)**：整合 `receive()` 函數處理鏈上原生代幣接收，並實作帳務查詢介面。
* **運算邏輯 (`counter.sol`)**：實作狀態變數持久化儲存與基礎算術運算，模擬鏈上數據處理流程。

### 2. Web3 前端整合與監聽 (Frontend Integration)
將區塊鏈底層邏輯轉化為使用者友善的介面：
* **管理端儀表板 (`drawManage.html`)**：實作非同步調用 (Async/Await) 獲取合約與錢包餘額，並動態控制管理權限按鈕。
* **即時事件監聽 (`eventListening.html`)**：運用 `contract.on` 監聽鏈上 `Received` 事件，達成去中心化應用程式的即時 UI 反饋。
* **全端互動示範 (`HelloDapp.html`)**：完整實作 MetaMask 連接、交易發送 (Transaction) 與狀態讀取 (Call)。

---

## 📂 目錄結構
├── /contracts        # 智能合約原始碼 (.sol)
├── /frontend         # DApp 前端介面 (.html)
└── README.md         # 專案說明文件
