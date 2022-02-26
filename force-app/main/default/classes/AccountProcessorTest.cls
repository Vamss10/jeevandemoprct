@isTest
public class AccountProcessorTest {
 
    @isTest public static void Test1()
    {
		list<Id> a1 = new List<Id>();
        Account a = new Account(Name = 'Sujith');
        insert a;
        a1.add(a.Id);
        list<Contact> c1 = new list<Contact>();
        for(integer i = 0;i < 5; i++)
        {
            Contact c = new Contact(LastName = 'Test' + i,AccountId = a.Id );
            c1.add(c);
            system.debug(c);
            
        }
        insert c1;
        Test.startTest();
        AccountProcessor.countContacts(a1);
        Test.stopTest();
        Account arr = [select Id, Number_Of_Contacts__c from Account where Id =:a.Id];
        system.assertEquals(5,arr.Number_Of_Contacts__c);
        
    }
}