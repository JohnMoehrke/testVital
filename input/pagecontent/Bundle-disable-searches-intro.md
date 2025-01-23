Given that this is all we need are the following Resources and search parameters.


| Resource Type      | Searches                                                                     |
| ------------------ | ---------------------------------------------------------------------------- |
| AllergyIntolerance | _lastUpdated, _id, identifier, patient, clinical-status, verification-status |
| Condition          | _lastUpdated, _id, identifier, patient, clinical-status                      |
| Observation        | _lastUpdated, _id, identifier, patient, category, status                     |
| Immunization       | _lastUpdated, _id, identifier, patient, status                               |
| DocumentReference  | _lastUpdated, _id, identifier, patient, status, type                         |
| DiagnosticReport   | _lastUpdated, _id, identifier, patient, status, category                     |
| Patient            | _lastUpdated, _id, identifier                                                |
{: .grid}

Submit the Bundle to HAPI, then force a reindex. You should see all the unnecessary indexes go away, and those that you need will stay.

Note: The Bundle does include disabling parameters that are included in the above Resources for which we don't populate, so the inclusion to disable them might not actually do any good.

Note: The Bundle does not include parameters for Resources that we don't put into the HAPI server. Unclear if disabling all these others is helpful or not. HAPI does not seem to make indexes unless there is data within that index.