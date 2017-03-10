public class ac4{

    List<Account> acts;
    
    public List<Account> getacts(){
        return acts;
    }
    
    public PageReference direct(){
        acts = [select Name, Type, Industry, Phone from Account where Type = 'Customer - Direct'];
        return null;
        }
   
   public PageReference channel(){
        acts = [select Name, Type, Industry, Phone from Account where Type = 'Customer - Channel'];
        return null;
        }
        
  public PageReference laav8(){
      return Page.laav8;
      }
      
  }