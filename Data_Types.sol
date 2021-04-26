pragma   solidity >=0.7.0 <0.9.0;

contract myGame {
    
    uint public playerCount = 0;
    mapping (address => Player) public players;
    
    enum Level {Novice, Intermediate, Advanced}
    
    struct Player {
        address playerAddress;
        Level playerLevel;
        string firstName;
        string lastName;
    }
    
    function addPlayer(string memory firstName, string memory lastName) public {
        players[msg.sender] = Player(msg.sender, Level.Novice, firstName, lastName);
        playerCount +=1;
        
    }
    
    function getPlayerLevel(address playerAddress) public view returns(Level){
        return players[playerAddress].playerLevel;
    }
    
}

/* constant: keyboard added to a variable that tells solidity it cannot be changed
struct: struct types are used to represent a record. They allow you to create your own data type.
enum: Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enum.
array: Player[] public players.
*/
