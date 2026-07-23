view: retail_analytics {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.RetailAnalytics` ;;

  dimension: analytics_id {
    type: number
    description: "Unique identifier for each analytics record"
    sql: ${TABLE}.analytics_id ;;
  }
  dimension: average_fulfillment_time {
    type: number
    description: "Average time to fulfill an order (in minutes)"
    sql: ${TABLE}.average_fulfillment_time ;;
  }
  dimension: average_items_per_transaction {
    type: number
    description: "Average number of items per transaction"
    sql: ${TABLE}.average_items_per_transaction ;;
  }
  dimension: average_order_value_online {
    type: number
    description: "Average value of online orders"
    sql: ${TABLE}.average_order_value_online ;;
  }
  dimension: average_transaction_value {
    type: number
    description: "Average value per transaction"
    sql: ${TABLE}.average_transaction_value ;;
  }
  dimension: bestselling_category_id {
    type: number
    description: "ID of the best-selling category (Foreign key to Categories table)"
    sql: ${TABLE}.bestselling_category_id ;;
  }
  dimension: bestselling_product_id {
    type: number
    description: "ID of the best-selling product (Foreign key to Products table)"
    sql: ${TABLE}.bestselling_product_id ;;
  }
  dimension: cart_abandonment_rate {
    type: number
    description: "Percentage of online shopping carts abandoned"
    sql: ${TABLE}.cart_abandonment_rate ;;
  }
  dimension: conversion_rate_in_store {
    type: number
    description: "Percentage of store visitors who make a purchase"
    sql: ${TABLE}.conversion_rate_in_store ;;
  }
  dimension: cost_of_goods_sold {
    type: number
    description: "Total cost of goods sold"
    sql: ${TABLE}.cost_of_goods_sold ;;
  }
  dimension: customer_acquisition_cost {
    type: number
    description: "Average cost to acquire a new customer"
    sql: ${TABLE}.customer_acquisition_cost ;;
  }
  dimension: customer_churn_rate {
    type: number
    description: "Rate at which customers stop doing business"
    sql: ${TABLE}.customer_churn_rate ;;
  }
  dimension: customer_count {
    type: number
    description: "Total number of unique customers"
    sql: ${TABLE}.customer_count ;;
  }
  dimension: customer_lifetime_value {
    type: number
    description: "Predicted total value of a customer over their lifetime"
    sql: ${TABLE}.customer_lifetime_value ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Overall customer satisfaction score"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension_group: date {
    type: time
    description: "Date of the analytics record"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: days_of_supply {
    type: number
    description: "Number of days the current inventory will last"
    sql: ${TABLE}.days_of_supply ;;
  }
  dimension: email_click_through_rate {
    type: number
    description: "Percentage of email recipients who clicked on a link"
    sql: ${TABLE}.email_click_through_rate ;;
  }
  dimension: email_open_rate {
    type: number
    description: "Percentage of marketing emails opened"
    sql: ${TABLE}.email_open_rate ;;
  }
  dimension: employee_turnover_rate {
    type: number
    description: "Rate of employee turnover"
    sql: ${TABLE}.employee_turnover_rate ;;
  }
  dimension: foot_traffic {
    type: number
    description: "Number of people entering the store"
    sql: ${TABLE}.foot_traffic ;;
  }
  dimension: gross_profit_margin {
    type: number
    description: "Gross profit margin as a percentage"
    sql: ${TABLE}.gross_profit_margin ;;
  }
  dimension: inventory_turnover_rate {
    type: number
    description: "Rate at which inventory is sold and replaced"
    sql: ${TABLE}.inventory_turnover_rate ;;
  }
  dimension: labor_costs {
    type: number
    description: "Total labor costs"
    sql: ${TABLE}.labor_costs ;;
  }
  dimension: local_event_impact_score {
    type: number
    description: "Score indicating local event impact on sales (e.g., 1-10)"
    sql: ${TABLE}.local_event_impact_score ;;
  }
  dimension: loyalty_program_enrollment_rate {
    type: number
    description: "Percentage of customers enrolled in loyalty program"
    sql: ${TABLE}.loyalty_program_enrollment_rate ;;
  }
  dimension: loyalty_program_redemption_rate {
    type: number
    description: "Rate at which loyalty rewards are redeemed"
    sql: ${TABLE}.loyalty_program_redemption_rate ;;
  }
  dimension: marketing_spend {
    type: number
    description: "Total marketing expenditure"
    sql: ${TABLE}.marketing_spend ;;
  }
  dimension: mobile_sales_percentage {
    type: number
    description: "Percentage of sales made through mobile devices"
    sql: ${TABLE}.mobile_sales_percentage ;;
  }
  dimension: net_profit_margin {
    type: number
    description: "Net profit margin as a percentage"
    sql: ${TABLE}.net_profit_margin ;;
  }
  dimension: net_promoter_score {
    type: number
    description: "Net Promoter Score measuring customer loyalty"
    sql: ${TABLE}.net_promoter_score ;;
  }
  dimension: new_customers {
    type: number
    description: "Number of new customers acquired"
    sql: ${TABLE}.new_customers ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes or observations"
    sql: ${TABLE}.notes ;;
  }
  dimension: on_time_delivery_rate {
    type: number
    description: "Percentage of orders delivered on time"
    sql: ${TABLE}.on_time_delivery_rate ;;
  }
  dimension: online_traffic {
    type: number
    description: "Number of visitors to the online store"
    sql: ${TABLE}.online_traffic ;;
  }
  dimension: operating_expenses {
    type: number
    description: "Total operating expenses"
    sql: ${TABLE}.operating_expenses ;;
  }
  dimension: overstock_value {
    type: number
    description: "Value of overstocked items"
    sql: ${TABLE}.overstock_value ;;
  }
  dimension: rent_costs {
    type: number
    description: "Total rent costs"
    sql: ${TABLE}.rent_costs ;;
  }
  dimension: repeat_customers {
    type: number
    description: "Number of repeat customers"
    sql: ${TABLE}.repeat_customers ;;
  }
  dimension: return_rate {
    type: number
    description: "Percentage of products returned"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: sales_per_square_foot {
    type: number
    description: "Sales performance relative to retail space"
    sql: ${TABLE}.sales_per_square_foot ;;
  }
  dimension: shrinkage_value {
    type: number
    description: "Value of inventory loss due to theft, damage, etc."
    sql: ${TABLE}.shrinkage_value ;;
  }
  dimension: social_media_engagement_rate {
    type: number
    description: "Rate of engagement on social media platforms"
    sql: ${TABLE}.social_media_engagement_rate ;;
  }
  dimension: stockout_incidents {
    type: number
    description: "Number of stockout incidents"
    sql: ${TABLE}.stockout_incidents ;;
  }
  dimension: store_id {
    type: number
    description: "ID of the store (NULL for company-wide analytics) (Foreign key to Stores table)"
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }
  dimension: total_in_store_sales {
    type: number
    description: "Total sales from physical stores"
    sql: ${TABLE}.total_in_store_sales ;;
  }
  dimension: total_inventory_value {
    type: number
    description: "Total value of inventory"
    sql: ${TABLE}.total_inventory_value ;;
  }
  dimension: total_online_sales {
    type: number
    description: "Total sales from online channels"
    sql: ${TABLE}.total_online_sales ;;
  }
  dimension: total_sales {
    type: number
    description: "Total sales amount for the day"
    sql: ${TABLE}.total_sales ;;
  }
  dimension: total_transactions {
    type: number
    description: "Total number of transactions processed"
    sql: ${TABLE}.total_transactions ;;
  }
  dimension: weather_impact_score {
    type: number
    description: "Score indicating weather impact on sales (e.g., 1-10)"
    sql: ${TABLE}.weather_impact_score ;;
  }
  dimension: website_conversion_rate {
    type: number
    description: "Percentage of website visitors who make a purchase"
    sql: ${TABLE}.website_conversion_rate ;;
  }
  measure: count {
    type: count
    drill_fields: [stores.store_id, stores.store_name]
  }
}