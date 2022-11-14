//
// Extensions for Fiori UIs
//

using { IncidentsService, sap.capire.incmgt.Incidents, EnumsCodeList } from './extensions';

/** Add your ext fields to list pages */
annotate IncidentsService.Incidents with @(
  UI.LineItem: [
    ... up to { Value: urgency }, //> new columns go after this one
    { Value: component }, //> our new column
    ... //> rest of pre-defined columns go here
  ],
);

/** Add your ext fields to details pages */
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
