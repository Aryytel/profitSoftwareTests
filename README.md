# profitSoftwareTests

Test task for Profit Software summer internship.

## What is done

Created a Robot Framework script for testing DuckDuckGo website 
This project fulfills the following requirements:
* Written using Gherkin style
* Using Selenium2Library (java)
* With Maven support and dependencies 



## How to use

In my implementation I ran the tests using Maven controls in IntelliJ IDEA.



The following is the IntelliJ setup, for if it is necessary. 

Configuration:
* Add Run/Debug configuration
* Add Maven Template
    * Select working directory
    * Add command line input: robotframework:run
* Add Maven Run Goal in Before Launch option
    * Select working directory
    * Add command line input: robotframework:run

Running tests:

* Open Maven sidebar
* Select Lifecycle
* Run "test"



## Test suites

Here are the descriptions for the created tests.

### searchTests

* Search in DuckDuckGo with correct spelling
* Search in DuckDuckGo with incorrect spelling
### pageLinkTests

* Open sidebar
* Click embedded link "Help Spread DuckDuckGO"
