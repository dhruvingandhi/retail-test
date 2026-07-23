view: inventory_levels {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.InventoryLevels` ;;

  fields_hidden_by_default: yes

  dimension: inventory_id {
    primary_key: yes
    label: "Inventory ID"
    description: "Unique identifier for each inventory record"
    type: number
    sql: ${TABLE}.inventory_id ;;
  }
  dimension: available_quantity {
    type: number
    description: "Quantity available for sale or use"
    sql: ${TABLE}.available_quantity ;;
  }
  dimension: average_daily_sales {
    type: number
    description: "Average daily sales of the product"
    sql: ${TABLE}.average_daily_sales ;;
  }
  dimension: current_quantity {
    type: number
    description: "Total quantity of the product in the warehouse"
    sql: ${TABLE}.current_quantity ;;
  }
  dimension: current_quantity_inventory_level_tier {
    hidden: no
    label: "Inventory Level Tier"
    description: "Categorizes inventory based on current quantity levels for quick status checks including the bucket ranges 0, 50, 200 and 500."
    type: tier
    sql: ${current_quantity} ;;
    tiers: [0, 50, 200, 500]
    value_format_name: decimal_0
  }
  dimension: damaged_quantity {
    type: number
    description: "Quantity that is damaged or unusable"
    sql: ${TABLE}.damaged_quantity ;;
  }
  dimension_group: last_restock {
    hidden: no
    type: time
    description: "Date of the last restocking"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_restock_date ;;
  }
  dimension_group: last_stock_count {
    type: time
    description: "Date of the last physical stock count"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_stock_count_date ;;
  }
  dimension_group: last_updated {
    type: time
    description: "Timestamp of the last update to this record"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated ;;
  }
  dimension: lead_time_days {
    type: number
    description: "Number of days it typically takes to restock"
    sql: ${TABLE}.lead_time_days ;;
  }
  dimension: max_stock_level {
    type: number
    description: "Maximum stock level to maintain"
    sql: ${TABLE}.max_stock_level ;;
  }
  dimension: min_stock_level {
    type: number
    description: "Minimum stock level to maintain"
    sql: ${TABLE}.min_stock_level ;;
  }
  dimension_group: next_scheduled_count {
    hidden: no
    type: time
    description: "Date of the next scheduled stock count"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_scheduled_count_date ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing the product"
    sql: ${TABLE}.product_id ;;
  }
  dimension: reorder_point {
    type: number
    description: "Quantity at which a reorder should be triggered"
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: reserved_quantity {
    type: number
    description: "Quantity reserved for pending orders"
    sql: ${TABLE}.reserved_quantity ;;
  }
  dimension: safety_stock_quantity {
    type: number
    description: "Quantity kept as safety stock"
    sql: ${TABLE}.safety_stock_quantity ;;
  }
  dimension: seasonal_adjustment_factor {
    type: number
    description: "Factor to adjust for seasonal demand variations"
    sql: ${TABLE}.seasonal_adjustment_factor ;;
  }
  dimension_group: since_last_restock {
    hidden: no
    label: "Since Last Restock"
    description: "Time since last restocking"
    type: duration
    sql_start: ${last_restock_raw} ;;
    sql_end: CURRENT_DATE() ;;
    intervals: [hour,day]

  }
  dimension: stock_status {
    hidden: no
    type: string
    description: "Current status of the stock (e.g., 'In Stock', 'Low Stock', 'Out of Stock')"
    sql: ${TABLE}.stock_status ;;
  }
  dimension: updated_by {
    type: string
    description: "User or process that last updated this record"
    sql: ${TABLE}.updated_by ;;
  }
  dimension: warehouse_id {
    type: number
    description: "Foreign key referencing the warehouse"
    sql: ${TABLE}.warehouse_id ;;
  }
  measure: count {
    type: count
    drill_fields: [products.product_id, products.product_name, warehouses.warehouse_name, warehouses.manager_name, warehouses.warehouse_id]
  }
  measure: average_max_stock_level {
    hidden: no
    label: "Average Max Stock Level"
    description: "Average of max stock level dimension"
    sql: ${max_stock_level} ;;
    value_format_name: decimal_1
  }
  measure: average_days_since_last_restock {
    hidden: no
    label: "Averge Days Since Last Restock"
    description: "Average of the days since last restock duration dimension"
    sql: ${days_since_last_restock} ;;
    value_format_name: decimal_1
  }
  measure: average_lead_time_days {
    hidden: no
    label: "Average Lead Time Days"
    description: "Average of dimension lead time days"
    type: average
    sql: ${lead_time_days} ;;
    value_format_name: decimal_1
  }
  measure: total_available_quantity {
    hidden: no
    label: "Total Available Quantity"
    description: "Sum of available quantity"
    type: sum
    sql: ${available_quantity} ;;
    value_format_name: decimal_0
  }
  measure: total_current_quantity {
    hidden: no
    label: "Current Quantity"
    description: "Sum of total quantity of the product in the warehouse"
    type: sum
    sql: ${current_quantity} ;;
    value_format_name: decimal_0
  }
  measure: total_damaged_quantity {
    hidden: no
    label: "Damaged Quantity"
    description: "Sum of damaged quantity"
    type: sum
    sql: ${damaged_quantity} ;;
    value_format_name: decimal_0
  }
  measure: total_inventory_before_reorder {
    hidden: no
    label: "Current Inventory Level"
    description: "Number of units remaining until a reorder is needed"
    type: number
    sql: ${total_current_quantity}-${total_reorder_quantity} ;;
    value_format_name: decimal_1
  }
  measure: total_inventory_value {
    hidden: no
    label: "Total Inventory Value"
    description: "Sum of current quantity times cost price"
    type: sum
    sql: ${current_quantity}*${products.cost_price} ;;
    value_format_name: usd_0
  }
  measure: total_reorder_quantity {
    hidden: no
    label: "Reorder Point"
    description: "Sum of quantity at which a reorder should be triggered"
    type: sum
    sql: ${reorder_point} ;;
    value_format_name: decimal_0
  }
  measure: total_reserved_quantity {
    hidden: no
    label: "Total Reserved Quantity"
    description: "Sum of dimension reserved quantity"
    type: sum
    sql: ${reserved_quantity} ;;
    value_format_name: decimal_0
  }
}