# Day 48 – HR Analytics Dashboard | Power BI

## 1. Project Overview
Created an interactive HR Analytics Dashboard using Power BI to analyze employee demographics, workforce distribution, and employee attrition.

## 2. Dataset Information
- Dataset: IBM HR Analytics – Employee Attrition & Performance
- Total Records: 1,470
- Original Columns: 35
- Final Columns: 33
- Removed Columns: EmployeeCount, StandardHours

## 3. Data Cleaning – Power Query
- Inspected column quality, distribution, and profiling.
- Enabled profiling for the entire dataset.
- Removed unnecessary constant columns.
- Verified data types for important fields.
- Checked missing values and errors.
- Confirmed 0% empty values and 0% errors in the inspected dataset.

## 4. DAX Measures

### Total Employees
```dax
Total Employees =
DISTINCTCOUNT(
    'WA_Fn-UseC_-HR-Employee-Attrition'[EmployeeNumber]
)
```

### Attrition Count
```dax
Attrition Count =
CALCULATE(
    [Total Employees],
    'WA_Fn-UseC_-HR-Employee-Attrition'[Attrition] = "Yes"
)
```

### Active Employees
```dax
Active Employees =
[Total Employees] - [Attrition Count]
```

### Attrition Rate %
```dax
Attrition Rate % =
DIVIDE(
    [Attrition Count],
    [Total Employees],
    0
)
```

### Average Employee Age
```dax
Average Employee Age =
AVERAGE(
    'WA_Fn-UseC_-HR-Employee-Attrition'[Age]
)
```

### Average Monthly Income
```dax
Average Monthly Income =
AVERAGE(
    'WA_Fn-UseC_-HR-Employee-Attrition'[MonthlyIncome]
)
```

## 5. Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Employees | 1,470 |
| Attrition Count | 237 |
| Active Employees | 1,233 |
| Attrition Rate | 16.12% |
| Average Employee Age | 36.92 |
| Average Monthly Income | 6,502.93 |

## 6. Dashboard Visualizations
- Employee workforce KPI cards
- Attrition by Department
- Employees by Attrition Status
- Attrition by Gender
- Attrition by Age Group
- Attrition by Years at Company
- Attrition by Education Level
- Key Business Insights panel

## 7. Key Learnings
- Practiced HR data cleaning using Power Query.
- Created DAX measures using DISTINCTCOUNT, CALCULATE, DIVIDE, and AVERAGE.
- Understood attrition rate and employee retention metrics.
- Built interactive business-focused visualizations.
- Improved dashboard layout, formatting, and data storytelling.

## 8. Tools Used
- Power BI Desktop
- Power Query
- DAX
- IBM HR Analytics Dataset

## 9. Conclusion
Successfully developed an HR Analytics Dashboard to explore employee attrition and workforce metrics. This project strengthened practical skills in data transformation, DAX calculations, and business intelligence reporting.

**Next:** Day 49 – E-Commerce Analytics Dashboard.
