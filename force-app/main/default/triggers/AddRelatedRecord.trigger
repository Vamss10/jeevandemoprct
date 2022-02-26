trigger AddRelatedRecord on Account (after insert,after update) {

    list<Contact> c1 = new List<Contact>();
    if(trigger.isafter && trigger.isinsert){
        
        for(Account a : Trigger.New){
            
            Contact c = new Contact();
            c.LastName = 'JACKSON';
            c.AccountId = a.Id;
            c1.add(c);
        }        
    }
    insert c1;
    
    if(trigger.isupdate && trigger.isafter){
        
        //updateContact uc = new updateContact();
        //ID batchprocessid = Database.executeBatch(reassign);
        
        ID batchprocessid  = Database.executeBatch(new updateContact());
        system.debug('batchprocessid----->' + batchprocessid);
    }
    
}