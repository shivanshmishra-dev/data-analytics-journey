# Day 34 — Data Modeling in Power BI

## 1. What is Data Modeling?

Data modeling is the process of organizing tables and defining relationships between them so that data can be analyzed correctly in Power BI.

A good data model improves report accuracy, filtering, and maintainability.

## 2. Fact Table vs Dimension Table

### Fact Table
A fact table stores business transactions and numerical values used for analysis.

Example: `Sales`

Columns:
- SaleID
- ProductID
- CountryID
- Sales
- Profit

### Dimension Table
A dimension table stores descriptive information used to categorize and filter facts.

Examples:
- `Product` — ProductID, Product, Category
- `Country` — CountryID, Country
- `Category` — Category

## 3. Star Schema

A Star Schema has a central fact table connected directly to dimension tables.

Structure:

`Product (1) → Sales (*) ← Country (1)`

Characteristics:
- Fact table is at the center.
- Dimension tables connect directly to the fact table.
- Usually easier to understand and use for reporting.
- Dimension tables commonly filter the fact table.

## 4. Snowflake Schema

A Snowflake Schema normalizes dimension data into additional related tables.

Structure:

`Category (1) → Product (*) → Sales (*)`

And:

`Country (1) → Sales (*)`

Characteristics:
- Some dimensions are split into related tables.
- Reduces repeated descriptive information in a properly normalized model.
- Requires additional relationships and can make the model more complex.

## 5. Relationships in Power BI

A one-to-many relationship (`1:*`) means:
- The `1` side contains unique key values.
- The `*` side can contain repeated key values.

Relationships created and tested:
- `Product[ProductID]` → `Sales[ProductID]`
- `Country[CountryID]` → `Sales[CountryID]`
- `Category[Category]` → `Product[Category]`

The incorrect `Product[Product]` to `Sales[Profit]` relationship was identified and removed.

## 6. Cross-Filtering and Slicers

Slicers allow report users to filter data interactively.

Practiced:
- Country slicer using `Country[Country]`
- Product slicer using `Product[Product]`
- Category slicer using `Category[Category]`

Verified that selections filter the report table through the model relationships.

## 7. Handling Blank Values in Slicers

A `(Blank)` option can appear when a fact table contains a foreign-key value that has no matching record in its dimension table.

Example:
- `Sales[CountryID]` contained `4`.
- `Country` initially contained only IDs `1`, `2`, and `3`.
- The unmatched key caused a blank category to appear in the Country slicer.
- Added the matching country record with `CountryID = 4` and `Country = Australia` for this practice dataset.

**Key lesson:** Foreign keys in the fact table should match valid keys in the corresponding dimension table. Always verify the source data before hiding blanks or changing relationships.

## 8. Star Schema vs Snowflake Schema

| Feature | Star Schema | Snowflake Schema |
|---|---|---|
| Structure | Dimensions connect directly to the fact | Some dimensions connect through other dimensions |
| Complexity | Usually simpler | Usually more complex |
| Redundancy | Can contain repeated descriptive values | Can reduce redundancy through normalization |
| Power BI usability | Often a good starting point | Useful when dimension normalization is needed |

## 9. Practical Learning Outcomes

- Built a sample fact table and dimension tables using Enter Data.
- Created and inspected one-to-many relationships.
- Built and tested a Star Schema.
- Extended the model into a Snowflake Schema.
- Used slicers to verify filtering behavior.
- Identified and removed an incorrect relationship.
- Diagnosed an unmatched foreign key that caused a blank slicer option.

## Day 34 Summary

Today I learned how fact tables, dimension tables, Star Schema, Snowflake Schema, and one-to-many relationships work in Power BI. I also practiced validating relationships with slicers and fixing a missing dimension key.

**Next:** Continue with measures and DAX fundamentals.
