
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
var playerHasExperience = [[String: String]]()
var playerHasNoExperience = [[String: String]]()


// This loop will iterate through the players dictionary, check the experience key, and append each player to the
// appropriate experience list.

for player in players {
    if player["experience"] == "true" {
        playerHasExperience.append(player)
    } else {
        playerHasNoExperience.append(player)
}
}

// Begin to sort players into three teams (Dragons, Sharks, Raptors) with equal number of experienced and
// inexperienced players.

// create teams and details

var teamSharks: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []

var teams = [teamSharks, teamDragons, teamRaptors]

//Iterate through experienced and inexperienced players.


var maxExpTeamCount = (playerHasExperience.count / teams.count)

var maxNoExpTeamCount = (playerHasNoExperience.count / teams.count)

for player in playerHasExperience {

    if (teamSharks.count < maxExpTeamCount){
        teamSharks.append(player)
    }
    else if teamDragons.count < maxExpTeamCount {
        teamDragons.append(player)
    }
    else if teamRaptors.count < maxExpTeamCount {
        teamRaptors.append(player)
    }
    
}

for player in playerHasNoExperience {
    //loop through all inexperienced players, if a team has its maximum number of exp players + inexp players, move onto next team until completion
    
    if (teamSharks.count < maxNoExpTeamCount + maxExpTeamCount){
        teamSharks.append(player)
    }
    else if (teamDragons.count < maxNoExpTeamCount + maxExpTeamCount) {
        teamDragons.append(player)
    }
    else if (teamRaptors.count < maxNoExpTeamCount + maxExpTeamCount) {
        teamRaptors.append(player)
    }
    
}


// I would like to continue working on the switch statement below, because ultimately it
// should be faster than the if/else if statement above. This is a workin progress and I don't
// want to lose the code I've worked on for this.

//for player in players {
//    if player["experience"] == "false" {
//        switch players.count / teams.count {
//        case 0: teamSharks.append(player)
//        case 1: teamDragons.append(player)
//        case 2: teamRaptors.append(player)
//        default: print("Error!")
//        }
//    }
//}


// Part 3: ** Write code that iterates through all three teams of players and generates
// a personalized letter to the guardians, letting them know which team the child has been
// placed on and when they should attend their first team team practice.

var sharksPracticeDate = "March 17th at 3pm"
var dragonsPracticeDate = "March 17th at 1pm"
var raptorsPracticeDate = "March 18th at 1pm"


var letters: [String] = []

for player in teamSharks {
    let letter = "Dear \(player["guardian"]!), Congratulations! \(player["name"]!) is a Shark! I would like to let you know the first practice is \(sharksPracticeDate). See you there, and go Sharks!"
    letters.append(letter)
    print(letter)
        
    }
for player in teamDragons {
    let letter = "Dear \(player["guardian"]!), Congratulations! \(player["name"]!) is a Dragon! I would like to let you know the first practice is \(dragonsPracticeDate). See you there, and go Dragons!"
    letters.append(letter)
    print(letter)
    }
for player in teamRaptors {
    let letter = "Dear \(player["guardian"]!), Congratulations! \(player["name"]!) is a Raptor! I would like to let you know the first practice is \(raptorsPracticeDate). See you there, and go Raptors!"
    letters.append(letter)
    print(letter)
    }


print(letters.count)

