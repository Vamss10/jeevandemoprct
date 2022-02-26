({
clickhandler: function(component, event, helper) {
    
      debugger;
        var workspaceAPI = component.find("workspace");
      /*  workspaceAPI.openTab({
            url: 'https://vamss-dev-ed.lightning.force.com/lightning/r/Opportunity/0062y000003hXfTAAU/view',
            focus: true
        }).then(function(response) {*/
            workspaceAPI.openSubtab({
               // parentTabId: response,
              //  recordId: '0032y00000AUTaXAAX',
                url: 'https://vamss-dev-ed.lightning.force.com/lightning/r/Account/0012y000006sGRoAAM/view',
                focus: true
           
        })
    }
   /* debugger;
        var workspaceAPI = component.find("workspace");
        workspaceAPI.openTab({
            recordId: '5002y00000BxXYiAAN',
            focus: true
        }).then(function(response) {
            workspaceAPI.openSubtab({
                parentTabId: response,
                recordId: '0032y00000AUTaXAAX',
                focus: true
           
        }).then(function(tabInfo) {
            console.log("The recordId for this tab is: " + tabInfo.recordId);
        });
        }).catch(function(error) {
            console.log(error);
        });
    }*/
})