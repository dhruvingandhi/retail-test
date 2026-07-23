view: dt_customer_fact_table {
  derived_table: {
    explore_source: orders {
      column: customer_id { field: customers.customer_id }
      column: number_of_orders {}
      column: average_order_value {}
      column: total_sales_revenue {}
      column: average_customer_review_score {}
      column: first_order_date {}
      column: last_order_date {}
    }
  }

  fields_hidden_by_default: yes

  dimension: customer_id {
    primary_key: yes
    description: "Unique identifier for each customer"
    type: number
  }
  dimension: is_recent_customer {
    hidden: no
    label: "Is Recent Customer"
    description: "Customers that placed an order in the last 2 months."
    type: yesno
    sql: ${last_order_date} > DATE_ADD(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL -2 MONTH) ;;
  }
  dimension: average_customer_review_score {
    hidden: no
    label: "Average Customer Review Score"
    description: "The average of a customer's review score. Each order comes with a customer review score"
    value_format: "#,##0.0"
    type: number
  }
  dimension: average_order_value {
    hidden: no
    label: "Average Order Value"
    description: "The average total amount of the order, including tax and shipping, in US Dollars."
    value_format: "$#,##0.00"
    type: number
  }
  dimension_group: customer_lifetime {
    hidden: no
    label: "Customer Lifetime"
    description: "Duration between a customer's first order and their most recent order."
    type: duration
    sql_start: ${first_order_date} ;;
    sql_end: ${last_order_date} ;;
    intervals: [day, week, month, year]
  }
  dimension_group: first_order {
    hidden: no
    label: "First Order"
    description: "The date the customer placed their first order."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_order_date ;;
  }
  dimension_group: last_order {
    hidden: no
    label: "Most Recent Order"
    description: "The date the customer placed their most recent order."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_order_date ;;
  }
  dimension: number_of_orders {
    label: "Number of Orders"
    description: "The total count of unique orders."
    type: number
    value_format_name: decimal_0
  }
  dimension: total_sales_revenue {
    hidden: no
    label: "Total Sales Revenue"
    description: "The sum of the total amount for orders, including tax and shipping, in US Dollars."
    value_format: "$#,##0.00"
    type: number
  }
  measure: recent_customers {
    hidden: no
    label: "Recent Customers"
    description: "The number of customers that placed an order in the last 2 months."
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [is_recent_customer: "Yes"]
    value_format_name: decimal_0
  }
  measure: average_customer_lifespan {
    hidden: no
    label: "Average Customer Lifespan"
    description: "The average number of days between customers' first and last orders."
    type: average
    sql: ${days_customer_lifetime} ;;
    value_format_name: decimal_1
  }
  measure: customer_lifetime_revenue {
    hidden: no
    label: "Customer Lifetime Revenue"
    description: "The total revenue generated from a customer for the entire duration of the relationship."
    type: sum
    sql: ${total_sales_revenue} ;;
    value_format_name: decimal_2
  }
  measure: inactive_customers {
    hidden: no
    label: "Inactive Customers"
    description: "The number of unique customers that have not placed an order in the last 2 months."
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [is_recent_customer: "No"]
    value_format_name: decimal_0
  }
  measure: return_customers {
    hidden: no
    label: "Return Customers"
    description: "The number of customers who have placed more than one order."
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [number_of_orders: ">1"]
    value_format_name: decimal_0
  }
}
