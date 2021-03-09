
GivenStories: story/web/Registration.story					 

Scenario:  <Sign In>
When I Log In as existed user
When I wait until the page has the title 'Boards | Trello'
Then the page with the URL 'https://trello.com/volhaground/boards' is loaded

Scenario:  <Verifying profile>	
When I click on an element by the xpath '//button[@class="_2ZNy4w8Nfa58d1 js-open-header-member-menu _3R2LYccoXhpfv9 voB8NatlbuEme5 YkLuOsDsiYKMs8"]'
Then the text '${userEmail}' exists
When I change context to an element by the xpath '//*[@class="_3G5bqBqxC88MwF js-react-root"]'
When I ${visual-action}  baseline with `HeaderLoggedUser` ignoring:
|ELEMENT               |
|By.xpath(//*[@class="_3G5bqBqxC88MwF js-react-root"]//div[@class="_1hNJCPJOYai-3H"])|
When I change context to the page

Scenario:  <Visual check for different templates>
When I click on an element by the xpath '//*[@class="_3qwe2tMMFonNvf"][text()="Templates"]'
When I wait until an element with the xpath '<LinkPath>' appears
When I click on an element by the xpath '<LinkPath>'
When I wait until an element with the xpath '<ElementXpath>' appears
When I ESTABLISH baseline with `<Image>` ignoring:
|ELEMENT               |
|By.xpath(//*[@class="_5Flj7hd-W1XPQq"])|
Examples:
|LinkPath                                   |ElementXpath                                                                                       |Image   |
|//div[@title="Find Your Passion in Life"]  |//div[@class="member-cards-board js-board body-custom-board-background body-dark-board-background"]|FindYourPassion|
|//div[@title="Swift Developer Roadmap"]    |//div[@class="member-cards-board js-board body-custom-board-background body-dark-board-background"]|SwiftDeveloperRoadmap|
|//div[@title="Design Project Template"]    |//div[@class="member-cards-board js-board body-custom-board-background body-dark-board-background"]|DesignProject|
|//div[@title="Grant Tracking Template"]    |//div[@class="member-cards-board js-board body-custom-board-background body-light-board-background"]|GrantTrackingTemplate|
|//div[@title="Blog Content Schedule"]      |//div[@class="member-cards-board js-board body-custom-board-background body-light-board-background"]|BlogContentSchedule|






 