public class UnavailableTimeSlotForResource {
    
    public class resourceWrapper{
        
        public String WorkTypeGroupId;
        public list<String> TerritoryIds;
        public String AccountId;
        public DateTime StartTime;
        public DateTime EndTime;
        public list<String> resouceId; 
    }
    
    public static void getAvailableTimeSlots(resourceWrapper infoWrapper){
        lxscheduler.GetAppointmentSlotsInput input = new lxscheduler.GetAppointmentSlotsInputBuilder()
            .setWorkTypeGroupId(infoWrapper.WorkTypeGroupId)
            .setTerritoryIds(infoWrapper.TerritoryIds)
            .setStartTime(infoWrapper.StartTime.format('yyyy-MM-dd\'T\'HH:mm:ssZ'))
            .setEndTime(infoWrapper.EndTime.format('yyyy-MM-dd\'T\'HH:mm:ssZ'))
            .setAccountId(infoWrapper.AccountId)
            .setRequiredResourceIds(infoWrapper.resouceId)
            //.setSchedulingPolicyId('0Vrxx0000004CAe')
            .setApiVersion(Double.valueOf('52.0'))
            .build();
        
        String response = lxscheduler.SchedulerResources.getAppointmentSlots(input);
        system.debug('response - '+response);            
    }
    
    
}