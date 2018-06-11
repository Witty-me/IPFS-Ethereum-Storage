contract ModifiedStorage {

    string[5] storageData;
    uint256 index = 0;
    
    function set(string x) public
    {
        storageData[index] = x;
        index++;
    }
    function get() public returns(string)
    {
        string memory tmp = storageData[index];
        if(index == 0)
            index = 5;
        index--;
        return tmp;
    }
}
