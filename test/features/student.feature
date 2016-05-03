Feature: Filter page

  Scenario: Search case
    When I browse to the "/"
    When I enter "Gra" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Gray"
    Then I should see "Gray" in "firstName" column in row "1" of "student.table" table
    When I enter "18" into "input.search" field
    Then the css element "td:nth-of-type(2)" should contain the text "Bridges"
    Then I should see "18" in "age" column in row "1" of "student.table" table
    When I enter "+1 (932) 408-2012" into "input.search" field
    Then the css element "td:nth-of-type(4)" should contain the text "candace.gordon@undefined.name"
    Then I should see "Candace" in "firstName" column in row "1" of "student.table" table

  Scenario: FirstName search case
    When I browse to the "/"
    When I enter "go" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Good"
    Then I should see "+1 (820) 450-3124" in "phone" column in row "1" of "student.table" table
    Then I should see "Burnett" in "lastName" column in row "1" of "student.table" table
    When I enter "go" into "input.first" field
    Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
    Then I should see "good.burnett@undefined.tv" in "email" column in row "1" of "student.table" table

  Scenario: LastName search case
    When I browse to the "/"
    When I enter "ro" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Rose"
    Then I should see "21" in "age" column in row "1" of "student.table" table
    Then I should see "Gray" in "firstName" column in row "1" of "student.table" table
    When I enter "br" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Bridges"
    Then I should see "warner.bridges@undefined.biz" in "email" column in row "1" of "student.table" table

  Scenario: Age search case
    When I browse to the "/"
    Then I enter "2" into "input.age" field
    Then the css element "td:nth-of-type(3)" should contain the text "24"
    Then I should see "Bauer" in "firstName" column in row "1" of "student.table" table
    Then I should see "Spencer" in "lastName" column in row "1" of "student.table" table
    Then I should see "Ryan" in "lastName" column in row "3" of "student.table" table

  Scenario: Email search case
    When I browse to the "/"
    When I enter "austin" into "input.email" field
    Then the css element "td:nth-of-type(2)" should contain the text "Harvey"
    Then I should see "35" in "age" column in row "1" of "student.table" table