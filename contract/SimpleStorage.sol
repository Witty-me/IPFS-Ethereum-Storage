contract SimpleStorage {
    function stored(element){
    this.element = element;
    this.next = null;
    }
    var storedData = new stored(null);

    function set(string x) {
        storedData = new stored(x);
        storedData.next=currentData;
    }

    function get() constant returns (string x) {
        return storedData.element;
    }
}
