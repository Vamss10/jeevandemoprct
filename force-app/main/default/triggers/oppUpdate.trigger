trigger oppUpdate on Opportunity (before update) {

    Map<Id,opportunity> oldmap = Trigger.oldMap;
    Map<Id,opportunity> newmap = Trigger.newMap;
    set<Id>  s = oldmap.keySet();
    for(Id ids : s){
        opportunity old = oldmap.get(ids);
        opportunity news = newmap.get(ids);
        if(old.stageName !='Closed Won' && news.StageName == 'Closed Won'){
            news.StageName = 'Closed Won';
            news.Type = 'New Customer';
        }
    }
    

    
}