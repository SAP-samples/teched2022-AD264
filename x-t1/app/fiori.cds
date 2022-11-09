//
// Extensions for Fiori UIs
//

using { IncidentsService, sap.capire.incmgt.Incidents, EnumsCodeList } from './extensions';

/** Add your ext fields to list pages */
annotate IncidentsService.Incidents with @(
  UI.LineItem: [
    ... up to { Value: urgency }, //> new columns go after this one
    { Value: ext_field1 },
    { Value: ext_field2 },
    ... //> rest of pre-defined columns go here
   ],
);


/** Add your ext fields to details pages */
annotate IncidentsService.Incidents with @(
  UI.Facets: [
    ... up to { ID: 'OverviewFacet' }, //> we want a new facet after this pre-defined one
    { Label: 'System Details', $Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#SystemDetails' },
    ... //> rest of pre-defined facets go here
  ],
  UI.FieldGroup #SystemDetails: {
    Data: [
      { Value : ext_field1 },
      { Value : ext_field2 },
    ]
  }
);


/** Add Value List support for ext fields with enums */
define entity sap.capire.incmgt.Incidents_ext_field2 : EnumsCodeList {};
extend entity Incidents with {
  ext_field2_: Association to sap.capire.incmgt.Incidents_ext_field2 on ext_field2_.value = ext_field2;
  extend ext_field2 with @Common : {
    Text: ext_field2_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_ext_field2',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: ext_field2, ValueListProperty: 'value' },
      ],
    },
  };
}
