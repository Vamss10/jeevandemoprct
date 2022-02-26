public class unavilableTimeSlotsForHolidays implements LxScheduler.ServiceResourceScheduleHandler{
    
    public static List<LxScheduler.ServiceResourceSchedule> getUnavailableTimeslots(LxScheduler.ServiceAppointmentRequestInfo requestInfo){
        List<lxscheduler.ServiceResourceInfo> serviceResources = requestInfo.getServiceResources();
        system.debug(serviceResources);
        DateTime startDate=requestInfo.getStartDate();
        system.debug(startDate); // why?
        DateTime endDate=requestInfo.getEndDate();
        system.debug(endDate);
       set<Id> serviceResourceId = new set<Id>();
        set<Id> serviceTerritoryId = new set<Id>();
       List<ServiceTerritoryMember> st = new List<ServiceTerritoryMember>();
       Map<Id,Id> mp = new Map<Id,Id>();
           //Retriving the Service Resource Ids 
         for(lxscheduler.ServiceResourceInfo srs : serviceResources){
           serviceResourceId.add(srs.getServiceResourceId());
        
        }
        
         for(Id ids : serviceResourceId){
         st = [select Id,ServiceResourceId,ServiceTerritoryId from  ServiceTerritoryMember where ServiceResourceId =: ids];
         }
        
        //Retriving the Service territory Ids 
        for(ServiceTerritoryMember st1 : st){
          mp.put(st1.ServiceResourceId,st1.ServiceTerritoryId);
          serviceTerritoryId.add(st1.ServiceTerritoryId);
        }
        // Map<Id,Banking_Center_Holiday__c> mp1 = new Map<Id,Banking_Center_Holiday__c>();
         //Retriving the Holidays linked to Service territory Ids 
        for(Id ids : serviceTerritoryId){
          List<Banking_Center_Holiday__c> bch = [ Select Name,Service_Territory__c from Banking_Center_Holiday__c where Service_Territory__c =: ids];
         // mp1.put(bch.Service_Territory__c,bch);  
        }
      
       
        List<lxscheduler.ServiceResourceSchedule> resourceUnavailability = new List<lxscheduler.ServiceResourceSchedule>();
        Set<lxscheduler.UnavailableTimeslot> unavailabilityIntervals = new Set<lxscheduler.UnavailableTimeslot>();
        return resourceUnavailability;
     }
}