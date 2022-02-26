public class RandomContactFactory {

     public static list<Contact> generateRandomContacts(Integer n, String lastname)
    {
        list<Contact> c = new list<Contact>();
        for(integer i = 0; i <= n; i++)
        {
            Contact c1 = new Contact(FirstName ='Test' + i,LastName = lastname);
            c.add(c1);
        }
        return c;
    }
}