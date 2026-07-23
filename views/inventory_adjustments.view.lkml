view: inventory_adjustments {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.InventoryAdjustments` ;;

  dimension: adjusted_by {
    type: number
    description: "ID of the employee making the adjustment"
    sql: ${TABLE}.adjusted_by ;;
  }
  dimension_group: adjustment {
    type: time
    description: "Date and time of the adjustment"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.adjustment_date ;;
  }
  dimension: adjustment_id {
    type: number
    description: "Unique identifier for each adjustment"
    sql: ${TABLE}.adjustment_id ;;
  }
  dimension: adjustment_type {
    type: string
    description: "Type of adjustment (e.g., 'Restock', 'Damage', 'Theft')"
    sql: ${TABLE}.adjustment_type ;;
  }
  dimension_group: approval {
    type: time
    description: "Date and time of approval"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.approval_date ;;
  }
  dimension: approved_by {
    type: number
    description: "ID of the employee who approved the adjustment"
    sql: ${TABLE}.approved_by ;;
  }
  dimension: new_quantity {
    type: number
    description: "Quantity after adjustment"
    sql: ${TABLE}.new_quantity ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes about the adjustment"
    sql: ${TABLE}.notes ;;
  }
  dimension: previous_quantity {
    type: number
    description: "Quantity before adjustment"
    sql: ${TABLE}.previous_quantity ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product being adjusted"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: quantity {
    type: number
    description: "Quantity being adjusted (positive for increase, negative for decrease)"
    sql: ${TABLE}.quantity ;;
  }
  dimension: reason {
    type: string
    description: "Reason for the adjustment"
    sql: ${TABLE}.reason ;;
  }
  dimension: total_adjustment_value {
    type: number
    description: "Total value of the adjustment"
    sql: ${TABLE}.total_adjustment_value ;;
  }
  dimension: unit_cost {
    type: number
    description: "Cost per unit at the time of adjustment"
    sql: ${TABLE}.unit_cost ;;
  }
  dimension: warehouse_id {
    type: number
    description: "ID of the warehouse where adjustment occurs"
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }
  measure: count {
    type: count
    drill_fields: [products.product_id, products.product_name, warehouses.warehouse_name, warehouses.manager_name, warehouses.warehouse_id]
  }
}