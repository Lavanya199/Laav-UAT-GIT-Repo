trigger trigger2 on Account (Before Insert) {
    for(account a: trigger.new){
    if(a.industry == 'Government')
    a.description = 'Government Account';
    }
}