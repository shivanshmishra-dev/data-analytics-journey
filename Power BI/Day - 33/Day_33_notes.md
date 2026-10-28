# Day 33 — Data Modeling and Relationships in Power BI

## Objective
Understand data modeling, relationship cardinality, and cross-filtering through a hands-on Power BI exercise.

## 1. Data Model Basics
- Explored Model View and inspected tables and relationship lines.
- Learned how relationships connect tables and allow filters to affect related data.

## 2. Unique Lookup Column and Repeating Reference Column
- Used `SplitPractice (2)[Department]` as the unique lookup column.
- Used `FillPractice[Department]` as the repeating reference column.
- Observed that Sales appears once in the lookup table but can appear multiple times in the employee table.

## 3. Relationship Cardinality
- Inspected the relationship between `FillPractice` and `SplitPractice (2)`.
- Observed Many-to-one (*:1) cardinality.
- Learned the equivalent perspective is One-to-many (1:*) when viewed from the lookup table to the employee table.
- Understood why the One side requires unique key values.

## 4. Cross-Filter Direction
- Observed Single cross-filter direction.
- Learned that filters typically flow from the lookup side to the related many side in this setup.

## 5. Practical Slicer Test
- Created a table visual using Department and Employee from `FillPractice`.
- Created a Department slicer using `SplitPractice (2)`.
- Selected Sales and confirmed the table filtered to Sales employees.
- Verified that the relationship enabled filtering across tables.

## 6. Key Takeaways
1. Relationship keys connect tables.
2. The One side needs unique values for a one-to-many relationship.
3. Repeated values are expected on the Many side.
4. Cardinality describes how rows match across tables.
5. Cross-filter direction controls how filtering propagates.
6. Slicers can filter visuals built from related tables.

## Tools Used
- Power BI Desktop
- Model View
- Relationships
- Table visual and slicer
- VS Code and GitHub

## Status
Day 33 practical completed.
