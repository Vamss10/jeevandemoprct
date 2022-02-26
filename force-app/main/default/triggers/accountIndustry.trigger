trigger accountIndustry on Account (After insert) {
    list<Contact> c1 = new list<Contact>();
    for(Account a : Trigger.New){
        if(a.Industry == 'Banking'){
            Contact c = new Contact();
            c.LastName = a.Name;
            c.Phone = a.Phone;
            c1.add(c);
        }
    }
    insert c1;

}