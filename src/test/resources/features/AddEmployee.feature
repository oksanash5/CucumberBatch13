Feature: This feature is  going to add employees in HRMS application
  Background:
    When user enters valid admin username and password
    And user clicks on login button
    Then admin user is successfully logged in
    When user clicks on PIM option
    And user clicks on add employee option

    @smokeA
  Scenario: Add an employee
    When user enters firstName , middleName and lastName
    And user clicks on save button
    Then employee added successfully

    @test
  Scenario: Adding one employee from cucumber feature file
      When user enters "oman" , "tagai" and "gihid"
      And user clicks on save button
      Then employee added successfully


  @dataprovider
  Scenario Outline: Adding multiple employees from cucumber feature file
    When user enter "<firstName>" , "<middleName>" and "<lastName>"
    And user clicks on save button
    Then employee added successfully
    Examples:
      |firstName|middleName|lastName|
      |romid    |MS        |zarif   |
      |rokan    |MS        |elisa   |
      |mama     |tarindi   |jamu    |

    @datatable
    Scenario: Adding multiple employees using data table
      When user adds multiple employees and verify they are added
      |firstName|middleName|lastName|
      |khryswana|MS|Jaman    |
      |zamis    |MS|Gaukhar  |
      |tamir    |MS|microsoft|

  @excel
  Scenario: Adding employees from excel file
    When user adds multiple employees from excel file using "employeeData" sheet and verify the employee has added





