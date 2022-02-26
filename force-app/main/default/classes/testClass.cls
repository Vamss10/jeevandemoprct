@isTest
public class testClass {
 @isTest
    public static void sample(){
        ServiceResource sr = new ServiceResource(Name = 'Test Name', ResourceType = 'Technician');
        insert sr;
        OperatingHours op = new OperatingHours(Name = 'TEST TIME ZONE',TimeZone = 'Asia/Kolkata');
        insert op;
        ServiceTerritory st = new ServiceTerritory(Name = 'Test Teritorry', OperatingHoursId = op.Id);
        insert st;
        Date myDat = Date.newInstance(2021, 10, 28);
        ServiceTerritoryMember stm = new ServiceTerritoryMember(ServiceResourceId = sr.Id,ServiceTerritoryId = st.Id,TerritoryType = 'Primary',EffectiveStartDate =myDat);
        insert stm;
        Date myDate = Date.newInstance(2021, 11, 04);
        Banking_Center_Holiday__c bch = new Banking_Center_Holiday__c(Name = 'DIWALI',Date__c = myDate,Service_Territory__c = st.Id);
        insert bch;
        
        Test.startTest();
        Account a = new Account(Name = 'TestAccount');  
        insert a;
        ServiceAppointment sa = new ServiceAppointment(ParentRecordId = a.Id,EarliestStartTime = system.now(),DueDate = system.now(),Status = 'In Progress');            
        Test.stopTest();
}
}