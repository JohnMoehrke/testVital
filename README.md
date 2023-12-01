

# Status

December 2023

Now that the IG publisher forces any observation that is a profiled vital sign to be compliant with the FHIR core profiles, I try to create a profile on BP and Weight but get errors.

# chat

https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/vital-signs.20profiles.20errors

# testVitals

Main branch is using us-core and not showing any errors
- ci-build - http://build.fhir.org/ig/JohnMoehrke/testMed/branches/main/index.html

using-fhir-core-profiles is using fhir core profiles and getting errors on BP. Would also get them on height and weight. Does not throw errors on vitals.
- ci-build - https://build.fhir.org/ig/JohnMoehrke/testVital/branches/using-fhir-core-profiles/index.html
