public class SS_Cls_AbsenceTriggerHandler {

    public static void validateUpdate(list<User> u){
        for(user u1 : [select Id,Name from user where Id =: u ]){
          // Boolean hasCustomPermission = FeatureManagement.checkPermission('Custom_Permissions');
            if(FeatureManagement.checkPermission('Custom_Permissions')){
                
            }
            
            else{
                
            }
        }
    }
}