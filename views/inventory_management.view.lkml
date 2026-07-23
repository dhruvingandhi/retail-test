view: inventory_management {
  sql_table_name: nl2lq-eval-looker-bq-data.retail_whole.InventoryManagement` ;;

  dimension: abc_classification {
    type: string
    description: "ABC analysis classification (A, B, or C)"
    sql: ${TABLE}.abc_classification ;;
  }
  dimension: available_quantity {
    type: number
    description: "Quantity available for sale or use"
    sql: ${TABLE}.available_quantity ;;
  }
  dimension: average_daily_demand {
    type: number
    description: "Average daily demand for the product"
    sql: ${TABLE}.average_daily_demand ;;
  }
  dimension: bin_location {
    type: string
    description: "Specific bin location within the warehouse"
    sql: ${TABLE}.bin_location ;;
  }
  dimension: cost_per_unit {
    type: number
    description: "Cost per unit of the product"
    sql: ${TABLE}.cost_per_unit ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp when the record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: currency_code {
    type: string
    description: "ISO currency code for monetary values"
    sql: ${TABLE}.currency_code ;;
  }
  dimension: current_quantity {
    type: number
    description: "Current total quantity of the product"
    sql: ${TABLE}.current_quantity ;;
  }
  dimension: damaged_quantity {
    type: number
    description: "Quantity of damaged or unsellable items"
    sql: ${TABLE}.damaged_quantity ;;
  }
  dimension: days_of_supply {
    type: number
    description: "Number of days the current stock will last"
    sql: ${TABLE}.days_of_supply ;;
  }
  dimension: economic_order_quantity {
    type: number
    description: "Optimal order quantity to minimize total costs"
    sql: ${TABLE}.economic_order_quantity ;;
  }
  dimension_group: expiration {
    type: time
    description: "Expiration date for perishable items"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiration_date ;;
  }
  dimension: in_transit_quantity {
    type: number
    description: "Quantity currently in transit"
    sql: ${TABLE}.in_transit_quantity ;;
  }
  dimension: inventory_id {
    type: number
    description: "Unique identifier for each inventory record"
    sql: ${TABLE}.inventory_id ;;
  }
  dimension: is_active {
    type: yesno
    description: "Indicates if the inventory item is currently active"
    sql: ${TABLE}.is_active ;;
  }
  dimension_group: last_count {
    type: time
    description: "Date of the last physical inventory count"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_count_date ;;
  }
  dimension_group: last_movement {
    type: time
    description: "Date and time of the last inventory movement"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_movement_date ;;
  }
  dimension: last_movement_type {
    type: string
    description: "Type of the last inventory movement"
    sql: ${TABLE}.last_movement_type ;;
  }
  dimension_group: last_received {
    type: time
    description: "Date when stock was last received"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_received_date ;;
  }
  dimension_group: last_shipped {
    type: time
    description: "Date when stock was last shipped"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_shipped_date ;;
  }
  dimension: last_updated_by {
    type: number
    description: "ID of the employee who last updated the record"
    sql: ${TABLE}.last_updated_by ;;
  }
  dimension: lead_time_days {
    type: number
    description: "Number of days it takes to receive new stock"
    sql: ${TABLE}.lead_time_days ;;
  }
  dimension: lot_number {
    type: string
    description: "Lot number for traceability"
    sql: ${TABLE}.lot_number ;;
  }
  dimension: maximum_stock_level {
    type: number
    description: "Maximum quantity to keep in stock"
    sql: ${TABLE}.maximum_stock_level ;;
  }
  dimension: minimum_stock_level {
    type: number
    description: "Minimum quantity to maintain in stock"
    sql: ${TABLE}.minimum_stock_level ;;
  }
  dimension_group: next_scheduled_count {
    type: time
    description: "Date of the next scheduled inventory count"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_scheduled_count_date ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes or comments"
    sql: ${TABLE}.notes ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product (Foreign key to ProductDetails table)"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: reorder_point {
    type: number
    description: "Quantity at which reordering is triggered"
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: reserved_quantity {
    type: number
    description: "Quantity reserved for pending orders"
    sql: ${TABLE}.reserved_quantity ;;
  }
  dimension: safety_stock_quantity {
    type: number
    description: "Extra stock kept to prevent stockouts"
    sql: ${TABLE}.safety_stock_quantity ;;
  }
  dimension: serial_number {
    type: string
    description: "Serial number for unique item tracking"
    sql: ${TABLE}.serial_number ;;
  }
  dimension: stock_status {
    type: string
    description: "Current status of the stock (e.g., 'In Stock', 'Low Stock')"
    sql: ${TABLE}.stock_status ;;
  }
  dimension: supplier_id {
    type: number
    description: "ID of the supplier (Foreign key to Suppliers table)"
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: total_value {
    type: number
    description: "Total value of the inventory for this product"
    sql: ${TABLE}.total_value ;;
  }
  dimension: turnover_rate {
    type: number
    description: "Rate at which inventory is sold and replaced"
    sql: ${TABLE}.turnover_rate ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: warehouse_id {
    type: number
    description: "ID of the warehouse (Foreign key to Warehouses table)"
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
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
      suppliers.supplier_id,
      suppliers.bank_name,
      suppliers.supplier_name,
      warehouses.warehouse_name,
      warehouses.manager_name,
      warehouses.warehouse_id
    ]
  }

}