view: customer_segments {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.CustomerSegments` ;;

  fields_hidden_by_default: yes

  dimension: segment_id {
    primary_key: yes
    label: "Segment Id"
    description: "Unique identifier for each customer segment record"
    type: number
    sql: ${TABLE}.segment_id ;;
  }
  dimension: age_group {
    type: string
    description: "Age group of the customer (e.g., '18-24', '25-34', '35-44')"
    sql: ${TABLE}.age_group ;;
  }
  dimension: avg_order_value {
    type: number
    description: "Average value of customer's orders"
    sql: ${TABLE}.avg_order_value ;;
  }
  dimension: customer_id {
    label: "Customer ID"
    description: "Foreign key referencing the customer"
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_status {
    type: string
    description: "Current status of the customer (e.g., 'Active', 'Inactive', 'At Risk')"
    sql: ${TABLE}.customer_status ;;
  }
  dimension_group: first_purchase {
    type: time
    description: "Date of customer's first purchase"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_purchase_date ;;
  }
  dimension: frequency {
    type: number
    description: "Number of purchases made by the customer"
    sql: ${TABLE}.frequency ;;
  }
  dimension: gender {
    type: string
    description: "Gender of the customer"
    sql: ${TABLE}.gender ;;
  }
  dimension_group: last_purchase {
    type: time
    description: "Date of customer's most recent purchase"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_purchase_date ;;
  }
  dimension: lifetime_value {
    type: number
    description: "Total value of customer's purchases over their lifetime"
    sql: ${TABLE}.lifetime_value ;;
  }
  dimension: location {
    type: string
    description: "Geographic location of the customer"
    sql: ${TABLE}.location ;;
  }
  dimension: loyalty_points {
    type: number
    description: "Current loyalty points balance of the customer"
    sql: ${TABLE}.loyalty_points ;;
  }
  dimension: monetary_value {
    type: number
    description: "Total amount spent by the customer"
    sql: ${TABLE}.monetary_value ;;
  }
  dimension: preferred_brand {
    type: string
    description: "Customer's most frequently purchased brand"
    sql: ${TABLE}.preferred_brand ;;
  }
  dimension: preferred_category {
    type: string
    description: "Customer's most frequently purchased product category"
    sql: ${TABLE}.preferred_category ;;
  }
  dimension: preferred_payment_method {
    type: string
    description: "Customer's most used payment method"
    sql: ${TABLE}.preferred_payment_method ;;
  }
  dimension: preferred_sales_channel {
    type: string
    description: "Customer's most used sales channel (e.g., 'Online', 'In-store')"
    sql: ${TABLE}.preferred_sales_channel ;;
  }
  dimension: recency_days {
    type: number
    description: "Number of days since the customer's last purchase"
    sql: ${TABLE}.recency_days ;;
  }
  dimension: returns_count {
    type: number
    description: "Number of returns made by the customer"
    sql: ${TABLE}.returns_count ;;
  }
  dimension: segment_name {
    hidden: no
    label: "Segment Name"
    description: "Name of the segment the customer belongs to (e.g., 'High Value', 'New Customer')"
    type: string
    sql: ${TABLE}.segment_name ;;
  }
  dimension: total_purchases {
    type: number
    description: "Total number of purchases made by the customer"
    sql: ${TABLE}.total_purchases ;;
  }
}