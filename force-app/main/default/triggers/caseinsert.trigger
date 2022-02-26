trigger caseinsert on Case (before insert) {
    for(Case c : Trigger.New){
        if(c.origin == 'Email'){
            c.status = 'New';
            c.Priority = 'Medium';
        }
        
    }
}