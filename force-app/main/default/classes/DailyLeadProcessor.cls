public class DailyLeadProcessor implements Schedulable{
    
    public void execute(SchedulableContext ctx)
    {
        list<Lead> l = new list<lead>();
        for(Lead l1 : [select Id from Lead Where LeadSource = null])
        {
            l1.LeadSource  = 'Dreamforce';
            l.add(l1);
        }
        update l;
    }

}