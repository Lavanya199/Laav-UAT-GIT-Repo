trigger ApplicantTrigger on Applicant__c (after insert) {

List<Applicant__c> newapplicantList = new List<Applicant__c>();

for(Applicant__c app: Trigger.new){
 newapplicantList.add(app);
}

public static string List_applicantrecords = 'Applicant List';
Map<String, Object> params = new Map<String, Object>();
params.put(List_applicantrecords,newapplicantList);     
Flow.Interview.Update_Standard_owner_applicants UpOwnerField1= new Flow.Interview.Update_Standard_owner_applicants(params);
UpOwnerField1.start();
}