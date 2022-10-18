using { sap.capire.incmgt.Incidents } from '@capire/incidents';

extend Incidents with {

  component   : String @title: 'Component' enum {
    panels      @title: 'Solar Panels';
    battery     @title: 'Battery';
    contoller   @title: 'Controller';
    other       @title: 'Some Other Component';
  };

  orientation : String @title: 'Panel Orientation' enum {
    north @title: 'North'; ne @title: 'North East';
    east  @title: 'East';  se @title: 'South East';
    south @title: 'South'; sw @title: 'South West';
    west  @title: 'West';  nw @title: 'North West';
  };

  weather     : String  @title: 'Weather Conditions' enum {
    sunny    @title: 'Sunny';
    brigth   @title: 'Bright';
    covered  @title: 'Covered';
    rainy    @title: 'Rainy';
  };

  output      : Decimal @title: 'Panels'' Power Output';
  battery     : Decimal @title: 'Battery Fill Level';

};
