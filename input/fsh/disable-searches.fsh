Instance: disable-searches
InstanceOf: Bundle
Title: "Disable Unnecessary searches"
Description: "based on the searches that va.gov and backend need"
Usage: #example
* type = #batch
// General parameters
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/Resource-id"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/Resource-lastUpdated"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/clinical-identifier"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/clinical-patient"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DomainResource-text"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Resource-content"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Resource-profile"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Resource-query"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Resource-security"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Resource-source"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Resource-tag"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/clinical-code"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/clinical-date"
// AllergyIntolerance parameters
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/AllergyIntolerance-clinical-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/AllergyIntolerance-verification-status"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-asserter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-category"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-criticality"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-last-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-manifestation"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-onset"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-recorder"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-route"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/AllergyIntolerance-severity"

// Condition
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/Condition-clinical-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/Condition-subject"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-abatement-age"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-abatement-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-abatement-string"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-asserter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-body-site"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-category"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-encounter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-evidence"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-evidence-detail"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-onset-age"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-onset-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-onset-info"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-recorded-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-severity"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-stage"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Condition-verification-status"

// DiagnosticReport
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/DiagnosticReport-category"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/DiagnosticReport-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/DiagnosticReport-subject"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-based-on"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-conclusion"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-issued"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-media"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-performer"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-result"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-results-interpreter"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DiagnosticReport-specimen"

// DocumentReference
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/DocumentReference-status"
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/DocumentReference-subject"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-authenticator"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-author"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-category"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-contenttype"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-custodian"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-description"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-event"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-facility"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-format"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-language"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-location"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-period"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-related"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-relatesto"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-relation"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-security-label"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-setting"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/DocumentReference-relationship"

// Immunization
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/Immunization-status"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-location"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-lot-number"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-manufacturer"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-performer"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-reaction"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-reaction-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-reason-code"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-reason-reference"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-series"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-status-reason"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-target-disease"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Immunization-vaccine-code"

// Patient
//// keep
* entry[+].request.method = #PATCH
* entry[=].resource = activate
* entry[=].request.url = "SearchParameter/Patient-identifier"
//// retire
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-active"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-address"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-address-city"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-address-country"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-address-postalcode"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-address-state"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-address-use"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-birthdate"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-death-date"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-deceased"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-email"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-family"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-gender"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-general-practitioner"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-given"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-language"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-link"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-name"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/Patient-organization"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-phone"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-phonetic"
* entry[+].request.method = #PATCH
* entry[=].resource = retire
* entry[=].request.url = "SearchParameter/individual-telecom"

// more complex
// clinical-type // need to keep for DocumentReference, but could turn off for all other base

Instance: activate
InstanceOf: Parameters
Usage: #inline
* parameter.name = "operation"
* parameter.part[0].name = "type"
* parameter.part[=].valueCode = #replace
* parameter.part[+].name = "path"
* parameter.part[=].valueString = "status"
* parameter.part[+].name = "value"
* parameter.part[=].valueCode = #active

Instance: retire
InstanceOf: Parameters
Usage: #inline
* parameter.name = "operation"
* parameter.part[0].name = "type"
* parameter.part[=].valueCode = #replace
* parameter.part[+].name = "path"
* parameter.part[=].valueString = "status"
* parameter.part[+].name = "value"
* parameter.part[=].valueCode = #retired
