({
	addition: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) + Number(n2);
        console.log(res);
        component.set("result",res);
	},
    subtraction: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) - Number(n2);
        component.set("result",res);
	},
    multiplication: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) * Number(n2);
        component.set("result",res);
	},
    division: function(component, event, helper) {
		var n1 = component.get("v.number1");
        var n2 = component.get("v.number2");
        var res = Number(n1) / Number(n2);
        component.set("result",res);
	}
})