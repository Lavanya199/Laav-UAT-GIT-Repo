@isTest
public class bulktest{

public static testmethod void method1(){
List<Account> acts = new List<Account>();

for(integer i=0; i<200; i++){
    Account a = new Account (name= 'Account'+i, industry='Government');
    acts.add(a);
}

insert acts;

List<Account> acts2 = [select description from account where ID IN : acts];
    for(Account a : acts2){
        System.AssertEquals(a.description, 'Government Account');
        }
    }
    
    }