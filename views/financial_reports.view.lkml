view: financial_reports {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Financial_Reports` ;;

  dimension: approved_budget {
    type: number
    description: "Approved budget for the period"
    sql: ${TABLE}.approved_budget ;;
  }
  dimension: asset_turnover_ratio {
    type: number
    description: "Asset turnover ratio"
    sql: ${TABLE}.asset_turnover_ratio ;;
  }
  dimension: audit_expenses {
    type: number
    description: "Total audit expenses"
    sql: ${TABLE}.audit_expenses ;;
  }
  dimension: benefits_expenses {
    type: number
    description: "Total employee benefits expenses"
    sql: ${TABLE}.benefits_expenses ;;
  }
  dimension: bottom_selling_products {
    type: string
    description: "List of bottom-selling products"
    sql: ${TABLE}.bottom_selling_products ;;
  }
  dimension: budget_variance {
    type: number
    description: "Variance between actual and budgeted figures"
    sql: ${TABLE}.budget_variance ;;
  }
  dimension: capital_allocation_budget {
    type: number
    description: "Budget for capital allocation"
    sql: ${TABLE}.capital_allocation_budget ;;
  }
  dimension: capital_expenditure {
    type: number
    description: "Capital expenditures for the period"
    sql: ${TABLE}.capital_expenditure ;;
  }
  dimension: cash_flow_forecast {
    type: number
    description: "Forecasted cash flow for the next period"
    sql: ${TABLE}.cash_flow_forecast ;;
  }
  dimension: cash_flow_from_financing {
    type: number
    description: "Cash flow from financing activities"
    sql: ${TABLE}.cash_flow_from_financing ;;
  }
  dimension: cash_flow_from_investing {
    type: number
    description: "Cash flow from investing activities"
    sql: ${TABLE}.cash_flow_from_investing ;;
  }
  dimension: cash_flow_from_operations {
    type: number
    description: "Cash flow from operating activities"
    sql: ${TABLE}.cash_flow_from_operations ;;
  }
  dimension: compliance_expenses {
    type: number
    description: "Total compliance-related expenses"
    sql: ${TABLE}.compliance_expenses ;;
  }
  dimension: compliance_violations {
    type: number
    description: "Number of compliance violations"
    sql: ${TABLE}.compliance_violations ;;
  }
  dimension: cost_of_goods_sold {
    type: number
    description: "Total cost of goods sold"
    sql: ${TABLE}.cost_of_goods_sold ;;
  }
  dimension: cost_reduction {
    type: number
    description: "Total cost reduction achieved"
    sql: ${TABLE}.cost_reduction ;;
  }
  dimension: current_ratio {
    type: number
    description: "Current ratio (current assets to current liabilities)"
    sql: ${TABLE}.current_ratio ;;
  }
  dimension: customer_acquisition_cost {
    type: number
    description: "Average cost to acquire a new customer"
    sql: ${TABLE}.customer_acquisition_cost ;;
  }
  dimension: customer_id {
    type: number
    description: "Foreign key referencing specific customer (if applicable)"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_lifetime_value {
    type: number
    description: "Average lifetime value of a customer"
    sql: ${TABLE}.customer_lifetime_value ;;
  }
  dimension: days_inventory_outstanding {
    type: number
    description: "Average number of days to sell inventory"
    sql: ${TABLE}.days_inventory_outstanding ;;
  }
  dimension: days_sales_outstanding {
    type: number
    description: "Average number of days to collect payment"
    sql: ${TABLE}.days_sales_outstanding ;;
  }
  dimension: debt_service_coverage_ratio {
    type: number
    description: "Debt service coverage ratio"
    sql: ${TABLE}.debt_service_coverage_ratio ;;
  }
  dimension: debt_to_equity_ratio {
    type: number
    description: "Debt to equity ratio"
    sql: ${TABLE}.debt_to_equity_ratio ;;
  }
  dimension: depreciation_amortization {
    type: number
    description: "Total depreciation and amortization expenses"
    sql: ${TABLE}.depreciation_amortization ;;
  }
  dimension: dividends_paid {
    type: number
    description: "Total dividends paid to shareholders"
    value_format_name: id
    sql: ${TABLE}.dividends_paid ;;
  }
  dimension: earnings_per_share {
    type: number
    description: "Earnings per share"
    sql: ${TABLE}.earnings_per_share ;;
  }
  dimension_group: end {
    type: time
    description: "End date of the reporting period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: energy_expenses {
    type: number
    description: "Total energy expenses"
    sql: ${TABLE}.energy_expenses ;;
  }
  dimension: equity {
    type: number
    description: "Total equity (total assets - total liabilities)"
    sql: ${TABLE}.equity ;;
  }
  dimension: forecast_accuracy {
    type: number
    description: "Accuracy of financial forecasts"
    sql: ${TABLE}.forecast_accuracy ;;
  }
  dimension: free_cash_flow {
    type: number
    description: "Free cash flow"
    sql: ${TABLE}.free_cash_flow ;;
  }
  dimension: gross_margin {
    type: number
    description: "Gross profit margin percentage"
    sql: ${TABLE}.gross_margin ;;
  }
  dimension: gross_profit {
    type: number
    description: "Gross profit (total revenue - cost of goods sold)"
    sql: ${TABLE}.gross_profit ;;
  }
  dimension: insurance_expenses {
    type: number
    description: "Total insurance expenses"
    sql: ${TABLE}.insurance_expenses ;;
  }
  dimension: interest_coverage_ratio {
    type: number
    description: "Interest coverage ratio"
    sql: ${TABLE}.interest_coverage_ratio ;;
  }
  dimension: interest_expense {
    type: number
    description: "Total interest expenses"
    sql: ${TABLE}.interest_expense ;;
  }
  dimension: inventory_turnover {
    type: number
    description: "Inventory turnover ratio"
    sql: ${TABLE}.inventory_turnover ;;
  }
  dimension: inventory_turnover_rate {
    type: number
    description: "Inventory turnover rate"
    sql: ${TABLE}.inventory_turnover_rate ;;
  }
  dimension: inventory_value {
    type: number
    description: "Total value of inventory"
    sql: ${TABLE}.inventory_value ;;
  }
  dimension: it_expenses {
    type: number
    description: "Total IT expenses"
    sql: ${TABLE}.it_expenses ;;
  }
  dimension: last_modified_by {
    type: string
    description: "Person who last modified the report"
    sql: ${TABLE}.last_modified_by ;;
  }
  dimension_group: last_modified {
    type: time
    description: "Date of last modification"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_modified_date ;;
  }
  dimension: legal_expenses {
    type: number
    description: "Total legal expenses"
    sql: ${TABLE}.legal_expenses ;;
  }
  dimension: liquidity_ratio {
    type: number
    description: "Liquidity ratio"
    sql: ${TABLE}.liquidity_ratio ;;
  }
  dimension: marketing_expenses {
    type: number
    description: "Total marketing expenses"
    sql: ${TABLE}.marketing_expenses ;;
  }
  dimension: net_margin {
    type: number
    description: "Net profit margin percentage"
    sql: ${TABLE}.net_margin ;;
  }
  dimension: net_profit {
    type: number
    description: "Net profit after all expenses and taxes"
    sql: ${TABLE}.net_profit ;;
  }
  dimension: office_supplies_expenses {
    type: number
    description: "Total office supplies expenses"
    sql: ${TABLE}.office_supplies_expenses ;;
  }
  dimension: operating_budget {
    type: number
    description: "Operating budget for the period"
    sql: ${TABLE}.operating_budget ;;
  }
  dimension: operating_cash_flow {
    type: number
    description: "Cash flow from operations"
    sql: ${TABLE}.operating_cash_flow ;;
  }
  dimension: operating_expenses {
    type: number
    description: "Total operating expenses"
    sql: ${TABLE}.operating_expenses ;;
  }
  dimension: operating_income {
    type: number
    description: "Operating income (gross profit - operating expenses)"
    sql: ${TABLE}.operating_income ;;
  }
  dimension: operating_margin {
    type: number
    description: "Operating profit margin percentage"
    sql: ${TABLE}.operating_margin ;;
  }
  dimension: order_id {
    type: number
    description: "Foreign key referencing specific order (if applicable)"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: penalty_expenses {
    type: number
    description: "Total expenses related to penalties or fines"
    sql: ${TABLE}.penalty_expenses ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing specific product (if applicable)"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_returns {
    type: number
    description: "Total value of product returns"
    sql: ${TABLE}.product_returns ;;
  }
  dimension: product_sales_performance {
    type: string
    description: "Summary of product sales performance"
    sql: ${TABLE}.product_sales_performance ;;
  }
  dimension: profit_growth {
    type: number
    description: "Profit growth rate"
    sql: ${TABLE}.profit_growth ;;
  }
  dimension: quick_ratio {
    type: number
    description: "Quick ratio (liquid assets to current liabilities)"
    sql: ${TABLE}.quick_ratio ;;
  }
  dimension: r_and_d_expenses {
    type: number
    description: "Total research and development expenses"
    sql: ${TABLE}.r_and_d_expenses ;;
  }
  dimension_group: report {
    type: time
    description: "Date the report was generated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.report_date ;;
  }
  dimension: report_generated_by {
    type: string
    description: "Person who generated the report"
    sql: ${TABLE}.report_generated_by ;;
  }
  dimension: report_id {
    type: number
    description: "Unique identifier for each financial report"
    sql: ${TABLE}.report_id ;;
  }
  dimension: report_status {
    type: string
    description: "Status of the report (e.g., 'Draft', 'Final', 'Audited')"
    sql: ${TABLE}.report_status ;;
  }
  dimension: report_type {
    type: string
    description: "Type of financial report (e.g., 'Income Statement', 'Balance Sheet', 'Cash Flow')"
    sql: ${TABLE}.report_type ;;
  }
  dimension: retained_earnings {
    type: number
    description: "Accumulated retained earnings"
    sql: ${TABLE}.retained_earnings ;;
  }
  dimension: return_on_assets {
    type: number
    description: "Return on assets ratio"
    sql: ${TABLE}.return_on_assets ;;
  }
  dimension: return_on_equity {
    type: number
    description: "Return on equity ratio"
    sql: ${TABLE}.return_on_equity ;;
  }
  dimension: return_rate {
    type: number
    description: "Product return rate percentage"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: risk_management_score {
    type: number
    description: "Score for risk management effectiveness"
    sql: ${TABLE}.risk_management_score ;;
  }
  dimension: salary_expenses {
    type: number
    description: "Total salary expenses"
    sql: ${TABLE}.salary_expenses ;;
  }
  dimension: sale_id {
    type: number
    description: "Foreign key referencing specific sale (if applicable)"
    # hidden: yes
    sql: ${TABLE}.sale_id ;;
  }
  dimension: sales_growth {
    type: number
    description: "Sales growth rate"
    sql: ${TABLE}.sales_growth ;;
  }
  dimension: sales_region_performance {
    type: string
    description: "Summary of sales performance by region"
    sql: ${TABLE}.sales_region_performance ;;
  }
  dimension: sales_rep_id {
    type: number
    description: "Foreign key referencing specific sales representative (if applicable)"
    sql: ${TABLE}.sales_rep_id ;;
  }
  dimension: sales_rep_performance {
    type: string
    description: "Summary of sales representative performance"
    sql: ${TABLE}.sales_rep_performance ;;
  }
  dimension: sales_rep_performance_summary {
    type: string
    description: "Detailed summary of sales representative performance"
    sql: ${TABLE}.sales_rep_performance_summary ;;
  }
  dimension: shipping_expenses {
    type: number
    description: "Total shipping expenses"
    sql: ${TABLE}.shipping_expenses ;;
  }
  dimension_group: start {
    type: time
    description: "Start date of the reporting period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: supply_chain_efficiency {
    type: number
    description: "Measure of supply chain efficiency"
    sql: ${TABLE}.supply_chain_efficiency ;;
  }
  dimension: tax_expenses {
    type: number
    description: "Total tax expenses"
    sql: ${TABLE}.tax_expenses ;;
  }
  dimension: top_selling_products {
    type: string
    description: "List of top-selling products"
    sql: ${TABLE}.top_selling_products ;;
  }
  dimension: total_assets {
    type: number
    description: "Total value of all assets"
    sql: ${TABLE}.total_assets ;;
  }
  dimension: total_customers {
    type: number
    description: "Total number of customers for the period"
    sql: ${TABLE}.total_customers ;;
  }
  dimension: total_expenses {
    type: number
    description: "Total expenses for the reporting period"
    sql: ${TABLE}.total_expenses ;;
  }
  dimension: total_headcount {
    type: number
    description: "Total number of employees"
    sql: ${TABLE}.total_headcount ;;
  }
  dimension: total_liabilities {
    type: number
    description: "Total value of all liabilities"
    sql: ${TABLE}.total_liabilities ;;
  }
  dimension: total_orders {
    type: number
    description: "Total number of orders for the period"
    sql: ${TABLE}.total_orders ;;
  }
  dimension: total_products_sold {
    type: number
    description: "Total number of products sold"
    sql: ${TABLE}.total_products_sold ;;
  }
  dimension: total_revenue {
    type: number
    description: "Total revenue for the reporting period"
    sql: ${TABLE}.total_revenue ;;
  }
  dimension: total_sales {
    type: number
    description: "Total sales amount for the period"
    sql: ${TABLE}.total_sales ;;
  }
  dimension: training_expenses {
    type: number
    description: "Total training and development expenses"
    sql: ${TABLE}.training_expenses ;;
  }
  dimension: travel_expenses {
    type: number
    description: "Total travel expenses"
    sql: ${TABLE}.travel_expenses ;;
  }
  dimension: variance_analysis_notes {
    type: string
    description: "Notes on budget variance analysis"
    sql: ${TABLE}.variance_analysis_notes ;;
  }
  dimension: vendor_performance_score {
    type: number
    description: "Average performance score of vendors"
    sql: ${TABLE}.vendor_performance_score ;;
  }
  dimension: working_capital {
    type: number
    description: "Working capital (current assets - current liabilities)"
    sql: ${TABLE}.working_capital ;;
  }
  dimension: working_capital_turnover {
    type: number
    description: "Working capital turnover ratio"
    sql: ${TABLE}.working_capital_turnover ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      sales.sale_id,
      products.product_id,
      products.product_name,
      orders.order_id,
      orders.delivery_contact_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id
    ]
  }

}