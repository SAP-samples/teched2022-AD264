using { sap.capire.incmgt } from '../db/schema';

service IncidentsService {
  entity Incidents      as projection on incmgt.Incidents;
  entity Customers      as projection on incmgt.Customers;
  entity Appointments   as projection on incmgt.Appointments;
  entity ServiceWorkers as projection on incmgt.ServiceWorkers;
}
