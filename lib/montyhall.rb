def createDoors
    doors = [false, false, false]
    doors[rand(3)] = true
    doors
end

def openADoorThatHasADonkey(doors, userChoice)
    ([0, 1, 2] - [userChoice, doors.index(true)]).first
end

def changeUserChoice(choices)
    ([0, 1, 2] - choices).first
end

def play_with_switch
    doors = createDoors()
    userChoice1 = rand(3)
    hostChoice = openADoorThatHasADonkey(doors, userChoice1)
    userChoice2 = changeUserChoice([userChoice1, hostChoice])
    doors.index(true) == userChoice2
end

def play_no_switch
    doors = createDoors()
    userChoice1 = rand(3)
    hostChoice = openADoorThatHasADonkey(doors, userChoice1)
    doors.index(true) == userChoice1
end

def final_with_switch(play_with_switch)
games, wins = 10000, 0
switch = games.times { wins += 1 if play_with_switch() }
100*wins/switch
end

def final_with_no_switch(play_no_switch)
games, wins = 10000, 0
stay = games.times { wins += 1 if play_no_switch() }
100*wins/stay
end

switch = final_with_switch(play_with_switch)
no_switch = final_with_no_switch(play_no_switch)
puts "When a contestant SWITCHED their guess they won #{switch.to_s}% of the time."
puts "When they STUCK WITH THEIR ORIGINAL choice they won #{no_switch.to_s}% of times."