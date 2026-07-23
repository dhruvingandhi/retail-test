view: promotional_events {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.PromotionalEvents` ;;

  dimension: actual_attendance {
    type: number
    description: "Actual number of attendees"
    sql: ${TABLE}.actual_attendance ;;
  }
  dimension: actual_revenue {
    type: number
    description: "Actual revenue generated from the event"
    sql: ${TABLE}.actual_revenue ;;
  }
  dimension: channel {
    type: string
    description: "Marketing channel used for the event"
    sql: ${TABLE}.channel ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of event creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of the employee who created the event"
    sql: ${TABLE}.created_by ;;
  }
  dimension: current_spend {
    type: number
    description: "Current amount spent on the event"
    sql: ${TABLE}.current_spend ;;
  }
  dimension: description {
    type: string
    description: "Detailed description of the event"
    sql: ${TABLE}.description ;;
  }
  dimension: discount_type {
    type: string
    description: "Type of discount offered (e.g., 'Percentage', 'Fixed Amount')"
    sql: ${TABLE}.discount_type ;;
  }
  dimension: discount_value {
    type: number
    description: "Value of the discount"
    sql: ${TABLE}.discount_value ;;
  }
  dimension_group: end {
    type: time
    description: "End date and time of the event"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date ;;
  }
  dimension: event_id {
    type: number
    description: "Unique identifier for each promotional event"
    sql: ${TABLE}.event_id ;;
  }
  dimension: event_name {
    type: string
    description: "Name of the promotional event"
    sql: ${TABLE}.event_name ;;
  }
  dimension: event_type {
    type: string
    description: "Type of event (e.g., 'Sale', 'Product Launch', 'Workshop')"
    sql: ${TABLE}.event_type ;;
  }
  dimension: expected_attendance {
    type: number
    description: "Expected number of attendees"
    sql: ${TABLE}.expected_attendance ;;
  }
  dimension: expected_revenue {
    type: number
    description: "Expected revenue from the event"
    sql: ${TABLE}.expected_revenue ;;
  }
  dimension: feedback_score {
    type: number
    description: "Average feedback score for the event"
    sql: ${TABLE}.feedback_score ;;
  }
  dimension: is_online {
    type: yesno
    description: "Indicates if the event is online"
    sql: ${TABLE}.is_online ;;
  }
  dimension: location {
    type: string
    description: "Physical location of the event (if applicable)"
    sql: ${TABLE}.location ;;
  }
  dimension: maximum_discount_amount {
    type: number
    description: "Maximum discount amount allowed"
    sql: ${TABLE}.maximum_discount_amount ;;
  }
  dimension: minimum_purchase_amount {
    type: number
    description: "Minimum purchase amount to qualify for the promotion"
    sql: ${TABLE}.minimum_purchase_amount ;;
  }
  dimension: partner_involved {
    type: string
    description: "Any partners involved in the event"
    sql: ${TABLE}.partner_involved ;;
  }
  dimension: product_category_id {
    type: number
    description: "ID of the related product category (if applicable)"
    sql: ${TABLE}.product_category_id ;;
  }
  dimension: promotional_code {
    type: string
    description: "Promotional code associated with the event"
    sql: ${TABLE}.promotional_code ;;
  }
  dimension: registration_count {
    type: number
    description: "Number of registrations received"
    sql: ${TABLE}.registration_count ;;
  }
  dimension: registration_required {
    type: yesno
    description: "Indicates if registration is required"
    sql: ${TABLE}.registration_required ;;
  }
  dimension: roi {
    type: number
    description: "Return on Investment for the event"
    sql: ${TABLE}.roi ;;
  }
  dimension_group: start {
    type: time
    description: "Start date and time of the event"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: status {
    type: string
    description: "Current status of the event"
    sql: ${TABLE}.status ;;
  }
  dimension: target_audience {
    type: string
    description: "Target audience for the event"
    sql: ${TABLE}.target_audience ;;
  }
  dimension: total_budget {
    type: number
    description: "Total budget allocated for the event"
    sql: ${TABLE}.total_budget ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }
}