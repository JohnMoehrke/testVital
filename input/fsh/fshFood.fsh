Profile:        Myvitals
//Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title:          "VA PHR Vital-Signs"
Description:    """
A profile on the Observation resource for PHR exposing Vital-Signs using FHIR API.
"""
* code.coding 1.. // hack due to bug in fhir core BP profile
* status = #final
* code.text MS
* subject 1..1
* effectiveDateTime 1..1
* performer MS
* performer ^type.aggregation = #contained
* performer.extension contains http://hl7.org/fhir/StructureDefinition/alternate-reference named site 0..1
* performer.extension[site].valueReference only Reference(Location)
* performer.extension[site].valueReference ^type.aggregation = #contained
* value[x] MS

* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0
* note 0..0 

Instance: ex-height
InstanceOf: Myvitals
Title: "HEIGHT"
Description:  "6003503"
Usage: #example
* contained[+] = ex-location
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#8302-2 "Body height"
* code.text = "HEIGHT"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = "2004-09-24T10:32:00Z"
* performer[+].extension[site].valueReference = Reference(ex-location)
* performer[=].display = "Location 2938"
* valueQuantity = 71 '[in_i]' "in_i"


Profile:        MyvitalsBP
//Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure
Parent: http://hl7.org/fhir/StructureDefinition/bp
Title:          "VA PHR Vital-Signs for Blood Pressure"
Description:    """
A profile on the Observation resource for Blood Pressure
"""
* code.coding 1.. // hack due to bug in fhir core BP profile
* component.code.coding 1.. // hack due to bug in fhir core BP profile
* status = #final
// How to add more codes beyond FHIR core vitalsigns bp profile
* code.text MS
* code.coding contains loincCode1 1..1
* code.coding[loincCode1].system 1..1
* code.coding[loincCode1].system only uri
* code.coding[loincCode1].system = "http://loinc.org" (exactly)
* code.coding[loincCode1].code 1..1
* code.coding[loincCode1].code only code
* code.coding[loincCode1].code = #55284-4 (exactly)

* subject 1..1
* effectiveDateTime 1..1
* performer MS
* performer ^type.aggregation = #contained
* performer.extension contains http://hl7.org/fhir/StructureDefinition/alternate-reference named site 0..1
* performer.extension[site].valueReference only Reference(Location)
* performer.extension[site].valueReference ^type.aggregation = #contained
* note MS 

* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* value[x] 0..0
// leveraging that US-Core has already defined the component

Instance:   ex-vitals-1
InstanceOf: MyvitalsBP
Usage: #example
Title: "Example 1 of an vital-sign"
Description: """
Example from a mock 
"""
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "BLOOD PRESSURE"
* code.coding[BPCode] = LOINC#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-09-24T11:17:54Z
* component[SystolicBP].code = LOINC#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 126 'mm[Hg]'
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].code = LOINC#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 70 'mm[Hg]'
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* contained[+] = ex-location
* performer[+].extension[site].valueReference = Reference(ex-location)
* performer[=].display = "Location 2938"

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

