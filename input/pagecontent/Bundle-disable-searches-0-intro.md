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

We get the following set of Bundles, limiting the number of SearchParameters changed to 10-20 per Bundle.

- [Bundle Disable Searches Core](Bundle-disable-searches-core.html)
- [Bundle Disable Searches Patient](Bundle-disable-searches-patient.html)
- [Bundle Disable Searches Allergies](Bundle-disable-searches-allergy.html)
- [Bundle Disable Searches Conditions](Bundle-disable-searches-condition.html)
- [Bundle Disable Searches DiagnosticReport](Bundle-disable-searches-diagnostic.html)
- [Bundle Disable Searches DocumentReference](Bundle-disable-searches-documentreference.html)
- [Bundle Disable Searches Immunization](Bundle-disable-searches-immunization.html)
- [Bundle Disable Searches Observation](Bundle-disable-searches-observation.html)

Submit the Bundles to HAPI, then force a $reindex operation. You should see all the unnecessary indexes go away, and those that you need will stay.

#### How this was built

1. Start with the [FHIR R4 Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
2. Download the [search-parameters.json](https://hl7.org/fhir/R4/search-parameters.json)
3. Remove the above entries by "name", as we want to keep these index
   1. Note that some of the above are generic such as `_lastUpdated`, `_id`, `identifier`, and `patient`
   2. Note that the need for `DocumentReference.type` means that you need the generic `clinical-type` for everything
4. Remove the resources NOT mentioned above, as we don't need those as we will never populate those resources
5. for each entry kept, remove the `extension`,  `publisher`, `contact`, and `description`. These are not needed and can cause conflicts given that this is not the same as published by HL7, and the descriptions contain narrative with links into FHIR core but the descriptions are not helpful.
6. for each entry add request, POST to SearchParameter
7. MOST critical set each SearchParameter retained to `status` = `retired`

Note: Adding these resources to the HAPI server will cause the SearchParameter parameters to be indexed. Unclear if these should be preemptively disabled, or if disabling them will cause internal hapi performance problems. So I leave them enabled.

#### Rebuild indexes

After the update you need to execute the $reindex operation. might want to do this on a per-resource basis as the reindex will take a significant amount of time. Given that we are removing unnecessary parameters, there is just energy being spent to remove them.
