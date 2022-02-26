@isTest
public class TestDataFactory {
   public static list<Account> Acc(Integer nacc,Integer nopp)
   {
       List<Account> a = new List<Account>();
       for(integer i= 0; i < nacc; i++)
       {
           Account a1 = new Account(Name = 'Test' + i);
           a.add(a1);
       }
       insert a;
       
       List<Opportunity> op = new List<Opportunity>();
       for(integer j = 0;j < nacc; j++)
       {
           Account a2 = a[j];
           for(integer k = 0; k < nopp; k++)
           {
               Opportunity op1 = new opportunity(Name=a2.Name + ' Opportunity ' + k,
                                       StageName='Prospecting',
                                       CloseDate=System.today(),
                                       AccountId=a2.Id);
               op.add(op1);
           }
           
       }
       insert op;
       return a;
   }
}