view: supply_chain_management {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.SupplyChainManagement` ;;

  fields_hidden_by_default: yes

  dimension: supply_chain_id {
    primary_key: yes
    label: "Supply Chain ID"
    description: "Unique identifier for each supply chain record"
    type: number
    sql: ${TABLE}.supply_chain_id ;;
  }
  dimension_group: actual_delivery {
    type: time
    description: "Actual date when the items were delivered"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actual_delivery_date ;;
  }
  dimension: actual_time_in_transit {
    type: number
    description: "Actual number of days taken for transit"
    sql: ${TABLE}.actual_time_in_transit ;;
  }
  dimension: batch_number {
    type: string
    description: "Batch or lot number for traceability"
    sql: ${TABLE}.batch_number ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp when the record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: currency_code {
    type: string
    description: "ISO currency code for the transaction"
    sql: ${TABLE}.currency_code ;;
  }
  dimension_group: customs_clearance {
    type: time
    description: "Date when the shipment cleared customs"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.customs_clearance_date ;;
  }
  dimension: customs_duties {
    type: number
    description: "Amount paid in customs duties"
    sql: ${TABLE}.customs_duties ;;
  }
  dimension: defect_rate {
    type: number
    description: "Percentage of defective items in this order"
    sql: ${TABLE}.defect_rate ;;
  }
  dimension: estimated_time_in_transit {
    type: number
    description: "Estimated number of days for transit"
    sql: ${TABLE}.estimated_time_in_transit ;;
  }
  dimension_group: expected_delivery {
    type: time
    description: "Anticipated date of delivery for the ordered items"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expected_delivery_date ;;
  }
  dimension_group: expiration {
    type: time
    description: "Expiration date of the product (for perishable items)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiration_date ;;
  }
  dimension_group: expected_vs_actual_delivery {
    hidden: no
    label: "Supplier Lead"
    description: "The hours, days or weeks between the expected delivery and the actual delivery date"
    type: duration
    sql_start: ${expected_delivery_date} ;;
    sql_end: ${actual_delivery_date} ;;
    intervals: [hour,day,week]
  }
  dimension: freight_cost {
    type: number
    description: "Cost of freight for the shipment"
    sql: ${TABLE}.freight_cost ;;
  }
  dimension: insurance_cost {
    type: number
    description: "Cost of insurance for the shipment"
    sql: ${TABLE}.insurance_cost ;;
  }
  dimension: is_on_time {
    hidden: no
    label: "Is On-Time?"
    description: "Returns true if actual delivery is on or before expected delivery date"
    type: yesno
    sql: ${actual_delivery_date} <= ${expected_delivery_date} ;;
  }
  dimension: last_updated_by {
    type: number
    description: "ID of the employee who last updated the record (Foreign key to Employees table)"
    sql: ${TABLE}.last_updated_by ;;
  }
  dimension: lead_time {
    type: number
    description: "Number of days between order placement and delivery"
    sql: ${TABLE}.lead_time ;;
  }
  dimension: notes {
    type: string
    description: "Additional comments or observations about the supply chain process"
    sql: ${TABLE}.notes ;;
  }
  dimension: on_time_delivery_rate {
    type: number
    description: "Percentage of on-time deliveries for this supplier"
    sql: ${TABLE}.on_time_delivery_rate ;;
  }
  dimension_group: order {
    type: time
    description: "Date and time when the order was placed"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.order_date ;;
  }
  dimension: order_id {
    type: number
    description: "Associated purchase order ID (Foreign key to PurchaseOrders table)"
    sql: ${TABLE}.order_id ;;
  }
  dimension: order_quantity {
    type: number
    description: "Quantity of the product ordered"
    sql: ${TABLE}.order_quantity ;;
  }
  dimension: order_status {
    type: string
    description: "Current status of the order (e.g., 'Processing', 'Shipped', 'Delivered')"
    sql: ${TABLE}.order_status ;;
  }
  dimension: other_charges {
    type: number
    description: "Any other charges associated with the shipment"
    sql: ${TABLE}.other_charges ;;
  }
  dimension: payment_status {
    type: string
    description: "Current status of the payment (e.g., 'Pending', 'Paid', 'Overdue')"
    sql: ${TABLE}.payment_status ;;
  }
  dimension: payment_terms {
    type: string
    description: "Agreed upon payment terms with the supplier"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: port_of_destination {
    type: string
    description: "Port at which the shipment is to arrive"
    sql: ${TABLE}.port_of_destination ;;
  }
  dimension: port_of_origin {
    type: string
    description: "Port from which the shipment departed"
    sql: ${TABLE}.port_of_origin ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product being ordered (Foreign key to ProductDetails table)"
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: production_end {
    type: time
    description: "Date when production of the order was completed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.production_end_date ;;
  }
  dimension_group: production_start {
    type: time
    description: "Date when production of the order began (for manufactured items)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.production_start_date ;;
  }
  dimension_group: quality_check {
    type: time
    description: "Date when quality inspection was performed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.quality_check_date ;;
  }
  dimension: quality_check_result {
    type: string
    description: "Result of the quality inspection (e.g., 'Passed', 'Failed', 'Pending')"
    sql: ${TABLE}.quality_check_result ;;
  }
  dimension: received_quantity {
    type: number
    description: "Quantity of the product actually received"
    sql: ${TABLE}.received_quantity ;;
  }
  dimension: reorder_point {
    type: number
    description: "Inventory level at which a new order should be placed"
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: return_rate {
    type: number
    description: "Percentage of items returned from this order"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: safety_stock_level {
    type: number
    description: "Minimum inventory level to maintain to avoid stockouts"
    sql: ${TABLE}.safety_stock_level ;;
  }
  dimension: shipping_method {
    type: string
    description: "Method of shipping for the order"
    sql: ${TABLE}.shipping_method ;;
  }
  dimension: storage_location {
    type: string
    description: "Specific location within the warehouse where items are stored"
    sql: ${TABLE}.storage_location ;;
  }
  dimension: supplier_id {
    type: number
    description: "ID of the supplier fulfilling the order (Foreign key to Suppliers table)"
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: total_cost {
    type: number
    description: "Total cost of the order (unit_cost * order_quantity)"
    sql: ${TABLE}.total_cost ;;
  }
  dimension: total_logistics_cost {
    type: number
    description: "Total cost of logistics (sum of freight, insurance, duties, and other charges)"
    sql: ${TABLE}.total_logistics_cost ;;
  }
  dimension: tracking_number {
    hidden: no
    label: "Tracking Number"
    description: "Tracking number for the shipment"
    type: string
    sql: ${TABLE}.tracking_number ;;
  }
  dimension: unit_cost {
    type: number
    description: "Cost per unit of the product"
    sql: ${TABLE}.unit_cost ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: warehouse_id {
    type: number
    description: "ID of the receiving warehouse (Foreign key to Warehouses table)"
    sql: ${TABLE}.warehouse_id ;;
  }
  dimension_group: warehouse_receipt {
    type: time
    description: "Date when the items were received at the warehouse"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.warehouse_receipt_date ;;
  }
  measure: average_supplier_lead_time {
    hidden: no
    label: "Average Supplier Lead Time"
    description: "Average of the duration time between expected delivery date and actual delivery date"
    type: average
    sql: ${days_expected_vs_actual_delivery} ;;
  }
  measure: count {
    label: "Count"
    description: "Default count measure for the Supply Chain Management View"
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      products.product_id,
      products.product_name,
      orders.order_id,
      orders.delivery_contact_name,
      suppliers.supplier_id,
      suppliers.bank_name,
      suppliers.supplier_name,
      warehouses.warehouse_name,
      warehouses.manager_name,
      warehouses.warehouse_id
    ]
  }

}