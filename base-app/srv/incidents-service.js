const cds = require ('@sap/cds')

class IncidentsService extends cds.ApplicationService {
  init(){
    // this.on('READ','Incidents_urgency', ()=>[
    //   { value: 'high',    label: 'High' },
    //   { value: 'medium',  label: 'Medium' },
    //   { value: 'low',     label: 'Low' },
    // ])
    return super.init()
  }
}
module.exports = IncidentsService