public class version{

List<Account> acts = [select Name, Type, Industry from Account];

public List<Account> getaacts(){
    return acts;
    }
 }