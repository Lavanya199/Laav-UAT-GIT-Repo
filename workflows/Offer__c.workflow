<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Vacancy_and_Job_application_closed</fullName>
        <ccEmails>laav.raag@gmail.com</ccEmails>
        <description>Vacancy and Job application closed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>insightssecurity@00d36000000h2dqea0.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Vacancy_and_Job_application_closed</template>
    </alerts>
    <fieldUpdates>
        <fullName>Job_application_status_closed</fullName>
        <description>The job application is closed as the offer letter has been accepted.</description>
        <field>Status__c</field>
        <literalValue>Closed-Hired</literalValue>
        <name>Job application status closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_job_application_status</fullName>
        <field>Status__c</field>
        <literalValue>Closed-Rejected</literalValue>
        <name>Update job application status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Vacancy_closed</fullName>
        <description>Vacancy closed as the offer letter has been accepted.</description>
        <field>Vacancy_Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Vacancy closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Vacancy__c</targetObject>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Follow_applicant_on_issued_offer_letter</fullName>
        <apiVersion>36.0</apiVersion>
        <endpointUrl>http://requestb.in/zydzzezy</endpointUrl>
        <fields>Basic_Salary__c</fields>
        <fields>Date_of_Joining__c</fields>
        <fields>Id</fields>
        <fields>Job_Application__c</fields>
        <fields>Location__c</fields>
        <fields>Name</fields>
        <fields>Offer_status__c</fields>
        <fields>Type_of_Job__c</fields>
        <fields>Vacancy__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>jaanu@domain.com</integrationUser>
        <name>Follow applicant on issued offer letter</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Submitted Offer Requires Action</fullName>
        <actions>
            <name>Follow_applicant_on_issued_offer_letter</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Offer__c.Offer_status__c</field>
            <operation>equals</operation>
            <value>Sent</value>
        </criteriaItems>
        <description>If the Offer letter has been sent, and no response from the applicant since 2 days, then the recruiter should follow up.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Follow_up_on_submitted_offer</name>
                <type>Task</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>To end up a job application if offer status is accepted</fullName>
        <actions>
            <name>Vacancy_and_Job_application_closed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Job_application_status_closed</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Vacancy_closed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Offer__c.Offer_status__c</field>
            <operation>equals</operation>
            <value>Accepted</value>
        </criteriaItems>
        <description>If the offer status is accepted, then the job application status should be moved to &apos;closed-hired&apos; and the vacancy status should be moved to &apos;closed&apos;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Vacancy_and_job_application_closed</name>
                <type>Task</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>To end up a job application if offer status is rejected</fullName>
        <actions>
            <name>Update_job_application_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Offer__c.Offer_status__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>If the offer status is accepted, then the job application status should be moved to &apos;closed-rejected&apos; and the vacancy status should be moved to &apos;closed&apos;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Follow_up_on_submitted_offer</fullName>
        <assignedTo>jaanu@domain.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Recruiter has not received any response from the applicant since 2 days. Recruiter please follow up.</description>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>true</protected>
        <status>Not Started</status>
        <subject>Follow up on submitted offer</subject>
    </tasks>
    <tasks>
        <fullName>Vacancy_and_job_application_closed</fullName>
        <assignedTo>jaanu@domain.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Vacancy and job application closed</subject>
    </tasks>
</Workflow>
