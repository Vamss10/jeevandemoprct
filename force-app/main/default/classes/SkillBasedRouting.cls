public class SkillBasedRouting {
@InvocableMethod
public static void routeskills(list<String> caseIds)
{
    list<Case> c = [select Id,Subject from Case where Id =: caseIds];
    list<Skill> s = [select Id,MasterLabel from Skill]; 
    list<String> MatchingId = new list<String>();
    list<SkillRequirement> sr = new list<SkillRequirement>();
    for(case caserec :  c)
    {
        PendingServiceRouting psr = new PendingServiceRouting();
        psr.WorkItemId = caserec.Id;
        psr.RoutingType = 'SkillsBased';
        psr.RoutingPriority = 1;
        psr.ServiceChannelId = '0N92y000000XZMZ';
        psr.CapacityWeight = 1;
        psr.RoutingModel = 'MostAvailable';
        psr.IsReadyForRouting = false;
        insert psr;
        
        for(Skill s1 : s)
        {
            if(caserec.Subject.contains(s1.MasterLabel))
            {
               MatchingId.add(s1.Id); 
            }
        }
        
        for(string g : MatchingId)
        {
          SkillRequirement sr1 = new SkillRequirement();
            sr1.SkillId = g;
            sr1.RelatedRecordId = psr.Id;
            sr1.SkillLevel = 5;
            sr.add(sr1);
        }
        insert sr;
        
         psr.IsReadyForRouting = True;
        update psr;
        
    }
}
}