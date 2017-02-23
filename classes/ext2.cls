public class ext2{
    
    public ext2(ApexPages.StandardController controller) {}
    public ext2(ac6 controller) {}

    List<Campaign> camps = [select Name, StartDate, EndDate from Campaign];
    
    public List<Campaign> getcamps(){
    
    return camps;
    }



}