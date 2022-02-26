public with sharing class mapsearch {
    @AuraEnabled
    public static list<ServiceTerritory> maps(String add){
        String str = '%'+add+'%'; 
        list<ServiceTerritory> st = [select Id,Name,Country,City,State,PostalCode from ServiceTerritory Where City LIKE :str];
       System.debug(st);
       System.debug('sting operation');
        return st;
    }
    
}