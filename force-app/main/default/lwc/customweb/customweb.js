import { LightningElement,api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class Customweb extends NavigationMixin(LightningElement) {

@api recordId;
    clickhandler(event){
        console.log('clicked');
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: '5002y00000BxXYiAAN',
                actionName: 'view'
            }
        });
    }
}