public Class CreateAccountClass
{ 
    public Account CreateRecord(String name)
    { 
        //Create a new account - Demo for Alm workitem 
        Account acc = new Account(); 
        acc.Name = name; 
        acc.AccountNumber = '1234';
        return acc; 
    } 
}