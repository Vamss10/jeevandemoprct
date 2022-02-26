({
	addition: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) + Number(n2);
        console.log(res);
        component.set("v.result",res);
        component.set("v.iscalculated",true);
        
	},
    subtraction: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) - Number(n2);
        component.set("v.result",res);
        component.set("v.iscalculated",true);
	},
    multiplication: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) * Number(n2);
        component.set("v.result",res);
        component.set("v.iscalculated",true);
	},
    division: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) / Number(n2);
        component.set("v.result",res);
        component.set("v.iscalculated",true);
	}
})