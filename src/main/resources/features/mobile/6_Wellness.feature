@mobile
Feature: Wellness_Manager_Home


  @wellnessPageAppearOnMondayOnHomePage
  Scenario: ENG-1773 Home | Wellness | To check user is able to see wellness page appear on monday on home page when he log in for the day

    Given user is logged in as another manager
    And wellness fetaure should be enabled
    Then user should be able to see wellness page appear on monday on home page when he log in for the day



  @ClickOnCompleteMyCheckInBtn
  Scenario: ENG-1774 Home | Wellness | To check user is able to click on "Complete my check -in" button
    Given user is logged in as manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    Then user should be able to click on "Complete my check -in" button

  @wellnessPopupWindow
  Scenario: ENG-1776 Home | Wellness | To check user is able to see popup window for wellness chek in after login
    Given user is logged in as manager
    When user see wellness introduction screen , User click on "X" button
    Then User should be able to see popup window for wellness check in


  @AmazingInFlowOptionOfWellness
  Scenario: ENG- 1777 Home | Wellness | To check the user is able to click on "Amazing,In flow " and
  it should reflect on the home page at the notification field
    Given user is logged in as another manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Amazing ,in flow"  button
    Then user should be able to click on "Amazing ,in flow"  button and it should reflect on home page at notification field

  @GreatHighEnergyOptionOfWellness
  Scenario:ENG- 1778 Home | Wellness | To check the user is able to click on "Great , High Energy" and it should reflect on the home page at the notification field
    Given user is logged in as manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Great ,High Energy" button
    Then user should be able to click on "Great , High Energy" button and it should reflect on home page at notification field

  @GoodSomeStressOptionOfWellness
  Scenario:ENG- 1779 Home | Wellness | To check the user is able to click on "Good , Some stress" and it should reflect on the home page at the notification field
    Given user is logged in as manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Good ,Some stress" button
    Then user should be able to click on "Good ,Some stress" button and it should reflect on home page at notification field


  @alrigthDifficultyFocusingOptionOfWellness
  Scenario: ENG- 1780 Home | Wellness | To check the user is able to click on "Alright , difficulty focusing" and it should reflect on the home page at the notification field
    Given user is logged in as manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Alright , difficulty focusing" button
    Then user should be able to click on "Alright , difficulty focusing"  button and it should reflect on home page at notification field

  @LowUnabletoFocusOptionOfWellness
  Scenario: ENG- 1781 Home | Wellness | To check the user is able to click on "Low , Unable to focus" and
  it should reflect on the home page at the notification field
    Given user is logged in as another manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Low,Unable to focus" button
    Then user should be able to click on "Low , Unable to focus"  button and it should reflect on home page at notification field


  @ExhaustesOptionOfWellness
  Scenario:ENG- 1782 Home | Wellness | To check the user is able to click on "Exhausted, Close to burn out" and it should reflect on the home page at the notification field
    Given user is logged in as manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Exhausted, Close to burn out" button
    Then user should be able to click on "Exhausted, Close to burn out" button and it should reflect on home page at notification field

  @CheckInLaterButtonOnWellness
  Scenario: ENG-1783 Home | Wellness | To check the user is able to click on "Check-in later " and it
  should reflect on the home page at the notification field for check in for week
    Given user is logged in as manager
    And user should be on wellness introduction screen
    When user click on "Complete my check -in" button
    And user click on "Check-in later" button
    Then user should be able to click on "Check-in later" and it should reflect on the home page at the notification field for check in for week

  @clickOnXbutton
  Scenario: ENG-1775 Home | Wellness | To check user is able to click on "X" button on introduce
  wellness page and it will redirected to home page
    Given user is logged in as another manager
    When user see wellness introduction screen , User click on "X" button
    Then user should be able to click on "X" button and it should come on home page wellness check in page