<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Final_Vacancy_approval</fullName>
        <description>Final Vacancy approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Vacancy_approval_request</template>
    </alerts>
    <alerts>
        <fullName>HR_VP_approved_the_vacancy</fullName>
        <description>HR VP approved the vacancy</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/HR_VP_approval_for_higher_positions</template>
    </alerts>
    <alerts>
        <fullName>Vacancy_rejected</fullName>
        <description>Vacancy rejected</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Vacancy_rejected</template>
    </alerts>
    <alerts>
        <fullName>Vacancy_rejected2</fullName>
        <description>Vacancy rejected2</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Vacancy_rejected</template>
    </alerts>
    <alerts>
        <fullName>vacancy_recall</fullName>
        <description>vacancy recall</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Vacancy_recall</template>
    </alerts>
    <fieldUpdates>
        <fullName>HR_VP_rejected_the_vacancy</fullName>
        <description>If HR VP rejects vacancy , then the field status should be updated to &apos;new&apos;</description>
        <field>Vacancy_Status__c</field>
        <literalValue>New</literalValue>
        <name>HR VP rejected the vacancy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Vacancy_rejection1</fullName>
        <field>Vacancy_Status__c</field>
        <literalValue>Closed-Rejected</literalValue>
        <name>Vacancy rejection1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>vacancy_status_update1</fullName>
        <description>Immediate manager approves - vacancy status should updated to approved</description>
        <field>Vacancy_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>vacancy status update1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>vacancy_status_update2</fullName>
        <description>If HR manager approves the vacancy, then the vacancy status should be updated to &apos;open&apos;</description>
        <field>Vacancy_Status__c</field>
        <literalValue>Open</literalValue>
        <name>vacancy status update2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>vacancy_outbound_message_test</fullName>
        <apiVersion>36.0</apiVersion>
        <endpointUrl>http://requestb.in/16toezo1</endpointUrl>
        <fields>CreatedDate</fields>
        <fields>Department__c</fields>
        <fields>Id</fields>
        <fields>Name</fields>
        <fields>Vacancy_Status__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>jaanu@domain.com</integrationUser>
        <name>vacancy outbound message test</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>New vacancy</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Vacancy__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>vacancy outbound message test</fullName>
        <actions>
            <name>vacancy_outbound_message_test</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Vacancy__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>when a new vacancy is created, an outbound message should be sent</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
