# Amazon Automation Test

**Amazon Automation Test** is an automated test suite for the Amazon website built using Robot Framework and SeleniumLibrary. It demonstrates how to automate key user workflows such as product search, selection, and checkout.

## Table of Contents

- [Introduction](#introduction)
- [TestCase](#testcase)
- [Requirements](#requirements)
- [Resource](#resource)
- [Installation](#installation)


## Introduction

This project automates testing on the Amazon website using Robot Framework. It leverages SeleniumLibrary to interact with web browsers and uses dynamic XPath locators to handle frequent UI changes. The tests simulate real user interactions, such as searching for a product and navigating the checkout process.

## Test Case
The test suite includes the following test cases:
- **Should be able to login:**  
  Verifies that the user can successfully log in using valid credentials.

- **User can search for product:**  
  Tests the search functionality by entering a product keyword (e.g., "Keychron") and verifying that search results are displayed.

- **User can search and view product:**  
  Extends the search test by selecting a product from the search results to view its details.

- **User can add product to cart:**  
  Searches for a product, selects it, and then adds it to the shopping cart.

- **User must sign in to checkout:**  
  Validates that the user is prompted to sign in during the checkout process after adding a product to the cart.

## Requirements
- Python 3.8 or higher
- [Robot Framework](https://robotframework.org)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary)
- A compatible WebDriver (e.g., ChromeDriver for Chrome, Edge WebDriver, etc.)

## Resource
The **Resources** is a critical component of the project. It contains Robot Framework resource files that define reusable keywords and common functions used across multiple test cases. Key files include:

- **AmazonApp.robot:**  
  Contains keywords that encapsulate interactions with the Amazon application. Examples include logging in, searching for products, selecting products from search results, adding products to the cart, and initiating checkout.

- **Common.robot:**  
  Houses shared utility keywords that are used throughout the test suites. This file helps standardize common operations (such as opening the browser, navigating to URLs, and basic validations), ensuring consistency and easier maintenance.

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


