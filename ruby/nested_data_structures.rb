team_management = {
    the_suits: {
        executive_board: {
            ceo: 'Joe Lacob',
            co_executive_chairman: "Peter Guber"
        },
        board_members: [
            "Jerry West",
            "Mark Stevens",
            "Bruce Karsh",
            "Jeff Miller",
            "Chamath Palihapitiya"
        ]
    },
    bball_ops: {
        general_manager: 'Bob Myers',
        asst_gm: [
            "Travis Schlenk",
            "Kirk Lacob",
        ],
        director_player_personal: "Larry Harris",

        
    },
    coaches: {
        head_coach: 'Steve Kerr',
        asst_coach: [
            "Luke Walton",
            "Ron Adams",
            "Jarron Collins",
            "Steve Nash",
        ],
        player_development: [
            "Bruce Fraser",
            "Chris DeMarco"]
    }
}

# Print Warriors assistant coach Ron Adamsteam_management

p team_management[:coaches][:asst_coach][1]
# Print board member Jerry West 
p team_management[:the_suits][:board_members][0]

# Print player development coach Bruce Fraser
p team_management[:coaches][:player_development][0]