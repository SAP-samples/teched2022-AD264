//
// Extensions for Fiori UIs
//

using { IncidentsService, acme.incmgt.Incidents, EnumsCodeList } from './extensions';

annotate IncidentsService.Incidents with @(
  UI.Facets: [ ... up to {ID:'OverviewFacet'}, {
    $Type  : 'UI.ReferenceFacet',
    Label  : 'System Details',
    ID     : 'SystemDetailsFacet',
    Target : '@UI.FieldGroup#SystemDetails'
  }, ... ],
  UI.FieldGroup #SystemDetails: {
    Data: [
      { Value : component },
      { Value : orientation },
      { Value : output },
      { Value : battery },
      { Value : weather },
    ]
  }
);


//
// Value Lists
//

define entity acme.incmgt.Incidents_component : EnumsCodeList {};
extend entity Incidents with {
  component_: Association to acme.incmgt.Incidents_component on component_.value = component;
  extend component with @Common : {
    Text: component_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_component',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: component, ValueListProperty: 'value' },
      ],
    },
  };
}

define entity acme.incmgt.Incidents_orientation : EnumsCodeList {};
extend entity Incidents with {
  orientation_: Association to acme.incmgt.Incidents_orientation on orientation_.value = orientation;
  extend orientation with @Common : {
    Text: orientation_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_orientation',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: orientation, ValueListProperty: 'value' },
      ],
    },
  };
}

define entity acme.incmgt.Incidents_weather : EnumsCodeList {};
extend entity Incidents with {
  weather_: Association to acme.incmgt.Incidents_weather on weather_.value = weather;
  extend weather with @Common : {
    Text: weather_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_weather',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: weather, ValueListProperty: 'value' },
      ],
    },
  };
}
