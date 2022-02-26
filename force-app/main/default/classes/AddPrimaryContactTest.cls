@isTest
public class AddPrimaryContactTest {
    
    @isTest public static void Test1()
    {
        list<Account> a2 = new list<Account>();
        for(Integer i = 0; i < 100; i++)
        {
            if(i<50)
            {
            Account a = new Account(Name = 'Testing' + i,BillingState = 'NY');
                a2.add(a);
            }
            else
            {
              Account a1 = new Account(Name = 'Testing' + i,BillingState = 'CA'); 
                a2.add(a1);
            }
            insert a2;
        }
        Test.startTest();
        contact w = new contact(LastName = 'lname');
        System.enqueueJob(new AddPrimaryContact(w,'CA'));
        Test.stopTest();
        System.assertEquals(50, [select count() from Contact]);
    }

}