view: refunds {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Refunds` ;;
  drill_fields: [refund_id]

  dimension: refund_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each refund transaction"
    sql: ${TABLE}.refund_id ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of when the refund record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer receiving the refund (Foreign key to CustomerProfile table)"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: notes {
    type: string
    description: "Additional comments or details about the refund"
    sql: ${TABLE}.notes ;;
  }
  dimension: order_id {
    type: number
    description: "Associated order ID (Foreign key to Orders table)"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: payment_method {
    type: string
    description: "Method used to issue the refund (e.g., 'Credit Card', 'Store Credit')"
    sql: ${TABLE}.payment_method ;;
  }
  dimension: processed_by {
    type: number
    description: "ID of the employee who processed the refund (Foreign key to Employees table)"
    sql: ${TABLE}.processed_by ;;
  }
  dimension: refund_amount {
    type: number
    description: "Amount refunded to the customer (up to 2 decimal places)"
    sql: ${TABLE}.refund_amount ;;
  }
  dimension_group: refund {
    type: time
    description: "Date and time when the refund was processed"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.refund_date ;;
  }
  dimension: refund_reason {
    type: string
    description: "Reason for the refund (e.g., 'Defective product', 'Changed mind')"
    sql: ${TABLE}.refund_reason ;;
  }
  dimension: refund_status {
    type: string
    description: "Current status of the refund (e.g., 'Pending', 'Processed', 'Cancelled')"
    sql: ${TABLE}.refund_status ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update to the refund record"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      refund_id,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      orders.order_id,
      orders.delivery_contact_name,
      sales_transaction.count
    ]
  }

}