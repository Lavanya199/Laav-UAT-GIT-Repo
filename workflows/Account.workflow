<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>account_field</fullName>
        <field>Rating</field>
        <literalValue>Hot</literalValue>
        <name>account field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account rule 1</fullName>
        <actions>
            <name>account_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>account_follow_up</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>J&amp;J</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>account_follow_up</fullName>
        <assignedTo>livia.livi1319@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Follow up</description>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>account follow up</subject>
    </tasks>
</Workflow>
