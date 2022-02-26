({
	handleCreateLoad: function (cmp, event, helper) {
        var nameFieldValue = cmp.find("nameField")
        nameFieldValue.set("v.value", "My New Account");
      
        
    },
    reset : function (cmp, event, helper) {
        CONSOLE.LOG('HEY');
         cmp.find("nameField").forEach(function(x){
                               x.reset();
                               });
    },
     handleSubmit : function(cmp, event, helper) {
       // event.preventDefault();       // stop the form from submitting
        const fields = event.getParam('fields');
       // fields.AnnualRevenue = 1000; // modify a field
        cmp.find('myRecordForm').submit(fields);
    },
     handleSuccess : function(component, event, helper) {
        component.find('notifLib').showToast({
            "variant": "success",
            "title": "Account Created",
            "message": "Record ID: " + event.getParam("id")
        });
    }
    
    
})