public class PositionApproval {
             
             
              static final Map<String,Position_Approval_Matrix__c> APPROVAL_MAP_CONST;
             
              static {
                             APPROVAL_MAP_CONST = getPositionApprovalMap();
              }
             
              private static Map<String,Position_Approval_Matrix__c> getPositionApprovalMap(){
                             // build a Map from Department --> Approval Matrix record
                             Map<String,Position_Approval_Matrix__c> results = new Map<String,Position_Approval_Matrix__c>();
                             List<Position_Approval_Matrix__c> records = [select id,name, Department__c,approver1__c,approver2__c,approver3__c from Position_Approval_Matrix__c];
                             for(Position_Approval_Matrix__c record : records){
                                           if (!results.containsKey(record.Department__c))
                                           {
                                            results.put(record.Department__c, record);
 

                                            }
                             }
                             return results;
              }
             
              public static void setPositionApprovers(Vacancy__c[] positions){
                             for (Vacancy__c p:positions){
                                           if (p.Department__c!= null) {
                                                          if (APPROVAL_MAP_CONST.containsKey(p.Department__c)){
                                                                        p.approver1__c = APPROVAL_MAP_CONST.get(p.Department__c).approver1__c;
                                                                        p.approver2__c = APPROVAL_MAP_CONST.get(p.Department__c).approver2__c;
                                                                        p.approver3__c = APPROVAL_MAP_CONST.get(p.Department__c).approver3__c;
                                                          } else {
                                                                        p.approver1__c = null;
                                                                        p.approver2__c = null;
                                                                        p.approver3__c = null;
                                                          }
                                           }
                             }
              }
}