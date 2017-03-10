<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_after_1_hr</fullName>
        <ccEmails>lavanya.y@autorabit.com, lavanya199@gmail.com, abhi.m@autorabit.com</ccEmails>
        <description>Email after 1 hr</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_Followup_1hr_RuleTrigger</template>
    </alerts>
    <alerts>
        <fullName>Follow_up_2hrs</fullName>
        <ccEmails>lavanya199@gmail.com, lavanya.y@autorabit.com, abhi.m@autorabit.com</ccEmails>
        <description>Follow up 2hrs</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_Followup_2_hr</template>
    </alerts>
    <alerts>
        <fullName>Lead_Follow_up</fullName>
        <ccEmails>lavanya199@gmail.com</ccEmails>
        <description>Lead Follow up</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>livia.livi1319@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Interview_scheduled</template>
    </alerts>
    <alerts>
        <fullName>Lead_Follow_up1</fullName>
        <description>Lead Follow up1</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>livia.livi1319@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <alerts>
        <fullName>X1hr_created_date</fullName>
        <ccEmails>lavanya199@gmail.com, lavanya.y@autorabit.com, abhi.m@autorabit.com</ccEmails>
        <description>1hr created date</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lead_Followup_1_hr</template>
    </alerts>
    <alerts>
        <fullName>lead_followup_1day</fullName>
        <ccEmails>lavanya199@gmail.com, lavanya.y@autorabit.com, abhi.m@autorabit.com</ccEmails>
        <description>lead followup 1day</description>
        <protected>false</protected>
        <recipients>
            <recipient>jaanu@domain.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Followup_1day</template>
    </alerts>
    <rules>
        <fullName>Lead - Task - Contacted</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Working - Contacted</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Follow_up_task_1hr</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead FollowupTwo</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Working - Contacted</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_after_1_hr</name>
                <type>Alert</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>lead_followup_1day</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Follow_up_2hrs</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.CreatedDate</offsetFromField>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X1hr_created_date</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Lead.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead follow up</fullName>
        <actions>
            <name>Lead_Follow_up</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Working - Contacted</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Lead_Follow_up1</name>
                <type>Alert</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Follow_up_task_1hr</fullName>
        <assignedTo>jaanu@domain.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow up - task - 1hr</subject>
    </tasks>
</Workflow>
