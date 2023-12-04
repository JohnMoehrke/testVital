
# Status

December 4, 2023

Workaround is known. Grahame said "this is an error in the base r4 spec, and the only way to resolve it is for you to manually specify a minimum of 1 for .code.coding"  Note that the same is true of R4 and R4B. Current using-fhir-core-profiles branch does build clean.

December 1, 2023

Now that the IG publisher forces any observation that is a profiled vital sign to be compliant with the FHIR core profiles, I try to create a profile on BP and Weight but get errors.

# chat

https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/vital-signs.20profiles.20errors

# testVitals

Main branch is using us-core and not showing any errors
- ci-build - http://build.fhir.org/ig/JohnMoehrke/testMed/branches/main/index.html

using-fhir-core-profiles is using fhir core profiles and getting errors on BP. Would also get them on height and weight. Does not throw errors on vitals.
- ci-build - https://build.fhir.org/ig/JohnMoehrke/testVital/branches/using-fhir-core-profiles/index.html
