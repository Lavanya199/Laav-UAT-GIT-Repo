public Class AccountCreation
    {
    public Account createAccount(String name) //Method to Create Account 
    {
    
    //Demo - Testing deletions and post merge
    Account acc = new Account(); 
    acc.Name = name;
    system.debug('Test');
    return acc;
    }
    }