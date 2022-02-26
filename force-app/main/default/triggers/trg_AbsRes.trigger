trigger trg_AbsRes on ResourceAbsence (before insert) {
    
    if(trigger.isBefore && trigger.isinsert){
        resAbsenceCls.resAbsMethod(Trigger.New);
    }

}