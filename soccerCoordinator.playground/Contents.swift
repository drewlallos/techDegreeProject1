
// Part 1: ** We have provided information for the 18 players in the Player Info spreadsheet. Please choose an
// appropriate data type to store the information for each player. In addition, create an empty collection
// constant to hold all the players’ data. Once you have decided on what tools to use, manually enter the player
// data so it can be used in Part 2.

// Create player dictionaries
// Dictionaries should include player name, height, experience, and their guardian

var players: [[String: String]] = [
    // using a mutable variable allows a user to come back and add or remove players at a later date.

[
    "name": "Joe Smith",
    "height": "42.0",
    "experience": "true",
    "guardian": "Jim and Jan Smith"
],

[
    "name": "Jill Tanner",
    "height": "36.0",
    "experience": "true",
    "guardian": "Clara Tanner"
],

[
    "name": "Bill Bon",
    "height": "43.0",
    "experience": "true",
    "guardian": "Sara and Jenny Bon"
],

[
    "name": "Eva Gordon",
    "height": "45.0",
    "experience": "false",
    "guardian": "Wendy and Mike Gordon"
],

[
    "name": "Matt Gill",
    "height": "40.0",
    "experience": "false",
    "guardian": "Charles and Sylvia Gill"
],

[
    "name": "Kimmy Stein",
    "height": "41.0",
    "experience": "false",
    "guardian": "Bill and Hillary Stein"
],

[
    "name": "Sammy Adams",
    "height": "45.0",
    "experience": "false",
    "guardian": "Jeff Adams"
],

[
    "name": "Karl Saygan",
    "height": "42.0",
    "experience": "true",
    "guardian": "Heather Bledsoe"
],

[
    "name": "Suzanne Greenberg",
    "height": "44.0",
    "experience": "true",
    "guardian": "Henrietta Dumas"
],

[
    "name": "Sal Dali",
    "height": "41.0",
    "experience": "false",
    "guardian": "Gala Dali"
],

[
    "name": "Joe Kavalier",
    "height": "39.0",
    "experience": "false",
    "guardian": "Sam and Elaine Kavalier"
],

[
    "name": "Ben Finkelstein",
    "height": "44.0",
    "experience": "false",
    "guardian": "Aaron and Jill Finkelstein"
],

[
    "name": "Diego Soto",
    "height": "41.0",
    "experience": "true",
    "guardian": "Robin and Sarika Soto"
],

[
    "name": "Chloe Alaska",
    "height": "47.0",
    "experience": "false",
    "guardian": "David and Jamie Alaska"
],

[
    "name": "Arnold Willis",
    "height": "43.0",
    "experience": "false",
    "guardian": "Claire Willis"
],

[
    "name": "Phillip Helm",
    "height": "44.0",
    "experience": "true",
    "guardian": "Thomas Helm and Eva Jones"
],

[
    "name": "Les Clay",
    "height": "42.0",
    "experience": "true",
    "guardian": "Wynonna Brown"
],

[
    "name": "Herschel Krustofski",
    "height": "45.0",
    "experience": "true",
    "guardian": "Hyman and Rachel Krustofski"
]
]

// Part 2: ** Create logic to iterate through all 18 players and assign them to teams
// such that the number of experienced players on each team are the same. Store each team’s players in its own
// collection for use in Part 3. Please note: your logic should work correctly regardless of the initial
// ordering of the players and the number of players. This solution should work if there are 18 players or 100.


// creating seperate dictionaries will be helpful in future team sorting.
var experiencePlayers = [[String: Any]]()
var inexperiencedPlayers = [[String: Any]]()


// This loop will iterate through the players dictionary, check the experience key, and append each player to the
// appropriate experience list.

for player in players {
    if player["experience"] == "true" {
        experiencePlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
}
}

// Begin to sort players into three teams (Dragons, Sharks, Raptors) with equal number of experienced and
// inexperienced players.

// create teams and details

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []


//Iterate through experienced and inexperienced players.

var i = 0

for player in players {
    if player["experience"] == "true" {
        switch i % 3 {
        case 0: teamSharks.append(player)
        case 1: teamDragons.append(player)
        case 2: teamRaptors.append(player)
        default: print("Error!")
        }
        i += 1
    }
}

for player in players {
    if player["experience"] == "false" {
        switch i % 3 {
        case 0: teamSharks.append(player)
        case 1: teamDragons.append(player)
        case 2: teamRaptors.append(player)
        default: print("Error!")
        }
        i += 1
    }
}


// Part 3: ** Write code that iterates through all three teams of players and generates a personalized letter t
// the guardians, letting them know which team the child has been placed on and when they should attend their
// first team team practice.

for player in teamSharks {
    print(("Dear \(player["guardian"]!),\nCongratulations! \(player["name"]!) is a Shark! I would like to let you know the first practice is March 17th at 3pm.\nSee you there, and let's go Sharks!\n"))
}

for player in teamDragons {
    print(("Dear \(player["guardian"]!),\nCongratulations! \(player["name"]!) is a Dragon! I would like to let you know the first practice is March 17th at 1pm.\nSee you there, and let's go Dragons!\n"))
}

for player in teamRaptors {
    print(("Dear \(player["guardian"]!),\nCongratulations! \(player["name"]!) is a Raptor! I would like to let you know the first practice is March 18th at 1pm.\nSee you there, and let's go Raptors!\n"))
}

