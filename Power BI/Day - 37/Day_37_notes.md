# Day 37 – Conditional DAX Functions in Power BI

## Objective
Learn conditional DAX functions to create business logic, evaluate conditions, and calculate filtered results.

## 1. IF() Function

The IF() function evaluates a condition and returns one result when TRUE and another when FALSE.

**Syntax:**
```dax
IF(condition, value_if_true, value_if_false)
```

**Example – Profit Status:**
```dax
Profit Status =
IF(
    SUM(Sales[Profit]) > 5000,
    "High Profit",
    "Low Profit"
)
```

## 2. DIVIDE() Function

DIVIDE() performs division safely and allows an alternate result when the denominator is zero.

**Syntax:**
```dax
DIVIDE(numerator, denominator, alternate_result)
```

**Example – Profit Margin:**
```dax
Profit Margin =
DIVIDE(
    SUM(Sales[Profit]),
    SUM(Sales[Sales]),
    0
)
```

Format this measure as Percentage.

## 3. Nested IF()

Nested IF() statements allow multiple conditions to be evaluated.

**Example – Profit Performance:**
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

## 4. CALCULATE() Function

CALCULATE() evaluates an expression under modified filter conditions.

**Example – High Sales Amount:**
```dax
High Sales Amount =
CALCULATE(
    SUM(Sales[Sales]),
    Sales[Sales] >= 30000
)
```

**Example – High Profit Amount:**
```dax
High Profit Amount =
CALCULATE(
    SUM(Sales[Profit]),
    Sales[Profit] > 5000
)
```

## Key Learnings
- IF() for conditional calculations.
- DIVIDE() for safe division.
- Nested IF() for multiple business conditions.
- CALCULATE() for changing filter context.
- Measures can be used in Cards and other Power BI visuals.

## Practical Outcome
Created conditional measures to classify profit performance and calculate high-sales and high-profit amounts.

## Conclusion
Conditional DAX functions help convert raw business data into meaningful business indicators.