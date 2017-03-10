trigger PositionApprovalTrigger on Vacancy__c (before insert, before update) {
    PositionApproval.setPositionApprovers(Trigger.new);
}