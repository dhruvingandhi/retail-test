view: customer_feedback {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.CustomerFeedback` ;;

  dimension: category {
    type: string
    description: "Category of the feedback (e.g., 'Quality', 'Delivery', 'Customer Service')"
    sql: ${TABLE}.category ;;
  }
  dimension: comment {
    type: string
    description: "Textual feedback from the customer"
    sql: ${TABLE}.comment ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer providing feedback"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension_group: feedback {
    type: time
    description: "Date and time when feedback was submitted"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.feedback_date ;;
  }
  dimension: feedback_id {
    type: number
    description: "Unique identifier for each feedback entry"
    sql: ${TABLE}.feedback_id ;;
  }
  dimension: feedback_type {
    type: string
    description: "Type of feedback (e.g., 'Product Review', 'Service Complaint')"
    sql: ${TABLE}.feedback_type ;;
  }
  dimension: is_public {
    type: yesno
    description: "Indicates if the feedback is publicly visible"
    sql: ${TABLE}.is_public ;;
  }
  dimension: order_id {
    type: number
    description: "ID of the related order (if applicable)"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product being reviewed (if applicable)"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: rating {
    type: number
    description: "Numerical rating given by the customer"
    sql: ${TABLE}.rating ;;
  }
  dimension_group: resolved {
    type: time
    description: "Date and time when the feedback issue was resolved"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resolved_date ;;
  }
  dimension_group: response {
    type: time
    description: "Date and time when the response was given"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.response_date ;;
  }
  dimension: response_status {
    type: string
    description: "Status of the response to the feedback"
    sql: ${TABLE}.response_status ;;
  }
  dimension: response_text {
    type: string
    description: "Text of the response to the feedback"
    sql: ${TABLE}.response_text ;;
  }
  dimension: sentiment_score {
    type: number
    description: "Calculated sentiment score of the feedback"
    sql: ${TABLE}.sentiment_score ;;
  }
  dimension: source {
    type: string
    description: "Source of the feedback (e.g., 'Website', 'Mobile App', 'In-store')"
    sql: ${TABLE}.source ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      products.product_id,
      products.product_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      orders.order_id,
      orders.delivery_contact_name
    ]
  }

}