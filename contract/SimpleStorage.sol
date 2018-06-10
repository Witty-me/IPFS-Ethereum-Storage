contract SimpleStorage {
    string storedData1;
    string storedData2;
    string storedData3;
    

    function set(string x) {
        if (!storedData1)
            storedData1=x;
        else if (!storedData2)
            storedData2=x;
        else if (!storedData3)
            storedData3=x;
    }

    function get() constant returns (string x) {
        var storedData= "";
        storedData+=storedData1;
        storedData+=storedData2;
        storedData+=storedData3;
        return storedData;
    }
}
