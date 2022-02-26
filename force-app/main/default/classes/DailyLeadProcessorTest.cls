@isTest
public class DailyLeadProcessorTest {
  
      public static String CRON_EXP = '0 0 0 25 6 ? 2022';
    @isTest public static void test()
    {
        list<Lead> l = new list<Lead>();        
        for(integer i = 0; i < 200; i++)
        {
            Lead l1 = new Lead(LastName = 'Gagan' + i, Company = 'DC');
            l.add(l1);
        }
        insert l;
        Test.startTest();
        String jobId = system.schedule('sujji1',CRON_EXP,new DailyLeadProcessor());
        Test.stopTest();
       for(Lead lx : [select Id,LeadSource from Lead where LastName LIKE 'Gaga%' AND Company = 'DC'])
       {
           System.assertEquals('Dreamforce', lx.LeadSource);
       }
       
       
    }
}