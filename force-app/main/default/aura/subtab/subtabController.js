({
    clickhandler : function(component, event, helper) {
        var pagereference  = component.find('v.navigation');
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'list'
            },
            state: {
                filterName: "MyAccounts"
            }
        };
    }
})