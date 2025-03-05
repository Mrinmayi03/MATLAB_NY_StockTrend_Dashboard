# MATLAB_NY_StockTrend_Dashboard

# Interactive Financial Fundamentals Dashboard

## Overview

The **Interactive Financial Fundamentals Dashboard** is a MATLAB App Designer project that enables users to explore and visualize key financial metrics over time for various companies. Using a dataset of financial fundamentals (including metrics such as Net Income, Total Revenue, Total Assets, Earnings Per Share, and Current Ratio), this dashboard provides an interactive experience where users can select a company (by ticker symbol) and a specific financial metric to dynamically update a time-series plot.

This project highlights advanced data handling, dynamic visualization, and interactive UI design in MATLAB—skills that are highly relevant in data science and engineering roles.

## Features

- **Interactive Data Visualization:**  
  Dynamically plots financial metrics over time based on user-selected ticker and metric.

- **User-Friendly Interface:**  
  Utilizes MATLAB App Designer components (dropdowns, UIAxes) for a clean and intuitive interface.

- **Robust Data Processing:**  
  Reads and preprocesses CSV data, renames columns for consistency, and converts date strings to MATLAB's `datetime` format.

- **Real-Time Plot Updates:**  
  Callback functions ensure that any change in the dropdown selections immediately refreshes the plot.

### Prerequisites

- MATLAB R2019b or later (with App Designer support)
- A valid MATLAB license
- The `fundamentals.csv` dataset (included in this repository)

### Steps to Get Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Mrinmayi03/MATLAB_NY_StockTrend_Dashboard.git
