view: store_performance {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.StorePerformance` ;;

  dimension: average_items_per_transaction {
    type: number
    description: "Average number of items per transaction"
    sql: ${TABLE}.average_items_per_transaction ;;
  }
  dimension: average_queue_time {
    type: string
    description: "Average time customers spend in queue"
    sql: ${TABLE}.average_queue_time ;;
  }
  dimension: average_transaction_value {
    type: number
    description: "Average value per transaction"
    sql: ${TABLE}.average_transaction_value ;;
  }
  dimension: basket_abandonment_rate {
    type: number
    description: "Rate at which customers abandon their shopping baskets"
    sql: ${TABLE}.basket_abandonment_rate ;;
  }
  dimension: busiest_hour_of_day {
    type: string
    description: "Hour with the highest sales or foot traffic"
    sql: ${TABLE}.busiest_hour_of_day ;;
  }
  dimension: cash_sales {
    type: number
    description: "Total sales made in cash"
    sql: ${TABLE}.cash_sales ;;
  }
  dimension: conversion_rate {
    type: number
    description: "Percentage of visitors who made a purchase"
    sql: ${TABLE}.conversion_rate ;;
  }
  dimension: credit_card_sales {
    type: number
    description: "Total sales made via credit cards"
    sql: ${TABLE}.credit_card_sales ;;
  }
  dimension: cross_sell_success_rate {
    type: number
    description: "Rate of successful cross-sells"
    sql: ${TABLE}.cross_sell_success_rate ;;
  }
  dimension: customer_complaints {
    type: number
    description: "Number of customer complaints received"
    sql: ${TABLE}.customer_complaints ;;
  }
  dimension: customer_compliments {
    type: number
    description: "Number of customer compliments received"
    sql: ${TABLE}.customer_compliments ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Average customer satisfaction rating"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension_group: date {
    type: time
    description: "Date of the performance record"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: employee_count {
    type: number
    description: "Number of employees who worked that day"
    sql: ${TABLE}.employee_count ;;
  }
  dimension: energy_consumption {
    type: number
    description: "Energy consumption for the day"
    sql: ${TABLE}.energy_consumption ;;
  }
  dimension: foot_traffic {
    type: number
    description: "Number of customers who entered the store"
    sql: ${TABLE}.foot_traffic ;;
  }
  dimension: gift_card_sales {
    type: number
    description: "Total sales made using gift cards"
    sql: ${TABLE}.gift_card_sales ;;
  }
  dimension: inventory_shrinkage_value {
    type: number
    description: "Value of inventory lost due to theft, damage, etc."
    sql: ${TABLE}.inventory_shrinkage_value ;;
  }
  dimension: inventory_turnover {
    type: number
    description: "Rate at which inventory is sold and replaced"
    sql: ${TABLE}.inventory_turnover ;;
  }
  dimension: labor_cost {
    type: number
    description: "Total cost of labor for the day"
    sql: ${TABLE}.labor_cost ;;
  }
  dimension: labor_hours {
    type: number
    description: "Total hours worked by staff"
    sql: ${TABLE}.labor_hours ;;
  }
  dimension: least_selling_product_id {
    type: number
    description: "ID of the least-selling product"
    sql: ${TABLE}.least_selling_product_id ;;
  }
  dimension: least_selling_product_units {
    type: number
    description: "Number of units sold of the least-selling product"
    sql: ${TABLE}.least_selling_product_units ;;
  }
  dimension: local_event_impact {
    type: string
    description: "Description of any local events affecting sales"
    sql: ${TABLE}.local_event_impact ;;
  }
  dimension: loyalty_program_redemptions {
    type: number
    description: "Number of loyalty program redemptions"
    sql: ${TABLE}.loyalty_program_redemptions ;;
  }
  dimension: loyalty_program_sign_ups {
    type: number
    description: "Number of new loyalty program sign-ups"
    sql: ${TABLE}.loyalty_program_sign_ups ;;
  }
  dimension: maintenance_issues_reported {
    type: number
    description: "Number of maintenance issues reported"
    sql: ${TABLE}.maintenance_issues_reported ;;
  }
  dimension: manager_on_duty {
    type: string
    description: "Name of the manager on duty"
    sql: ${TABLE}.manager_on_duty ;;
  }
  dimension: marketing_spend {
    type: number
    description: "Amount spent on marketing for the day"
    sql: ${TABLE}.marketing_spend ;;
  }
  dimension: mobile_payment_sales {
    type: number
    description: "Total sales made via mobile payments"
    sql: ${TABLE}.mobile_payment_sales ;;
  }
  dimension: mystery_shopper_score {
    type: number
    description: "Score from mystery shopper evaluations"
    sql: ${TABLE}.mystery_shopper_score ;;
  }
  dimension: net_promoter_score {
    type: number
    description: "Net Promoter Score for the day"
    sql: ${TABLE}.net_promoter_score ;;
  }
  dimension: online_orders_fulfilled {
    type: number
    description: "Number of online orders fulfilled by the store"
    sql: ${TABLE}.online_orders_fulfilled ;;
  }
  dimension: overtime_hours {
    type: number
    description: "Total overtime hours worked"
    sql: ${TABLE}.overtime_hours ;;
  }
  dimension: peak_traffic_hour {
    type: string
    description: "Hour with the highest foot traffic"
    sql: ${TABLE}.peak_traffic_hour ;;
  }
  dimension: performance_id {
    type: number
    description: "Unique identifier for each performance record"
    sql: ${TABLE}.performance_id ;;
  }
  dimension: promotional_sales_value {
    type: number
    description: "Total value of sales from promotional items"
    sql: ${TABLE}.promotional_sales_value ;;
  }
  dimension: returns_value {
    type: number
    description: "Total value of returned items"
    sql: ${TABLE}.returns_value ;;
  }
  dimension: slowest_hour_of_day {
    type: string
    description: "Hour with the lowest sales or foot traffic"
    sql: ${TABLE}.slowest_hour_of_day ;;
  }
  dimension: social_media_mentions {
    type: number
    description: "Number of social media mentions of the store"
    sql: ${TABLE}.social_media_mentions ;;
  }
  dimension: staff_turnover_rate {
    type: number
    description: "Rate of staff turnover"
    sql: ${TABLE}.staff_turnover_rate ;;
  }
  dimension: stock_out_incidents {
    type: number
    description: "Number of times items were out of stock"
    sql: ${TABLE}.stock_out_incidents ;;
  }
  dimension: store_cleanliness_score {
    type: number
    description: "Score for store cleanliness"
    sql: ${TABLE}.store_cleanliness_score ;;
  }
  dimension: store_id {
    type: number
    description: "Foreign key referencing the store"
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }
  dimension: top_selling_product_id {
    type: number
    description: "ID of the best-selling product"
    sql: ${TABLE}.top_selling_product_id ;;
  }
  dimension: top_selling_product_units {
    type: number
    description: "Number of units sold of the best-selling product"
    sql: ${TABLE}.top_selling_product_units ;;
  }
  dimension: total_sales {
    type: number
    description: "Total sales amount for the day"
    sql: ${TABLE}.total_sales ;;
  }
  dimension: training_hours {
    type: number
    description: "Number of hours spent on staff training"
    sql: ${TABLE}.training_hours ;;
  }
  dimension: transaction_count {
    type: number
    description: "Number of transactions processed"
    sql: ${TABLE}.transaction_count ;;
  }
  dimension: upsell_success_rate {
    type: number
    description: "Rate of successful upsells"
    sql: ${TABLE}.upsell_success_rate ;;
  }
  dimension: water_consumption_gallons {
    type: number
    description: "Water consumption for the day in gallons"
    sql: ${TABLE}.water_consumption_gallons ;;
  }
  dimension: weather_conditions {
    type: string
    description: "Weather conditions for the day"
    sql: ${TABLE}.weather_conditions ;;
  }
  measure: count {
    type: count
    drill_fields: [stores.store_id, stores.store_name]
  }
}