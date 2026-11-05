# Day 38 – KPI and Business Metrics in Power BI

## Objective
Learn how to create Key Performance Indicators (KPIs) and evaluate business performance against a target.

## 1. Total Sales Measure

```dax
Total Sales =
SUM(Sales[Sales])
```

## 2. Total Profit Measure

```dax
Total Profit =
SUM(Sales[Profit])
```

## 3. Sales Target

Created a hypothetical business sales target of 200,000.

```dax
Sales Target = 200000
```

## 4. Sales Achievement Percentage

Calculates the percentage of the sales target achieved.

```dax
Sales Achievement % =
DIVIDE(
    [Total Sales],
    [Sales Target],
    0
)
```

Format as Percentage.

## 5. Target Status

Checks whether total sales have reached the target.

```dax
Target Status =
IF(
    [Total Sales] >= [Sales Target],
    "Target Achieved",
    "Target Not Achieved"
)
```

## 6. Profit Margin KPI

```dax
Profit Margin KPI =
DIVIDE(
    [Total Profit],
    [Total Sales],
    0
)
```

Format as Percentage.

## KPI Dashboard Practice

Created KPI Cards to display:
- Total Sales
- Sales Target
- Sales Achievement %
- Profit Margin KPI
- Target Status

## Key Learnings
- Understanding Key Performance Indicators.
- Comparing actual performance with business targets.
- Calculating achievement percentages.
- Creating business performance measures.
- Displaying KPIs using Card visuals.

## Conclusion
KPIs help businesses monitor performance, measure progress, and identify whether business targets are being achieved.