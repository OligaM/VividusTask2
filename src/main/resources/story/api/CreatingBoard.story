Scenario: Creating a new test board
When I send HTTP POST to the relative URL '/1/boards/?name=${boardName}&defaultLabels=true&defaultLists=true&keepFromSource=none&prefs_permissionLevel=public&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=f979787c3f053e8318f7fc29c3dd5406&token=d7c2c306be0a6a8bb88d692dd376b4230c81be6f1cb7000c6e81597f268b29bd'
Then the response code is equal to '200'
Then a JSON element by the JSON path '$.name' is equal to '${boardName}'

Scenario: Verifing a created test board
When I save a JSON element from '${response}' by JSON path '$.id' to story variable 'id'
When I send HTTP GET to the relative URL '/1/boards/#{removeWrappingDoubleQuotes(${id})}?key=f979787c3f053e8318f7fc29c3dd5406&token=d7c2c306be0a6a8bb88d692dd376b4230c81be6f1cb7000c6e81597f268b29bd'
Then the response code is equal to '200'


Scenario:Deleting created test board
When I save a JSON element from '${response}' by JSON path '$.id' to story variable 'id'
When I send HTTP DELETE to the relative URL '/1/boards/#{removeWrappingDoubleQuotes(${id})}?key=f979787c3f053e8318f7fc29c3dd5406&token=d7c2c306be0a6a8bb88d692dd376b4230c81be6f1cb7000c6e81597f268b29bd'
Then the response code is equal to '200' 


