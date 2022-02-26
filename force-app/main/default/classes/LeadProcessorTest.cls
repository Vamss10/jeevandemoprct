@istest
public class LeadProcessorTest {

    @istest static void test()
    {
        list<lead> l1 = new list<lead>();
        for(integer i = 0; i < 200; i++)
        {
            Lead l = new lead(LastName = 'Pallavi' + i, Company = 'MCU');
            l1.add(l);
        }
        insert l1;
        Test.startTest();
        LeadProcessor i = new LeadProcessor();
        DataBase.executeBatch(i);
        Test.stopTest();
        system.assertEquals(200, [select count() from lead where LastName LIKE 'Pallav%']);
        
        
    }
}