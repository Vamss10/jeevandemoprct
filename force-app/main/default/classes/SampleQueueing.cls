public class SampleQueueing implements Queueable{
    list<Account> a1 = new list<Account>();
    public SampleQueueing(list<Account> a)
    {
       a1 = a;   
        methods();
    }
    public void methods()
    {
         list<Contact> c1 = new List<Contact>();
       for(Account a2 : a1)
       { contact c = new contact(LastName = 'Hari1', AccountId = a2.Id);
           c1.add(c); }
        insert c1; }
    public void execute(QueueableContext context)
    {
       Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
       UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
              User u = new User(alias = 'jtava', email='vamsiraone480@gmail.com', 
            emailencodingkey='UTF-8', lastname='Tavata', 
            languagelocalekey='en_US', 
            localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
            timezonesidkey='America/Los_Angeles', 
            username='unname@sales.com');
        insert u;
      }
}