# Day 36 – DAX Functions: CALCULATE and Filter Context

## Objective
Understand how DAX evaluates calculations using filter context and learn useful aggregation functions in Power BI.

## 1. CALCULATE() Function

CALCULATE() evaluates an expression after modifying the existing filter context.

**Syntax:**
```dax
CALCULATE(
    expression,
    filter1,
    filter2
)
```

**Example – Sales for India:**
```dax
India Sales =
CALCULATE(
    SUM(Sales[Sales]),
    Country[Country] = "India"
)
```

This measure calculates sales only for India, subject to the model relationships and other applicable filters.

## 2. Understanding Filter Context

Filter context determines which rows of data are considered during a DAX calculation.

It can be created through:
- Report filters
- Page filters
- Visual filters
- Slicers
- CALCULATE() filters

**Example:**

When India is selected in a Country slicer, the Total Sales measure calculates sales for India instead of all countries.

## 3. MIN() Function

Returns the minimum value from a column.

```dax
Minimum Sales =
MIN(Sales[Sales])
```

## 4. MAX() Function

Returns the maximum value from a column.

```dax
Maximum Sales =
MAX(Sales[Sales])
```

## 5. COUNTROWS() Function

Counts the number of rows in a table.

```dax
Total Rows =
COUNTROWS(Sales)
```

## 6. DIVIDE() Function

Performs division safely and handles a zero denominator.

```dax
Average Profit per Transaction =
DIVIDE(
    SUM(Sales[Profit]),
    COUNTROWS(Sales),
    0
)
```

## Key Learnings

- Understanding CALCULATE().
- Understanding filter context in Power BI.
- Modifying filter context using DAX.
- Finding minimum and maximum values.
- Counting table rows using COUNTROWS().
- Performing safe division using DIVIDE().

## Practical Applications

These functions help in:
- Country-specific sales analysis.
- Finding minimum and maximum sales.
- Counting transactions.
- Calculating average profit per transaction.
- Creating dynamic business measures.

## Conclusion

CALCULATE() and filter context are important concepts in DAX. They allow analysts to create flexible calculations and evaluate business metrics under different filtering conditions.