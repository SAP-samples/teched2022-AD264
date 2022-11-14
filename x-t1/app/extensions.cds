using { sap.capire.incmgt.Incidents } from '@capire/incidents';

extend Incidents with {
  component   : String  @title: 'Component';
  orientation : String  @title: 'Panel Orientation';
  weather     : String  @title: 'Weather Conditions';
  output      : Decimal @title: 'Panels'' Power Output';
  battery     : Decimal @title: 'Battery Fill Level';
};
