//manually creating dict of player information

let player1 = ["Name": "Joe Smith", "Height (inches)": "42", "Soccer Experience": "YES", "Guardian Name(s)": "Jim and Jan Smith"]
let player2 = ["Name": "Jill Tanner", "Height (inches)": "36", "Soccer Experience": "YES", "Guardian Name(s)": "Clara Tanner"]
let player3 = ["Name": "Bill Bon", "Height (inches)": "43", "Soccer Experience": "YES", "Guardian Name(s)": "Sara and Jenny Bon"]
let player4 = ["Name": "Eva Gordon", "Height (inches)": "45", "Soccer Experience": "NO", "Guardian Name(s)": "Wendy and Mike Gordon"]
let player5 = ["Name": "Matt Gill", "Height (inches)": "40", "Soccer Experience": "NO", "Guardian Name(s)": "Charles and Sylvia Gill"]
let player6 = ["Name": "Kimmy Stein", "Height (inches)": "41", "Soccer Experience": "NO", "Guardian Name(s)": "Bill and Hillary Stein"]
let player7 = ["Name": "Sammy Adams", "Height (inches)": "45", "Soccer Experience": "NO", "Guardian Name(s)": "Jeff Adams"]
let player8 = ["Name": "Karl Saygan", "Height (inches)": "42", "Soccer Experience": "YES", "Guardian Name(s)": "Heather Bledsoe"]
let player9 = ["Name": "Suzane Greenberg", "Height (inches)": "44", "Soccer Experience": "YES", "Guardian Name(s)": "Henrietta Dumas"]
let player10 = ["Name": "Sal Dali", "Height (inches)": "41", "Soccer Experience": "NO", "Guardian Name(s)": "Gala Dali"]
let player11 = ["Name": "Joe Kavalier", "Height (inches)": "39", "Soccer Experience": "NO", "Guardian Name(s)": "Sam and Elaine Kavalier"]
let player12 = ["Name": "Ben Finkelstein", "Height (inches)": "44", "Soccer Experience": "NO", "Guardian Name(s)": "Aaron and Jill Finkelstein"]
let player13 = ["Name": "Diego Soto", "Height (inches)": "41", "Soccer Experience": "YES", "Guardian Name(s)": "Robin and Sarika Soto"]
let player14 = ["Name": "Chloe Alaska", "Height (inches)": "47", "Soccer Experience": "NO", "Guardian Name(s)": "David and Jamie Alaska"]
let player15 = ["Name": "Arnold Willis", "Height (inches)": "43", "Soccer Experience": "NO", "Guardian Name(s)": "Claire Willis"]
let player16 = ["Name": "Phillip Helm", "Height (inches)": "44", "Soccer Experience": "YES", "Guardian Name(s)": "Thomas Helm and Eva Jones"]
let player17 = ["Name": "Les Clay", "Height (inches)": "42", "Soccer Experience": "YES", "Guardian Name(s)": "Wynonna Brown"]
let player18 = ["Name": "Herschel Krustofski", "Height (inches)": "45", "Soccer Experience": "YES", "Guardian Name(s)": "Hyman and Rachel Krustofski"]


let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9,
               player10, player11, player12, player13, player14, player15, player16, player17, player18]

let playerCount = players.count

//create arrays of experienced and unexperienced players to be divided into teams
var experiencedPlayers = [[String:String]]()
var unexperiencedPlayers = [[String:String]]()
var teams = [[[String: String]](), [[String: String]](), [[String: String]]()]
for player in players {
    if player["Soccer Experience"] == "YES" {
        experiencedPlayers.append(player)
    }
    else {
        unexperiencedPlayers.append(player)
    }
}

let experiencedPlayerCount = experiencedPlayers.count
let unexperiencedPlayerCount = unexperiencedPlayers.count

//divide players based on experience into teams
for num in 0...2 {
    for experiencedPlayer in experiencedPlayers {
        if teams[num].count < experiencedPlayerCount / 3 {
            teams[num].append(experiencedPlayer)
            experiencedPlayers = experiencedPlayers.filter() {$0 != experiencedPlayer} //remove experienced player from array
        }
    }
    for unexperiencedPlayer in unexperiencedPlayers {
        if teams[num].count < playerCount / 3 {
            teams[num].append(unexperiencedPlayer)
            unexperiencedPlayers = unexperiencedPlayers.filter() {$0 != unexperiencedPlayer}
        }
    }
}
//create team arrays
let sharks = teams[0]
let dragons = teams[1]
let raptors = teams[2]

let sharksPractice = ["Sharks", "3pm, March 17"]
let dragonsPractice = ["Dragons", "1pm, March 17"]
let raptorsPractice = ["Raptors", "1pm, March 18"]


//letters to guardians
func parentLetter (team: [[String: String]], teamPractice: [String]) -> [String] {
    var playerLetters = [String]()
    for player in team {
        playerLetters.append("Dear \(player["Guardian Name(s)"]!), \nWe welcome you and your child, \(player["Name"]!), to the \(teamPractice[0]).\nOur first team practice is scheduled to be held at \(teamPractice[1]). The entire \(teamPractice[0]) organization looks forward to meeting you then. \n\nBest Regards, \n\n\n\(teamPractice[0])y Mc\(teamPractice[0])face \n\(teamPractice[0]) CEO\n")
        
    }
    return playerLetters
}

let sharksLetters = (parentLetter(team: sharks, teamPractice: sharksPractice))
let dragonsLetters = parentLetter(team: dragons, teamPractice: dragonsPractice)
let raptorsLetters = parentLetter(team: raptors, teamPractice: raptorsPractice)

for letter in sharksLetters {
    print(letter)
}
for letter in dragonsLetters {
    print(letter)
}
for letter in raptorsLetters {
    print(letter)
}