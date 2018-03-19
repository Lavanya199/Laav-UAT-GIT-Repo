public Class AccountCreation
    {
    public Account createAccount(String name) //Method to Create Account 
    {
    
    //Demo - Deletions demo and changed only this class
    Account acc = new Account(); 
    acc.Name = name;
    system.debug('Test');
    return acc;
    }
    }