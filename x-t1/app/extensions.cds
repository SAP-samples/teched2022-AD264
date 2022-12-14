using { sap.capire.incmgt.Incidents } from '@capire/incidents';

  /** Template for adding extension fields to incidents... */
extend Incidents with {

  ext_field1 : String @title: '...';
  ext_field2 : String @title: '...' enum {
    value1 @title: '...' @description: '...';
    value2 @title: '...' @description: '...';
  };

}
