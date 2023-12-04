Profile:        Myvitals
Parent:         Observation
Id:             IHE.ToDo.bodyHeight
Title:          "IHE ToDo BodyHeight Observation"
Description:    "A profile on the Observation that declares how ToDo will Create/Update for body height measurements."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #closed
* code.coding 1..
* code.coding contains loincCode0 1..1 
* code.coding[loincCode0] = LOINC#8302-2
* effectiveDateTime 1..1
* value[x] only Quantity
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
// this is making everything else in observation forbidden. 
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
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

Instance: ex-height
InstanceOf: Myvitals
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
//* performer[+].extension[site].valueReference = Reference(ex-location)
* performer[+].display = "Location 2938"
* valueQuantity = 71 '[in_i]' "in_i"


Profile:        MyvitalsBP
Parent:         Observation
Id:             IHE.ToDo.bloodPressure
Title:          "IHE ToDo Blood Pressure Observation"
Description:    """
A profile on the Observation that declares how ToDo will Create/Update blood pressure measurements.
* must have vital-signs category
* must have LOINC#55284-4 code AND LOINC#8716-3
* must have effectiveDateTime
* must not have a value[x]
* must have two components
* must have systolic and diastolic component values in mm[Hg]
* may have a heart-rate component
* may have a position component
* must have status at final
* must point at the patient
* may have a note (comment)
* once created will or might have an id, versionId, lastUpdated, text, and identifier
"""
* ^version = "0.1.0"
* ^date = "2020-11-23"
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// This shows how to slice to force two values
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #closed
* code.coding 1..
* code.coding contains loincCode0 0..1 and loincCode1 1..1 and loincCode2 0..1
* code.coding[loincCode0] = LOINC#85354-9
* code.coding[loincCode1] = LOINC#55284-4
* code.coding[loincCode2] = LOINC#8716-3
* effectiveDateTime 1..1
* value[x] 0..0
* component 2..4
// This shows slicing on code within component
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "blood pressure values"
* component contains 
	diastolicBP 1..1 and 
	systolicBP 1..1 and 
	heartRate 0..1 and 
	bodyContextSitting 0..1 and 
	bodyContextStanding 0..1 and 
	bodyContextSupine 0..1 and 
	bodyContextResting 0..1
* component[systolicBP].code = LOINC#8480-6 // Systolic blood pressure
* component[systolicBP].value[x] only Quantity
* component[systolicBP].valueQuantity = UCUM#mm[Hg] // "mmHg"
* component[diastolicBP].code = LOINC#8462-4 // Diastolic blood pressure
* component[diastolicBP].value[x] only Quantity
* component[diastolicBP].valueQuantity = UCUM#mm[Hg] // "mmHg"
* component[heartRate].code = LOINC#8867-4 // heart rate
* component[heartRate].value[x] only Quantity
* component[heartRate].valueQuantity = UCUM#/min "beats/minute"
// This is odd, but showing it for sushi learning - TODO should leverage the valueset below
* component[bodyContextSitting].code = LOINC#69000-8
* component[bodyContextSitting].value[x] only string
* component[bodyContextSitting].valueString = "Sitting"
* component[bodyContextStanding].code = LOINC#69001-6
* component[bodyContextStanding].value[x] only string
* component[bodyContextStanding].valueString = "Standing"
* component[bodyContextSupine].code = LOINC#68999-2
* component[bodyContextSupine].value[x] only string
* component[bodyContextSupine].valueString = "Supine"
* component[bodyContextResting].code = LOINC#40443-4
* component[bodyContextResting].value[x] only string
* component[bodyContextResting].valueString = "Resting"
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
// things that are not declared in the mapping table but likely are populated because they are normal REST processing
//* id 0..1
//* meta.versionId 0..1
//* meta.lastUpdated 0..1
//* meta.profile 0..1
//* meta.source 0..0
//* meta.security 0..0
//* identifier 0..*
//* text 0..0
// this is making everything else in observation forbidden. If they show up, apps should not misbehave. IHE ToDo compliant apps shall not populate these in a Create or Update.
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
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


Instance:   ex-vitals-1
InstanceOf: MyvitalsBP
Usage: #example
Title: "Example 1 of an vital-sign"
Description: """
Example from a mock 
"""
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "BLOOD PRESSURE"
//* code.coding[loincCode0] = LOINC#85354-9 "Blood pressure panel with all children optional"
* code.coding[loincCode1] = LOINC#55284-4
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-09-24T11:17:54Z
* component[systolicBP].code = LOINC#8480-6 "Systolic blood pressure"
* component[systolicBP].valueQuantity = 126 'mm[Hg]'
* component[systolicBP].valueQuantity.unit = "mmHg"
* component[diastolicBP].code = LOINC#8462-4 "Diastolic blood pressure"
* component[diastolicBP].valueQuantity = 70 'mm[Hg]'
* component[diastolicBP].valueQuantity.unit = "mmHg"
//* contained[+] = ex-location
//* performer[+].extension[site].valueReference = Reference(ex-location)
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

