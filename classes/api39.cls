public class api39{

    String keyword;
    List<Account> results;
    
    public String getkeyword(){
    return keyword;
    }
    
    public List<Account> getresults(){
    return results;
    }
    
    public void setkeyword(String s){
    keyword=s;
    }
    
    public PageReference search(){
        results = (List<Account>)[FIND : keyword IN NAME FIELDS RETURNING Account(Name, Industry)] [0];
        return null;
    }
    
 }