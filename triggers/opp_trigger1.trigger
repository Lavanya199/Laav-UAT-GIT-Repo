trigger opp_trigger1 on Opportunity (Before insert, Before Update) {
    for (Opportunity o : Trigger.New){
        
    if(trigger.isInsert && o.Amount < 10000)
        o.addError('Invalid opportunity - Amount < 10k');
    
    else if(trigger.isUpdate && o.Amount < 5000)
    o.addError('Invalid opportunity - Amount < 5k');
    }

}