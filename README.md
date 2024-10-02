# Parabank Test Suite

Web elements testing for the Parabank website using Robot Framework.

## Table of Contents

- [Introduction](#introduction)
- [Website to be Tested](#website-to-be-tested)
- [Framework Used](#framework-used)
- [Libraries Used](#libraries-used)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project is focused on testing various web elements of the Parabank website using Robot Framework. The test suite is designed to ensure the functionality and reliability of the web application.

## Website to be Tested

The website to be tested is [Parabank](http://parabank.parasoft.com/parabank/index.htm).

## Framework Used

The framework used for this project is [Robot Framework](https://robotframework.org/), a generic open-source automation framework for acceptance testing, acceptance test-driven development (ATDD), and robotic process automation (RPA).

## Libraries Used

The following libraries are used in this project:

- **SeleniumLibrary**: For web testing with Selenium.
- **Collections**: For handling collections.
- **BuiltIn**: Standard library for Robot Framework.
- **CryptoLibrary**: For cryptographic operations.

## Installation

To get started with this project, you need to have Python and pip installed on your machine. Follow the steps below to set up the environment:

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/Parabank-Test-Suite.git
    cd Parabank-Test-Suite
    ```

2. Create a virtual environment:
    ```sh
    python -m venv venv
    ```

3. Activate the virtual environment:
    - On Windows:
        ```sh
        venv\Scripts\activate
        ```
    - On macOS/Linux:
        ```sh
        source venv/bin/activate
        ```

4. Install the required dependencies:
    ```sh
    pip install -r requirements.txt
    ```

5.  Setup  CryptoLibrary Environment
    Crypto - https://pypi.org/project/robotframework-crypto/
## Usage

To run the test suite, use the following command:
```sh
robot --outputdir ../../Results tests/