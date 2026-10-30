# Day 35 — DAX Fundamentals in Power BI

## 1. What is DAX?

DAX stands for Data Analysis Expressions.

It is a formula language used in Power BI to create calculations, measures, and calculated columns.

## 2. What is a Measure?

A measure is a dynamic calculation that changes according to the filter context of a report.

Example:

```dax
Total Sales = SUM(Sales[Sales])
```

## 3. DAX Functions Learned

### SUM()

Adds all numeric values in a column.

```dax
Total Sales = SUM(Sales[Sales])
```

Expected result: 191,000

### COUNT()

Counts numeric values in a column.

```dax
Total Transactions = COUNT(Sales[SaleID])
```

Expected result: 7

### DISTINCTCOUNT()

Counts unique values in a column.

```dax
Unique Countries = DISTINCTCOUNT(Sales[CountryID])
```

Expected result: 4

### AVERAGE()

Calculates the arithmetic mean of numeric values.

```dax
Average Sales = AVERAGE(Sales[Sales])
```

Expected result: 27,285.71

### Total Profit Measure

```dax
Total Profit = SUM(Sales[Profit])
```

Expected result: 30,500

## 4. Practical Implementation

- Created DAX measures in Power BI.
- Displayed measures using Card visuals.
- Practiced combining multiple measures in a visual.
- Observed how slicers affect measure results.
- Practiced selecting the appropriate DAX function for different analytical requirements.

## 5. Key Learnings

| Function | Purpose |
|---|---|
| SUM() | Adds numeric values |
| COUNT() | Counts numeric values |
| DISTINCTCOUNT() | Counts unique values |
| AVERAGE() | Calculates average |

## Day 35 Summary

Today I started learning DAX in Power BI and created my first measures using SUM, COUNT, DISTINCTCOUNT, and AVERAGE.

I also practiced displaying measures through Card visuals and understanding how calculations respond to report filters.

**Next:** Continue learning DAX with additional aggregation and filter functions.
