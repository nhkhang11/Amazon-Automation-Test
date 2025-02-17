# Amazon Automation Test

**Amazon Automation Test** is an automated test suite for the Amazon website built using Robot Framework and SeleniumLibrary. It demonstrates how to automate key user workflows such as product search, selection, and checkout.

## Table of Contents

- [Introduction](#introduction)
- [Project Structure](#project-structure)
- [Requirements](#requirements)
- [Installation](#installation)
- [Running the Tests](#running-the-tests)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

This project automates testing on the Amazon website using Robot Framework. It leverages SeleniumLibrary to interact with web browsers and uses dynamic XPath locators to handle frequent UI changes. The tests simulate real user interactions, such as searching for a product and navigating the checkout process.

## Project Structure
Amazon-Automation-Test/ ├── Tests/ # Robot Framework test cases (.robot files) ├── Resources/ # Resource files containing reusable keywords and variables ├── Libraries/ # Custom Python libraries (if any) ├── Variables/ # Python variable files └── README.md # This file

## Requirements
- Python 3.8 or higher
- [Robot Framework](https://robotframework.org)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary)
- A compatible WebDriver (e.g., ChromeDriver for Chrome, Edge WebDriver, etc.)

## Installation
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/nhkhang11/Amazon-Automation-Test.git
   cd Amazon-Automation-Test
2. Set Up a Virtual Environment (optional but recommended):
   ```bash  
   python -m venv venv
   source venv/bin/activate   # On Windows: venv\Scripts\activate
3. Install Dependencies:
   ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary
## Running the tests


