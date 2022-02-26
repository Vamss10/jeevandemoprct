public class LeadProcessor implements Database.Batchable<sObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
      return Database.getQueryLocator('select Id,LeadSource from Lead');
    }
    
    public void execute(DataBase.BatchableContext bc, list<Lead> l)
    {
        list<Lead> l2 = new list<Lead>();
        for(Lead l1 : l)
        {
            l1.LeadSource = 'Dreamforce';
            l2.add(l1);
            
        }
        update l2;
    }
    public void finish(DataBase.BatchableContext bc)
    {
        
    }

}