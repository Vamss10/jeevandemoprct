public class updateContact implements Database.Batchable<sObject> {
   
    
    public Database.QueryLocator start(Database.BatchableContext bc){
     
        String s = 'select Id,Name,Phone from Account';
        return Database.getQueryLocator(s);
        
    }
    
    public void execute(Database.BatchableContext bc,list<Account> s1){
        list<Account> acc = s1;
        list<Contact> c1 = new list<Contact>();
        for(Account a : acc){
            
        for(Contact c : [select Id,LastName,Phone,Email from Contact where AccountId =: a.Id])
        {
            Contact cc = new Contact();
            cc.Id = c.Id;
            cc.Phone = a.Phone;
            cc.Email = 'jackson@gail.com';
            c1.add(cc);
        }
            
       }
        system.debug(c1);
        upsert c1;
    }
    
    public void finish(Database.BatchableContext bc){
        
        AsyncApexJob a = [SELECT Id, Status, NumberOfErrors, JobItemsProcessed,
      TotalJobItems, CreatedBy.Email
      FROM AsyncApexJob WHERE Id =
      :bC.getJobId()];
        
        system.debug('BATCH ID--->' + a.Id);
        
    }
    
  

}