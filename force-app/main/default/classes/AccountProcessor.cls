public class AccountProcessor {
    
    @future 
    public static void countContacts(List<Id> ids)
    {
        list<Account> a1 = new List<Account>();
        for(AggregateResult ar : [select AccountId,count(Id) from Contact where AccountId =: ids group by AccountId])
        {
            Account a = new Account(Id =(Id) ar.get('AccountId'),Number_Of_Contacts__c = (Integer)ar.get('expr0'));
            a1.add(a);
        }
        DataBase.update(a1,false);
        
      

    }

}