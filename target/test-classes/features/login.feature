Feature: Login Test

  Background:
    Given User is on the login page

  @wip

  Scenario: User should be able to login
    When User enters username "ayse10121984@gmail.com" and password "btlhkn2011"
    Then The user verified login "Token Deals"

  Scenario Outline: User should not be able to login
    When User enters invalid username "<username>" or password "<password>"
    Then User verified error message "<tagname>" "<message>"
    Examples:
      | username                | password   | tagname | message                                                                           |
      | ayse10121984gmail.com   | btlhkn2011 | div     | please enter a valid email                                                        |
      | ayse10121984@gmail      | btlhkn2011 | div     | please enter a valid email                                                        |
      |                         | btlhkn2011 | div     | The Email field is required                                                       |
      | ayse10121984@gmail.com  | 201        | div     | password must be at least 8 characters                                            |
      | ayse10121984@gmail.com  |            | div     | The Password field is required                                                    |
      |                         |            | div     | The Password field is required                                                    |
      | %ayse10121984@gmail.com | btlhkn2011 | p       | No account exists for this email. Please check your spelling or create an account |
      | ayse10121984@gmail.com  | &%/(b11r   | p       | Wrong email or password                                                           |

