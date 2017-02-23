<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Interview_scheduled</fullName>
        <description>Interview scheduled</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Approver1__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver2__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver3__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Interview_scheduled</template>
    </alerts>
    <alerts>
        <fullName>Offter_letter_issued_close_Job_application</fullName>
        <ccEmails>jaanu.jaan0309@gmail.com, livia.livi1319@gmail.com</ccEmails>
        <description>Offter letter issued - close Job application</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportEscalatedCaseNotification</template>
    </alerts>
    <alerts>
        <fullName>Recall_Email_alert</fullName>
        <description>Recall Email alert</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Recall_Email_alert</template>
    </alerts>
    <alerts>
        <fullName>Review_Job_application</fullName>
        <description>Review Job application</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Approver1__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver2__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver3__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Review_Job_application</template>
    </alerts>
    <fieldUpdates>
        <fullName>Close_date_update</fullName>
        <field>Close_Date__c</field>
        <formula>TODAY()</formula>
        <name>Close date update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Close_date_update2</fullName>
        <field>Close_Date__c</field>
        <formula>TODAY()</formula>
        <name>Close date update2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_rejection_update</fullName>
        <field>Status__c</field>
        <literalValue>Closed-Rejected</literalValue>
        <name>Final rejection update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Interview_update</fullName>
        <field>Status__c</field>
        <literalValue>Schedule Interview</literalValue>
        <name>Interview update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejected_at_1</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Rejected at 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Selection_update</fullName>
        <field>Status__c</field>
        <literalValue>Selected</literalValue>
        <name>Selection update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Selection_update2</fullName>
        <field>Status__c</field>
        <literalValue>Closed-Rejected</literalValue>
        <name>Selection update2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Shortlist_update</fullName>
        <field>Status__c</field>
        <literalValue>Shortlist</literalValue>
        <name>Shortlist update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_of_Job_application</fullName>
        <field>Status__c</field>
        <literalValue>Review Resume</literalValue>
        <name>Status of Job application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_review_resume</fullName>
        <field>Status__c</field>
        <literalValue>Review Resume</literalValue>
        <name>Update to review resume</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>field_update</fullName>
        <field>Status__c</field>
        <literalValue>Review Resume</literalValue>
        <name>Review field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update close date of job application</fullName>
        <actions>
            <name>Close_date_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed-Hired</value>
        </criteriaItems>
        <description>Update the close date of job application when the job application is closed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update close date of job application2</fullName>
        <actions>
            <name>Close_date_update2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed-Rejected</value>
        </criteriaItems>
        <description>Update the close date of job application when the job application is closed-rejected</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
