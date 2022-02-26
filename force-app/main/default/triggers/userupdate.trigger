trigger userupdate on User (before update) {

    SS_Cls_AbsenceTriggerHandler.validateUpdate(Trigger.New);
}