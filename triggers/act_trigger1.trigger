trigger act_trigger1 on Account (Before Insert) {
    for (Account a : trigger.new){
    if (a.Industry=='Energy')
    a.addError('Not valid');
    }
}