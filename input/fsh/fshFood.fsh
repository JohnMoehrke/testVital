

Instance: ex-height
InstanceOf: Observation
Title: "HEIGHT"
Description:  "6003503"
Usage: #example
//* contained[+] = ex-location
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#8302-2 "Body height"
* code.text = "HEIGHT"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = "2004-09-24T10:32:00Z"
//* performer[+].extension[+].valueReference = Reference(ex-location)
* performer[+].display = "Location 2938"
* valueQuantity = 71 '[in_i]' "in_i"




Instance:   ex-vitals-1
InstanceOf: Observation
Usage: #example
Title: "Example 1 of an vital-sign"
Description: """
Example from a mock 
"""
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "BLOOD PRESSURE"
* code.coding[+] = LOINC#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-09-24T11:17:54Z
* component[+].code = LOINC#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 126 'mm[Hg]'
* component[=].valueQuantity.unit = "mmHg"
* component[+].code = LOINC#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 70 'mm[Hg]'
* component[=].valueQuantity.unit = "mmHg"
//* contained[+] = ex-location
//* performer[+].extension[+].valueReference = Reference(ex-location)
* performer[+].display = "Location 2938"

Instance: ex-location
InstanceOf: Location
Title: "Location DAYTON Lab"
Description: "This example derived off of a mock data"
Usage: #inline
* name = "DAYTON"


Instance:   ex-patient
InstanceOf: Patient
Title:      "Dummy Patient example"
Description: "Dummy patient example for completeness sake. No actual use of this resource other than an example target"
Usage: #example
//* identifier = urn:uuid:2.16.840.1.113883.4.349#MVI // MVI ICN VALUE WITH CHECKSUM>
// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
// wiki - https://en.wikipedia.org/wiki/John_Jacob_Jingleheimer_Schmidt
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* name[+].use = #nickname
* name[=].family = "Schmidt"
* name[=].given = "Jack"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"

