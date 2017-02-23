public class class_s implements Schedulable{
    public void execute(SchedulableContext con){
        List<Account> acts = [select Name from Account where Billingcountry = 'India'];
        delete acts;
        }
 }