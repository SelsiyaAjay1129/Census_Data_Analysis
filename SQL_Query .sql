-- What is the total population of each district?
SELECT District, SUM(Population) AS Total_Population
FROM census_2011
GROUP BY District;

-- How many literate males and females are there in each district?
SELECT 
    `District`,
    SUM(CAST(`Literate_Male` AS UNSIGNED)) AS Total_Literate_Males,
    SUM(CAST(`Literate_Female` AS UNSIGNED)) AS Total_Literate_Females
FROM 
    `census_2011`
GROUP BY 
    `District`;
    
--  Percentage of Workers in Each District
SELECT 
    `District`,
    SUM(CAST(`Workers` AS UNSIGNED)) AS Total_Workers,
    SUM(CAST(`Population` AS UNSIGNED)) AS Total_Population,
    (SUM(CAST(`Workers` AS UNSIGNED)) / SUM(CAST(`Population` AS UNSIGNED))) * 100 AS Percentage_Workers
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Households with LPG or PNG Access in Each District
SELECT 
    `District`,
    SUM(CAST(`LPG_or_PNG_Households` AS UNSIGNED)) AS Households_with_LPG_or_PNG
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Religious Composition in Each District
SELECT 
    `District`,
    SUM(CAST(`Hindus` AS UNSIGNED)) AS Total_Hindus,
    SUM(CAST(`Muslims` AS UNSIGNED)) AS Total_Muslims,
    SUM(CAST(`Christians` AS UNSIGNED)) AS Total_Christians,
    SUM(CAST(`Sikhs` AS UNSIGNED)) AS Total_Sikhs,
    SUM(CAST(`Buddhists` AS UNSIGNED)) AS Total_Buddhists,
    SUM(CAST(`Jains` AS UNSIGNED)) AS Total_Jains,
    SUM(CAST(`Others_Religions` AS UNSIGNED)) AS Total_Others_Religions
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Households with Internet Access in Each District
SELECT 
    `District`,
    SUM(CAST(`Households_with_Internet` AS UNSIGNED)) AS Households_with_Internet
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Educational Attainment Distribution in Each District
SELECT 
    `District`,
    SUM(CAST(`Below_Primary_Education` AS UNSIGNED)) AS Below_Primary,
    SUM(CAST(`Primary_Education` AS UNSIGNED)) AS Primary_education,
    SUM(CAST(`Middle_Education` AS UNSIGNED)) AS Middle,
    SUM(CAST(`Secondary_Education` AS UNSIGNED)) AS Secondary_education,
    SUM(CAST(`Higher_Education` AS UNSIGNED)) AS Higher,
    SUM(CAST(`Graduate_Education` AS UNSIGNED)) AS Graduate,
    SUM(CAST(`Other_Education` AS UNSIGNED)) AS Other
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Households with Various Modes of Transportation in Each District
SELECT 
    `District`,
    SUM(CAST(`Households_with_Bicycle` AS UNSIGNED)) AS Households_with_Bicycle,
    SUM(CAST(`Households_with_Car_Jeep_Van` AS UNSIGNED)) AS Households_with_Car_Jeep_Van,
    SUM(CAST(`Households_with_Radio_Transistor` AS UNSIGNED)) AS Households_with_Radio_Transistor,
    SUM(CAST(`Households_with_Scooter_Motorcycle_Moped` AS UNSIGNED)) AS Households_with_Scooter_Motorcycle_Moped,
    SUM(CAST(`Households_with_Telephone_Mobile_Phone_Landline_only` AS UNSIGNED)) AS Households_with_Telephone_Mobile_Phone_Landline_only,
    SUM(CAST(`Households_with_Television` AS UNSIGNED)) AS Households_with_Television
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Condition of Occupied Census Houses in Each District
SELECT 
    `District`,
    SUM(CAST(`Condition_of_occupied_census_houses_Dilapidated_Households` AS UNSIGNED)) AS Dilapidated_Households,
    SUM(CAST(`Households_with_separate_kitchen_Cooking_inside_house` AS UNSIGNED)) AS Households_with_Separate_Kitchen,
    SUM(CAST(`Having_bathing_facility_Total_Households` AS UNSIGNED)) AS Households_with_Bathing_Facility,
    SUM(CAST(`Having_latrine_facility_within_the_premises_Total_Households` AS UNSIGNED)) AS Households_with_Latrine_Facility
FROM 
    `census_2011`
GROUP BY 
    `District`;
	
-- Household Size Distribution in Each District
SELECT 
    `District`,
    SUM(CAST(`Household_size_1_person_Households` AS UNSIGNED)) AS Household_size_1_person,
    SUM(CAST(`Household_size_2_persons_Households` AS UNSIGNED)) AS Household_size_2_persons,
    SUM(CAST(`Household_size_3_persons_Households` AS UNSIGNED)) AS Household_size_3_persons,
    SUM(CAST(`Household_size_4_persons_Households` AS UNSIGNED)) AS Household_size_4_persons,
    SUM(CAST(`Household_size_5_persons_Households` AS UNSIGNED)) AS Household_size_5_persons,
    SUM(CAST(`Household_size_6_8_persons_Households` AS UNSIGNED)) AS Household_size_6_8_persons,
    SUM(CAST(`Household_size_9_persons_and_above_Households` AS UNSIGNED)) AS Household_size_9_persons_and_above
FROM 
    `census_2011`
GROUP BY 
    `District`;

-- Total Number of Households in Each State
SELECT 
    `State/UT`,
    SUM(CAST(`Households` AS UNSIGNED)) AS Total_Households
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;

-- Households with Latrine Facility within the Premises in Each State
SELECT 
    `State/UT`,
    SUM(CAST(`Having_latrine_facility_within_the_premises_Total_Households` AS UNSIGNED)) AS Households_with_Latrine_Facility
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;

-- Average Household Size in Each State
SELECT 
    `State/UT`,
    AVG(CAST(`Household_size_1_person_Households` AS UNSIGNED) +
        CAST(`Household_size_2_persons_Households` AS UNSIGNED) * 2 +
        CAST(`Household_size_3_persons_Households` AS UNSIGNED) * 3 +
        CAST(`Household_size_4_persons_Households` AS UNSIGNED) * 4 +
        CAST(`Household_size_5_persons_Households` AS UNSIGNED) * 5 +
        CAST(`Household_size_6_8_persons_Households` AS UNSIGNED) * 7 +
        CAST(`Household_size_9_persons_and_above_Households` AS UNSIGNED) * 9
    ) / SUM(CAST(`Households` AS UNSIGNED)) AS Average_Household_Size
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;
    
-- Households Owned vs. Rented in Each State
SELECT 
    `State/UT`,
    SUM(CAST(`Ownership_Owned_Households` AS UNSIGNED)) AS Households_Owned,
    SUM(CAST(`Ownership_Rented_Households` AS UNSIGNED)) AS Households_Rented
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;


-- Households with Access to Drinking Water Sources Near the Premises in Each State
SELECT 
    `State/UT`,
    SUM(CAST(`Location_of_drinking_water_source_Near_the_premises_Households` AS UNSIGNED)) AS Households_with_Drinking_Water_Near
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;
    
-- Average Household Income Distribution in Each State Based on Power Parity Categories
SELECT 
    `State/UT`,
    AVG(CAST(`Power_Parity_Less_than_Rs_45000` AS UNSIGNED)) AS Avg_Income_Less_than_Rs_45000,
    AVG(CAST(`Power_Parity_Rs_45000_90000` AS UNSIGNED)) AS Avg_Income_Rs_45000_90000,
    AVG(CAST(`Power_Parity_Rs_90000_150000` AS UNSIGNED)) AS Avg_Income_Rs_90000_150000,
    AVG(CAST(`Power_Parity_Rs_150000_240000` AS UNSIGNED)) AS Avg_Income_Rs_150000_240000,
    AVG(CAST(`Power_Parity_Rs_240000_330000` AS UNSIGNED)) AS Avg_Income_Rs_240000_330000,
    AVG(CAST(`Power_Parity_Above_Rs_545000` AS UNSIGNED)) AS Avg_Income_Above_Rs_545000
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;

-- Percentage of Married Couples with Different Household Sizes in Each State
SELECT 
    `State/UT`,
    (SUM(CAST(`Married_couples_1_Households` AS UNSIGNED)) / SUM(CAST(`Households` AS UNSIGNED))) * 100 AS Percentage_Married_Couples_1_Person,
    (SUM(CAST(`Married_couples_2_Households` AS UNSIGNED)) / SUM(CAST(`Households` AS UNSIGNED))) * 100 AS Percentage_Married_Couples_2_Persons,
    (SUM(CAST(`Married_couples_3_Households` AS UNSIGNED)) / SUM(CAST(`Households` AS UNSIGNED))) * 100 AS Percentage_Married_Couples_3_Persons,
    (SUM(CAST(`Married_couples_4_Households` AS UNSIGNED)) / SUM(CAST(`Households` AS UNSIGNED))) * 100 AS Percentage_Married_Couples_4_Persons,
    (SUM(CAST(`Married_couples_5__Households` AS UNSIGNED)) / SUM(CAST(`Households` AS UNSIGNED))) * 100 AS Percentage_Married_Couples_5_Persons
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;

-- Households Below the Poverty Line in Each State Based on Power Parity Categories
SELECT 
    `State/UT`,
    SUM(CAST(`Power_Parity_Less_than_Rs_45000` AS UNSIGNED)) AS Households_Below_45000,
    SUM(CAST(`Power_Parity_Rs_45000_90000` AS UNSIGNED)) AS Households_45000_to_90000,
    SUM(CAST(`Power_Parity_Rs_90000_150000` AS UNSIGNED)) AS Households_90000_to_150000,
    SUM(CAST(`Power_Parity_Rs_150000_240000` AS UNSIGNED)) AS Households_150000_to_240000,
    SUM(CAST(`Power_Parity_Rs_240000_330000` AS UNSIGNED)) AS Households_240000_to_330000,
    SUM(CAST(`Power_Parity_Above_Rs_545000` AS UNSIGNED)) AS Households_Above_545000
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;

-- Overall Literacy Rate (Percentage of Literate Population) in Each State
SELECT 
    `State/UT`,
    (SUM(CAST(`Literate` AS UNSIGNED)) / SUM(CAST(`Population` AS UNSIGNED))) * 100 AS Literacy_Rate
FROM 
    `census_2011`
GROUP BY 
    `State/UT`;
