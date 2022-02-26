trigger AccountAddressTrigger on Account (before insert,before update) {
 if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        for(Account a : Trigger.new)
        {
            if(a.Match_Billing_Address__c == true)
            {
                 a.ShippingPostalCode = a.BillingPostalCode;
 
            }
        }
    }
}