@istest 
public class CreateAccountClassTest
{ 
    //test method -  Demo for Alm workitem 
    static testmethod void CreateAccTest()
    { 
        CreateAccountClass acc = new CreateAccountClass();
        Account ac = acc.CreateRecord('name'); 
    } 
}