@mobile
Feature: Maneger_Team

  @UserAbleToEnterTeamName
  Scenario Outline: ENG 766 Team | add | To check whether user is able to enter team name in text
    Given user is logged in as manager
    And user should be on team page
    And user should be on add team page
    When user click on enter a team name<Team> text box
    Then user should be  able to add <Team> name
    Examples:
      | Team         |
      | "OnloopTeam" |


  @userDirectedToAddColleguePage
  Scenario: ENG 499 To check user is able to create team using + icon on the right top corner
    Given user is logged in as manager
    And user should be on home page
    When User tap on "+" Icon
    Then Page should directed to Add colleague page

  @ToModifyTeamName
  Scenario Outline: ENG 504 To Check manager is able to modify the team name
    Given user is logged in as another manager
    And user should be on team page
    And user should be on add team page
    When user click on enter a team name<Team> text box
    Then user should be  able to add <Team> name
    And User should be on team name as <Team>
    When User click on setting icon
    And User click on team name text box
    And User write name as "Learn"
    And User click on back button icon
    And User click on Save option on confirmation screen
    Then Team name should be updated
    Examples:
      | Team         |
      | "Onloop-two" |


  @deleteCreatedTeam
  Scenario Outline: ENG-503 To check manager is able to delete the team
    Given user is logged in as manager
    And user should be on team page
    And user should be on add team page
    When user click on enter a team name<Team> text box
    Then user should be  able to add <Team> name
    And User should be on team name as <Team>
    And User scroll down<Team>
    And user click on created team<Team>
    And User click on setting icon
    And User click on Delete my Team
    And User click on "Yes,I'm sure" button on popup window massage
    Then Team should be deleted
    Examples:
      | Team             |
      | "onloop-one-one" |

  @UserAbleToSaveChangedTeamName
  Scenario Outline: ENG 780 Team | To check user is able to save changed team name
    Given user is logged in as another manager
    And user should be on team page
    And user should be on add team page
    When user click on enter a team name<Team> text box
    Then user should be  able to add <Team> name
    And User should be on team name as <Team>
    When User click on setting icon
    When user click on text box to modify team name
    And User click on back button icon
    And User click on Save option on confirmation screen
    Then user should be able to save team name
    Examples:
      | Team           |
      | "onloop-three" |


  @EditTeamMember
  Scenario Outline: ENG 781 Team | To check user is able to edit team members
    Given user is logged in as another manager
    And user should be on team page
    And User should be on team name as <Team>
    And User click on setting icon
    When user click on edit button in team members field
    Then user should be able to edit team members
    Examples:
      | Team            |
      | "Learn Testing" |

  @selectIndividualProfile
  Scenario Outline:ENG-785 Team | To check whether user is able to select individuals profile of team members
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    And user click on created team<Team>
    And user click on team member name<memberName>
    Then user should be able to select individuals profile of team members<Name>
    Examples:
      | Team       | memberName      | Name            |
      | "TeamTest" | "Nikita Gorale" | "Nikita gorale" |

  @IndividualProfileImproveTab
  Scenario Outline: ENG-787 Team | To check whether user is able to see details of "improve" of individual profile

    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    And user click on created team<Team>
    And user click on team member name<memberName>
    And user click on improve tab in team members profile
    Then user should be able to see details of "improves" on individual profile

    Examples:
      | Team       | memberName      |
      | "TeamTest" | "Nikita Gorale" |

  @ToMakeCaptureForIndividuals
  Scenario Outline: ENG 790 Team | To check whether user is able to make capture for individuals
    Given user is logged in as another manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    And user click on created team<Team>
    And user click on team member name<memberName>
    And user click on make a capture
    Then user should be able to redirected to capture page
    When user click on celebrate icon
    And user need to select and write compulsory tabs
    Then user should be able to capture celebrate for colleague
    Examples:
      | Team            | memberName      |
      | "Learn Testing" | "Nikita Gorale" |

  @IndividualProfileCelebrateTab
  Scenario Outline:ENG-786 Team | To check whether user is able to see details of "celebrate" on individual profile
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    And user click on created team<Team>
    And user click on team member name<memberName>
    Then user should be able to see details of "celebrate" on individual profile
    Examples:
      | Team       | memberName      |
      | "TeamTest" | "Nikita Gorale" |

  @IndividualProfileGoalsTab
  Scenario Outline: ENG-789 Team | To check whether user is able to see details "Goals" of individuals profile
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    And user click on created team<Team>
    And user click on team member name<memberName>
    And user click on goals tab in team members profile
    Then user should be able to see details of "Goals" on individual profile
    Examples:
      | Team         | memberName      |
      | "TeamTest" | "Nikita Gorale" |

  @teamPendingInvitation
  Scenario Outline: ENG 782 Team | To check whether user is able to see pending invitations
    Given user is logged in as another manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    And user click on created team<Team>
    And User click on setting icon
    When user click on edit button in team members field
    Then user should be able to see pending team members to accept team invites
    Examples:
      | Team            |
      | "Learn Testing" |

  @UserAbleToClickOnSettingIcon
  Scenario Outline: ENG 777 Team | To check whether user is able to click on settings
    Given user is logged in as manager
    And user should be on team page
    And team member should accept the request for team invite
    And User scroll down<Team>
    And user click on created team<Team>
    And User click on setting icon
    Then user should be able to click on setting icon
    Examples:
      | Team    |
      | "India" |

  @ModifyTheTeamName
  Scenario Outline: ENG 778 Team | To check user is able to rename(edit) the team name
    Given user is logged in as manager
    And user should be on team page
    And team member should accept the request for team invite
    And User scroll down<Team>
    And user click on created team<Team>
    And User click on setting icon
    And User click on team name text box
    And user modify team name
    Then user should be able to rename the team name
    Examples:
      | Team    |
      | "India" |


  @checkInvitationAccepted
  Scenario Outline:ENG-773 Team | To check once member will accept invitation it will show part of team
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And team member should accept the request for team invite
    And user should be on team page
    And User scroll down<Team>
    When user click on created team<Team>
    And User click on setting icon
    Then user should be able to see all members who accept the team invite and joined team
    Examples:
      | Team    |
      | "India" |

  @verifyTeamProfile
  Scenario Outline:ENG-774 Team | To check whether user is able to see team profile
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And team member should accept the request for team invite
    And user should be on team page
    And User scroll down<Team>
    When user click on created team<Team>
    Then user should be able to see team<Team> profile
    Examples:
      | Team    |
      | "India" |

  @addColleagueIntoExistingTeam
  Scenario Outline:ENG-775 Team | To check whether user is able to add team members to already formed team
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    And User scroll down<Team>
    When user click on created team<Team>
    When user click on add icon
    And user click on search or invite colleague<memberName>
    And user click on invite now button of Invite to Team
    And user enter collegue email address<Email>
    Then user should be able to add colleagues from link or name within app
    Examples:
      | Team    | memberName | Email                         |
      | "India" | "Nilesh"   | "nileshkharche@vtestcorp.com" |


  @InviteCollegue
  Scenario Outline:ENG-459 To validate that user is able to search the name of the team mate and send invites to them
    Given user is logged in as manager
    When user enter collegue name<name> in drop down search box
    And user enter collegue email address<email>
    Then user should be able to send add collegue request
    Examples:
      | name     | email                       |
      | "pravin" | "pravinkumar@vtestcorp.com" |


  @memberCountWithTeamName
  Scenario Outline:ENG-501 To check after adding team and team members , It should be reflect on team page
    Given user is logged in as manager
    And user should be fill all details in Team >> my team >>
    And user should be on team page
    When User scroll down<Team>
    Then Team name<Team> and team members count should be displayed
    Examples:
      | Team    |
      | "India" |
























































