Sample story

Scenario:  < Sign Up scenario  >
Given I am on the main application page
When I enter '<email>' in a field by the xpath '//*[@class="d-none d-md-block col-md-7 pr-md-2"]//input[@name="email"]'
When I click on an element by the xpath '//*[@class="col-md-5 pl-md-2"]//button[@type="submit"]'
When I wait until the page title contains the text 'Sign up - Log in with Atlassian account'
When I enter '<firstName>' in a field by the xpath '//*[@id="displayName"]'
When I enter '<password>' in a field by the xpath '//*[@id="password"]'
When I click on an element by the xpath '//*[text()="Sign up"]'
Then number of elements found by `xpath(//iframe[@title="recaptcha challenge"])` is equal to `1`

Examples:
|email                                  | firstName                 |password                                        |
|#{generate(Internet.safeEmailAddress)} |#{generate(Name.firstName)}|#{generate(regexify '[A-Z]{3}[a-z]{3}[0-9]{3}')}|
|#{generate(Internet.safeEmailAddress)} |#{generate(Name.firstName)}|#{generate(regexify '[A-Z]{2}[a-z]{3}[0-9]{3}')}|
|#{generate(Internet.safeEmailAddress)} |#{generate(Name.firstName)}|#{generate(regexify '[0-9]{3}[A-Z]{3}[a-z]{2}')}|


