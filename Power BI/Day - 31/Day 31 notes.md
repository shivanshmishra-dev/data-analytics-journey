# Day 31 — Power Query Transformations

## Objective
Learn how to create columns from examples, extract date attributes, and apply text transformations using Power Query Editor in Power BI.

## 1. Add Column from Examples

- Practiced creating a new column using example values.
- Created a `Month Label` column by combining `Month Name` and `Year`.
- Example output: `January-2014`, `June-2014`, `December-2014`.
- Power Query inferred the transformation logic from the examples.

**Key Learning:** Column From Examples can generate transformation logic based on sample outputs without requiring manual formula writing.

## 2. Date Transformations

Practiced extracting date attributes into separate columns.

### Year
- Used `Add Column → Date → Year → Year`.
- Created a separate year column while preserving the original `Date` column.

### Month Name
- Used `Add Column → Date → Month → Name of Month`.
- Generated month names such as January, June, and December.

### Quarter
- Used `Add Column → Date → Quarter → Quarter of Year`.
- Generated quarter numbers from 1 to 4.

**Quarter Mapping:**
- Q1: January–March
- Q2: April–June
- Q3: July–September
- Q4: October–December

**Key Learning:** Year, month, and quarter columns help organize data for time-based business analysis.

## 3. Text Transformations

Practiced text formatting operations on the `Product` column.

### Capitalize Each Word
- Converts the first letter of each word to uppercase.
- Example: `john smith` → `John Smith`.

### UPPERCASE
- Converts all letters to uppercase.
- Example: `Velo Sports` → `VELO SPORTS`.

### lowercase
- Converts all letters to lowercase.
- Example: `Velo Sports` → `velo sports`.

**Key Learning:** Text transformations help standardize inconsistent text values.

## 4. Understanding Add Column vs Transform

- **Add Column:** Creates a new column and preserves the original column.
- **Transform:** Modifies the selected column directly.

For example, using `Transform → Date → Year` on a Date column can replace the full date with the year value. Using `Add Column → Date → Year → Year` creates a separate year column.

## 5. AI-Assisted Learning

- Followed a guided workflow to apply Power Query transformations.
- Checked the generated values instead of blindly accepting the results.
- Learned to inspect Applied Steps when a transformation changes the original data unexpectedly.

## 6. Validation

- Checked the generated Month Label values.
- Verified that the original Date column retained full dates after correction.
- Checked Year, Month Name, and Quarter outputs.
- Reviewed visible column-quality indicators.
- Applied changes using Close & Apply and checked the existing report visuals.

**Note:** Additional columns such as `Year.1` and `Month Name.1` appeared because similar date attributes already existed. These should be reviewed before deleting anything.

## Key Takeaways

1. Column From Examples can infer transformation logic from sample values.
2. Date attributes support yearly, monthly, and quarterly analysis.
3. Text formatting helps improve consistency.
4. Add Column preserves the original column, while Transform modifies it.
5. Always inspect Applied Steps and validate results after transformations.

## Tools Used
- Power BI Desktop
- Power Query Editor
- VS Code
- GitHub
- ChatGPT for guided learning

## Status
Day 31 practical completed.
