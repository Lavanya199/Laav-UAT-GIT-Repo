public class ac3{

    List<Account> direct_customers = [select Name, Type, Industry, Phone from Account where Type = 'Customer - Direct'];
    List<Account> channel_customers = [select Name, Type, Industry, Phone from Account where Type = 'Customer - Channel'];

    public List<Account> getdirect_customers(){
        return direct_customers;
        }
        
   public List<Account> getchannel_customers(){
        return channel_customers;
        }    
        
   }