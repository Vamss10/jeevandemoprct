trigger conInsert on Account (After update) {
  list<Contact> c1 = new List<Contact>();     
    for(Account a : Trigger.New){
        Integer j = (Integer)a.Number_Of_Contacts__c;
        for(integer i = 0; i < j; j++)
        {
        Contact c = new Contact();
        c.LastName = 'soe' + i;
        c.AccountId = a.Id;
        c1.add(c);
        }
        
    }
    insert c1;
}