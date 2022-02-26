public class ContactRecords {
    @AuraEnabled
    public static list<contact> getcontacts(string rId)
    {
        list<contact> c = [select Id,LastName,FirstName,Email,Name from Contact WHERE AccountId =: rId];
        return c;
    }
    @AuraEnabled
public static List <Account> fetchAccounts() {
 List<Account> accList = [SELECT Id, Name, BillingState,Website, Phone, Industry, Type from Account LIMIT 10];
      return accList;

    }
    
    @AuraEnabled
    public static void updateRating(string recid)
    {
        Account a = new Account();
        a.Id = recid;
        a.Rating = 'HOT';
        update a;
    }


    
    @AuraEnabled
    public static Contact createcon(Contact con,string aId)
    {
        system.debug(aId);
        contact c = new contact();
        c.LastName = con.LastName;
        c.FirstName = con.FirstName;
        c.Phone = con.Phone;
        c.Email = con.Email;
        c.AccountId = aId;
        insert c;
        return c;
        }
    
    @AuraEnabled
    public static case createcase(Case c1)
    {
        insert c1;
        return c1;
    }

}