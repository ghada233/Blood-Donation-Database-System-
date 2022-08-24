# Blood-Donation-Database-System :drop_of_blood:

## System description:

> A system that regulates the process of blood donation. The system is concerned about filling in
all donor personal information, the process of drawing blood is carried out by Phlebotomist.
While Lab_Technician making sure of the compatibility of blood groups by samplings, checking
Hemoglobin percentage, and recording All blood components to screen for atypical cells
antibodies which can potentially cause reactions. On the other hand,
Blood_Safety_and_Conservation_Team task is to monitor blood storage and promoting safe and
appropriate process.

:drop_of_blood:
--------------------------------------------------------------------------------------------------

## Entities in this system:

• DONOR

• BLOOD_BANK_ DEPARTMENT

• STAFF

• BLOOD :drop_of_blood:

• BLOOD SAMPLE

• BLOOD PRODUCT

• BLOOD_SAFETY_AND_CONSERVATION_TEAM

• PHLEBOTOMIST

• LAP_TECHNICIAN

• MANAGER

• FAMILY_CONTACT

--------------------------------------------------------------------------------------------------
> We developed the system based on interviews with specialists in the field, blood
donation centers visits, and we contacted researchers such as phlebotomists. All
details based on the international approved protocols.
--------------------------------------------------------------------------------------------------
:card_index_dividers:
>  EER Model:

:card_index_dividers:
>  Schema - EER Model:

![SchemaPhase3 drawio](https://user-images.githubusercontent.com/70041510/180874067-5978e1b9-22d8-4652-a6cf-952b63f9c577.png)


--------------------------------------------------------------------------------------------------
## Transaction requirements:

1. Data manipulation:
➢ Insert/update/delete the details of Donor

➢ Insert/update/delete the details of Staffs overall.

➢ Insert/update/delete the details of Blood overall.

➢ Insert/update/delete the details of Blood Sample.

➢ Insert/update/delete the details of Blood Product.

➢ Insert/update/delete the details of Blood Bank Department

➢ Insert/update/delete the details of Family Contact

2. Queries:

➢ Retrieve Blood unit (Sample or Product) information

➢ Retrieve Blood unit (Sample or Product) information based on the desired blood group

➢ Retrieve Doner’s information

➢ Retrieve Doner’s Family_Contact information

➢ Retrieve Staff (Blood_Safety_and_Conservation_Team, Phlebotomist, Lab_Technician) information

-------------------------------------------------------------------------------------------------------

Business rules:

➢ The minimum weight of donor is 50 kilograms, any donor has weight less than 50 kilograms cannot donate.

➢ The donor has very good health, excellent and normal case.

➢ The donor does not have epidemics or contagious diseases.

➢ Hemoglobin percent should be above 13 g/dL .

➢ The blood product volume should be in this range (300-500 ml).

➢ Take blood from the donor without any danger to health.

➢ The blood center tests, processes, and check the expiration of blood bags before sending it to the hospitals.

➢ The capacity of blood-bank for bags is predetermined by the facility.

--------------------------------------------------------------------------------------------------
## References: 
1. Blood transfusion policy and procedures (Oxford University Hospitals, June 2012). 
(n.d.). JPAC. Retrieved March 1, 2022, from
https://www.transfusionguidelines.org/document-library/documents/blood-transfusion-policy-and-procedures
2. Moh. (2020, July 10). Ministry of Health. Retrieved March 23, 2022, from 
https://www.moh.gov.sa/HealthAwareness/EducationalContent/PublicHealth/Pages/017.aspx


--------------------------------------------------------------------------------------------------
:information_desk_person:
:tipping_hand_person:
This repo contains Ghadah & Sedra & Shoag & lama & asma👍 attempts to solve the project problem


>  A project submitted for Database System course – CS 372
>  

_Instructor: Dr. Samah Aloufi_



