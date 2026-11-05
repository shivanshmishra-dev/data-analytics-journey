# Day 40 – Sales Performance Analytics Dashboard (Mini Project)

## Project Overview

Created an interactive Sales Performance Analytics Dashboard using Power BI.

The objective was to analyze sales transactions, evaluate profitability, compare business performance, and provide useful insights through interactive visualizations.

## 1. Dataset Overview

Worked with a sample sales dataset containing:

- Total Transactions: 7
- Countries: Australia, India, UK, USA
- Products: Chair, Desk, Laptop, Mobile
- Categories: Electronics, Furniture

## 2. DAX Measures Used

### Total Sales
```dax
Total Sales =
SUM(Sales[Sales])
```

### Total Profit
```dax
Total Profit =
SUM(Sales[Profit])
```

### Total Transactions
```dax
Total Transactions =
COUNT(Sales[SaleID])
```

### Profit Margin
```dax
Profit Margin =
DIVIDE(
    SUM(Sales[Profit]),
    SUM(Sales[Sales]),
    0
)
```

### Profit Performance
```dax
Profit Performance =
IF(
    [Profit Margin] >= 0.20,
    "Excellent",
    IF(
        [Profit Margin] >= 0.10,
        "Good",
        "Needs Improvement"
    )
)
```

### Sales Target
```dax
Sales Target = 200000
```

### Sales Achievement %
```dax
Sales Achievement % =
DIVIDE(
    [Total Sales],
    [Sales Target],
    0
)
```

## 3. Dashboard Pages

### Page 1 – Sales Transaction Summary

Created:
- Total Sales KPI Card
- Total Profit KPI Card
- Total Transactions KPI Card
- Profit Margin KPI Card
- Sales Transaction Details Table
- Profit Performance indicator
- Country, Product, and Category slicers

### Page 2 – Sales and Profit Analysis

Created:
- Sales by Country
- Profit by Country
- Profit by Category
- Profit by Product
- Sales by Category
- Sales vs Profit by Product Scatter Chart
- Transaction Details Table
- Country and Category slicers

Tested slicer interactions to verify that charts and transaction records respond to selections.

### Page 3 – Country-wise Performance Details

Created:
- Country-wise Sales and Profit table
- Profit Margin KPI
- Country slicer
- Drill-through navigation from the Sales by Country chart

Tested drill-through to confirm that selecting a country displays the corresponding country-level details.

## 4. Final Business Metrics

| Metric | Result |
|---|---:|
| Total Sales | 191,000 |
| Total Profit | 31,000 |
| Total Transactions | 7 |
| Profit Margin | 16.23% |
| Sales Target | 200,000 |
| Sales Achievement | 95.5% |
| Target Status | Not Achieved |
| Profit Performance | Good |

## 5. Business Insights

- India recorded the highest sales at 95,000.
- Laptop generated the highest product-level profit at 15,000.
- Furniture generated higher total profit than Electronics.
- Overall profit margin was 16.23%.
- Sales reached 95.5% of the hypothetical target, so the target was not achieved.

## 6. Testing and Validation

- Verified KPI calculations.
- Corrected the Profit Margin DAX formula.
- Verified Profit Performance classification.
- Checked chart field mappings.
- Tested Country and Category slicers.
- Verified scatter chart behavior.
- Tested country-level drill-through.
- Saved the final Power BI report.

## Skills Demonstrated

- Power BI Desktop
- DAX Measures
- KPI Development
- Data Visualization
- Interactive Dashboard Design
- Slicers and Visual Interactions
- Drill-Through Analysis
- Business Insights and Reporting

## Conclusion

Successfully completed a Sales Performance Analytics Dashboard that transforms transaction data into meaningful business metrics and interactive reports.

The project demonstrates practical knowledge of Power BI, DAX, data visualization, and business performance analysis.