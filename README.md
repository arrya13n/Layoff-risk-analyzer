# 📊 Layoff Risk Analyzer: End-to-End Data Pipeline
---

## 📝 Project Overview
This project is an executive-level diagnostic tool designed to analyze global employment shifts. It transforms raw, multi-source data into an interactive command center, providing deep-dives into industry vulnerabilities and market behaviors. 🌏

---

## ⚙️ The Data Engineering Pipeline

### 1. Data Scraping & Collection 🕸️
* **Automated Scraper:** Built a resilient **Selenium** and **BeautifulSoup** script to track real-time 2026 data from Peerlist.
* **Dataset Integration:** Consolidated historical data with live-scraped records into a "single csv file" (4,200+ records).

### 2. Transformation & Feature Engineering 🛠️
* **Data Cleaning:** Standardized inconsistent industry names and corrected geographic labels using **Pandas**.
* **Risk Scoring:** Engineered a **Risk_Level** metric based on 33rd and 66th percentile thresholds of layoff volumes.
* **SQL Analysis:** Developed complex queries to define **Market Behaviors**, identifying "Structural Resets" where average layoffs exceed 500.

---

## 🚀 Key Dashboard Features

### Behavioral Matrix 
A specialized scatter plot classifying industries by layoff frequency and volume to identify long-term market shifts.

### Dynamic Peak Detection 
A temporal chart that automatically highlights the **"Peak Impact"** point using `WINDOW_MAX` logic, ensuring critical data surges stay visible during filtering.

### High-Contrast Global Mapping 
A streamlined, single-color map designed for maximum clarity, emphasizing major impact zones without visual noise.

---

## How to Explore the Data

1. **Geographic Filtering:** Click the **Global Map** to instantly update the entire dashboard for localized insights.
2. **Sector Health:** Use the **Industry vs. Risk Level** chart to find which sectors are most vulnerable regardless of their size.
3. **Trend Analysis:** View the **Max Quarterly Damage** to identify the specific periods of highest historical volatility.
4. **Leaderboard:** Track the specific enterprises driving market changes via the **Top 10 List**.

---

## 📈 Project Impact
This project bridges the gap between raw data and strategic decision-making. By documenting the entire journey from **Python Scraping** to **SQL Analytics** to **Visual Intelligence**, it provides a powerful tool for economic and HR analysis. 💡

---

### ✨ Documentation & Resources
* **Full Methodology:** View the [Project Notion Page](https://www.notion.so/2e540ad7e1eb80939457cdd2cdee6681?v=2e540ad7e1eb80038f2f000c3f1531f0&source=copy_link) for step-by-step progress.
