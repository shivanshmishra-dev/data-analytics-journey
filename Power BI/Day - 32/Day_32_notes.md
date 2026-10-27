# Day 32 — Power Query Data Quality Audit

## Objective
Review data quality, inspect placeholder values, and practice safe data-cleaning decisions in Power BI.

## 1. Data Quality Audit
- Enabled Column Quality, Column Distribution, and Column Profile.
- Checked the dataset's columns for valid, error, and empty values.
- Observed 100% valid, 0% error, and 0% empty in the checked columns.

## 2. Duplicate Handling
- Reviewed how duplicate values differ from duplicate records.
- Learned that repeated values in columns such as Month Number, Country, or Product do not automatically indicate duplicate records.
- Avoided removing rows without a confirmed business key or requirement.

## 3. Placeholder Value Audit
- Reviewed the `Discount Band` column.
- Confirmed the values: High, Medium, Low, and Not Assigned.
- Filtered `Not Assigned` and found 53 matching rows.
- Cleared the filter and restored the full 700-row dataset.

## 4. Data Cleaning Decisions
- Treated `Not Assigned` as a placeholder category rather than automatically deleting those rows.
- Learned to distinguish a text placeholder from an actual null value.
- Preserved valid records during the audit.

## 5. Validation
- Confirmed that the original dataset contained 700 rows and 16 columns before filtering.
- Checked column-quality indicators.
- Cleared the temporary filter.
- Applied changes and verified the report visuals.

## Key Takeaways
1. Column quality indicators help identify potential data issues.
2. Placeholder values require business context before they are changed or removed.
3. Duplicate removal should follow a defined rule or unique key.
4. Temporary filters should be cleared after an audit.
5. AI-assisted cleaning should be validated against the actual data.

## Tools Used
- Power BI Desktop
- Power Query Editor
- ChatGPT
- VS Code and GitHub

## Status
Day 32 data quality audit completed.
