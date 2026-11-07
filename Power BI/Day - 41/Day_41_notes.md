# Day 41 – Power BI Project Planning, Data Modeling & DAX Validation

## Learning Objective

Started developing a more structured **Sales Performance Dashboard** using Microsoft Power BI and the Financial Sample dataset.

The focus was on understanding business requirements, inspecting data, cleaning the existing model, creating DAX measures, and validating business metrics.

## 1. Dataset Overview

**Dataset:** Microsoft Financial Sample

| Property | Details |
|---|---|
| Total Records | 700 |
| Total Columns | 16 |
| Primary Table | financials |
| Tool | Microsoft Power BI Desktop |

### Important Columns

- Segment
- Country
- Product
- Discount Band
- Units Sold
- Gross Sales
- Discounts
- Sales
- COGS
- Profit
- Date
- Month Name
- Month Number
- Year

## 2. Business Requirements

The dashboard aims to answer five important business questions:

1. Which country generates the highest sales and profit?
2. Which products contribute most to revenue?
3. Which customer segments perform best?
4. How do sales and profit change over time?
5. How do discounts affect profitability?

## 3. Data Inspection

Used Power Query Editor to inspect the dataset.

### Observations

- Dataset contained 700 records and 16 columns.
- Inspected column quality and data types.
- Visible financial columns showed no errors or empty values.
- Existing transformation replaced the Discount Band value "None" with "Not Assigned".
- Confirmed that the Discounts column represents discount amounts, not percentage rates.

## 4. Date Hierarchy Verification

Verified that Power BI automatically recognized the Date column.

Available hierarchy levels:

- Year
- Quarter
- Month
- Day

This hierarchy will support time-based sales analysis.

## 5. Data Model Cleanup

Created a separate project copy to preserve the original learning file.

Removed unrelated practice tables:

- Day_30_practice
- Day_32_practice
- SplitPractice (2)
- FillPractice

### Final Model

- Tables: 1
- Relationships: 0
- Primary Table: financials

The project currently uses a single-table model. A more advanced dimensional model can be introduced later if required.

## 6. DAX Measures

### Total Sales

```dax
Total Sales =
SUM(financials[Sales])
```

### Total Profit

```dax
Total Profit =
SUM(financials[Profit])
```

### Total Units Sold

```dax
Total Units Sold =
SUM(financials[Units Sold])
```

### Profit Margin %

```dax
Profit Margin % =
DIVIDE(
    [Total Profit],
    [Total Sales],
    0
)
```

### Total Records

```dax
Total Records =
COUNTROWS(financials)
```

### Average Sales per Record

```dax
Average Sales per Record =
DIVIDE(
    [Total Sales],
    [Total Records],
    0
)
```

### Average Discount Amount

```dax
Average Discount Amount =
AVERAGE(financials[Discounts])
```

The last measure was initially named Average Discount %, but was corrected because the source column represents monetary discount amounts.

## 7. DAX Validation Results

| Metric | Result |
|---|---:|
| Total Sales | 118,726,350.26 |
| Total Profit | 16,893,699.00 |
| Total Units Sold | 1,125,806 |
| Total Records | 700 |
| Profit Margin | 14.23% |
| Average Sales per Record | 169,609.07 |

Created a Power BI table visual to validate the calculated measures.

## 8. Key Learnings

- Understanding business requirements before designing dashboards.
- Inspecting dataset quality and column types.
- Verifying Power BI date hierarchies.
- Removing unrelated tables from a project model.
- Creating reusable DAX measures.
- Validating calculations using a table visual.
- Distinguishing monetary amounts from percentages.
- Preserving original PBIX files while creating separate project versions.

## 9. Next Steps — Day 42

- Design dashboard layout.
- Create KPI cards.
- Build country-wise sales and profit charts.
- Analyse product and segment performance.
- Begin developing interactive dashboard filters.

## Conclusion

Day 41 focused on establishing a reliable analytical foundation before dashboard development. The Financial Sample dataset was inspected, the project model was simplified, and seven DAX measures were created for business performance analysis.