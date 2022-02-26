public class AddPrimaryContact implements Queueable {
    public string states;
    
    Contact c1;
    public AddPrimaryContact(Contact c,String Stateabbreviation)
    {
       c1 = c.clone(false,false,false,false);
        states = Stateabbreviation;
       
    }
    public void execute(QueueableContext context)
    {
        List<Contact> r = new List<Contact>();
        for(Account a : [Select Id,Name from Account where BillingState  =: states LIMIT 200])
        {
           c1.AccountId = a.Id;
            r.add(c1);
        }
        insert r;
    }

}