trigger ContactTrigger1 on Contact (before insert) {
//Demo
    for(Contact a2: Trigger.New) {

        a2.Description = 'Contact Description for this ContactTrigger1';

    }  

}