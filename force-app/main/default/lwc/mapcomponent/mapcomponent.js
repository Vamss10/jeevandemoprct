import { LightningElement,wire,api} from 'lwc';
import maps from '@salesforce/apex/mapsearch.maps'
export default class Mapcomponent extends LightningElement {
@api address = '';
placelist = [];
mapMarkers = [];
markersTitle = 'BRANCH LOCATIONS';
keyhandler(event)
{
    this.address = event.target.value;  
    console.log(this.address);
    this.getdetails();
}
getdetails(){
    maps({add: `${this.address}`})
    .then(data=>{
        console.log(data);
        this.placelist = data;
        this.formatResponse(data);
    })
    .catch(error=>{
        console.log(error);
    })
}

formatResponse(data){
    this.mapMarkers = data.map(item=>{
        return {
            location:{
                Name: item.Name,
                City:item.City ||'',
                PostalCode: item.PostalCode || '',
                State: item.State || '',
                Country: item.Country || ''
            },
            icon:'utility:salesforce1',
            title:item.Name,
            value:item.Name,
            description:item.description
        }
    })
    this.selectedMarker = this.mapMarkers.length && this.mapMarkers[0].value
}
callMarkerHandler(event){
    this.selectedMarker = event.detail.selectedMarkerValue
}

// @wire(maps,{add : `$address`})
//     maphandler({data,error}){
//         if(data){
//             console.log(data);
//         }
//         else{
//             console.log(error);
//         }
//     }
}