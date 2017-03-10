<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Applicant_email_alert</fullName>
        <ccEmails>livia.livi1319@gmail.com</ccEmails>
        <description>New Applicant email alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Applicant_Email_template</template>
    </alerts>
    <rules>
        <fullName>New Applicant Alert</fullName>
        <actions>
            <name>New_Applicant_email_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Applicant__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>When a new applicant name has entered, an email alert should be send to email alert queue</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>New_Applicant_alert</name>
                <type>Task</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>New_Applicant_alert</fullName>
        <assignedTo>jaanu@domain.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>If the applicant has not been assigned to any recruiter or interviewer, please review the resume and do the needful.</description>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>New Applicant alert</subject>
    </tasks>
</Workflow>
