public class triggier {
    public static void methods(list<Account> n)
    {
        list<Opportunity> op = new  list<Opportunity>();
        for(Account a : n)
        {
        Opportunity opp = new Opportunity(Name = 'Test Opp1',StageName = 'Qualification' );
        opp.CloseDate = date.newInstance(2021, 02, 14);
        opp.AccountId = a.Id;
        op.add(opp);
        }
        if(!op.isEmpty())
        {
        insert op;
        }

        
    }

}