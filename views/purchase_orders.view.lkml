view: purchase_orders {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.PurchaseOrders` ;;

  dimension_group: created {
    type: time
    description: "Timestamp when the purchase order record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of the employee who created the purchase order (Foreign key to Employees table)"
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: expected_delivery {
    type: time
    description: "Anticipated date of delivery for the ordered items"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expected_delivery_date ;;
  }
  dimension: notes {
    type: string
    description: "Additional comments or instructions regarding the purchase order"
    sql: ${TABLE}.notes ;;
  }
  dimension_group: order {
    type: time
    description: "Date and time when the purchase order was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.order_date ;;
  }
  dimension: order_id {
    type: number
    description: "Unique identifier for each purchase order"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: payment_terms {
    type: string
    description: "Agreed upon payment terms with the supplier"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: shipping_method {
    type: string
    description: "Method of shipping for the order (e.g., 'Ground', 'Express', 'Air Freight')"
    sql: ${TABLE}.shipping_method ;;
  }
  dimension: status {
    type: string
    description: "Current status of the order (e.g., 'Pending', 'Approved', 'Shipped', 'Received')"
    sql: ${TABLE}.status ;;
  }
  dimension: supplier_id {
    type: number
    description: "ID of the supplier fulfilling the order (Foreign key to Suppliers table)"
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: total_amount {
    type: number
    description: "Total monetary value of the purchase order"
    sql: ${TABLE}.total_amount ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update to the purchase order"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [orders.order_id, orders.delivery_contact_name, suppliers.supplier_id, suppliers.bank_name, suppliers.supplier_name]
  }
}