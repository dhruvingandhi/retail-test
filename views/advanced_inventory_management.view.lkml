view: advanced_inventory_management {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.AdvancedInventoryManagement` ;;

  dimension: abc_classification {
    type: string
    description: "ABC analysis classification (A, B, or C)"
    sql: ${TABLE}.abc_classification ;;
  }
  dimension: assembly_flag {
    type: yesno
    description: "Indicates if the product requires assembly"
    sql: ${TABLE}.assembly_flag ;;
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
  dimension: batch_number {
    type: string
    description: "Batch number for production tracking"
    sql: ${TABLE}.batch_number ;;
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
  dimension: country_of_origin {
    type: string
    description: "Country where the product was manufactured"
    sql: ${TABLE}.country_of_origin ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp when the record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of the user who created the record"
    sql: ${TABLE}.created_by ;;
  }
  dimension: cross_docking_flag {
    type: yesno
    description: "Indicates if the product is suitable for cross-docking"
    sql: ${TABLE}.cross_docking_flag ;;
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
  dimension: customs_hs_code {
    type: string
    description: "Harmonized System code for international trade"
    sql: ${TABLE}.customs_hs_code ;;
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
  dimension: demand_trend {
    type: string
    description: "Trend in the product's demand"
    sql: ${TABLE}.demand_trend ;;
  }
  dimension: dimensions {
    type: string
    description: "Dimensions of the product (length x width x height)"
    sql: ${TABLE}.dimensions ;;
  }
  dimension: disassembly_flag {
    type: yesno
    description: "Indicates if the product can be disassembled"
    sql: ${TABLE}.disassembly_flag ;;
  }
  dimension: economic_order_quantity {
    type: number
    description: "Optimal order quantity to minimize total costs"
    sql: ${TABLE}.economic_order_quantity ;;
  }
  dimension: excess_stock_duration {
    type: number
    description: "Duration of excess stock situation in days"
    sql: ${TABLE}.excess_stock_duration ;;
  }
  dimension: excess_stock_quantity {
    type: number
    description: "Quantity of excess stock"
    sql: ${TABLE}.excess_stock_quantity ;;
  }
  dimension_group: expiration {
    type: time
    description: "Expiration date for perishable items"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiration_date ;;
  }
  dimension: fifo_lifo_flag {
    type: string
    description: "Indicates whether FIFO or LIFO method is used"
    sql: ${TABLE}.FIFO_LIFO_flag ;;
  }
  dimension: forecast_accuracy {
    type: number
    description: "Accuracy of demand forecasts as a percentage"
    sql: ${TABLE}.forecast_accuracy ;;
  }
  dimension: fsn_classification {
    type: string
    description: "FSN analysis classification (F, S, or N)"
    sql: ${TABLE}.fsn_classification ;;
  }
  dimension: gm_classification {
    type: string
    description: "GM analysis classification (G or M)"
    sql: ${TABLE}.gm_classification ;;
  }
  dimension: handling_instructions {
    type: string
    description: "Special instructions for handling the product"
    sql: ${TABLE}.handling_instructions ;;
  }
  dimension: in_transit_quantity {
    type: number
    description: "Quantity currently in transit"
    sql: ${TABLE}.in_transit_quantity ;;
  }
  dimension: insurance_value {
    type: number
    description: "Insured value of the inventory"
    sql: ${TABLE}.insurance_value ;;
  }
  dimension: inventory_accuracy {
    type: number
    description: "Accuracy of inventory records as a percentage"
    sql: ${TABLE}.inventory_accuracy ;;
  }
  dimension: inventory_id {
    type: number
    description: "Unique identifier for each inventory record"
    sql: ${TABLE}.inventory_id ;;
  }
  dimension: inventory_turnover_rate {
    type: number
    description: "Rate at which inventory is sold and replaced"
    sql: ${TABLE}.inventory_turnover_rate ;;
  }
  dimension: is_fragile {
    type: yesno
    description: "Indicates if the product is fragile"
    sql: ${TABLE}.is_fragile ;;
  }
  dimension: is_hazardous {
    type: yesno
    description: "Indicates if the product is hazardous"
    sql: ${TABLE}.is_hazardous ;;
  }
  dimension: is_oversized {
    type: yesno
    description: "Indicates if the product is oversized"
    sql: ${TABLE}.is_oversized ;;
  }
  dimension: is_perishable {
    type: yesno
    description: "Indicates if the product is perishable"
    sql: ${TABLE}.is_perishable ;;
  }
  dimension: kitting_flag {
    type: yesno
    description: "Indicates if the product is used in kitting operations"
    sql: ${TABLE}.kitting_flag ;;
  }
  dimension_group: last_count {
    type: time
    description: "Date of the last physical inventory count"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_count_date ;;
  }
  dimension: last_cycle_count_accuracy {
    type: number
    description: "Accuracy of the last cycle count as a percentage"
    sql: ${TABLE}.last_cycle_count_accuracy ;;
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
  dimension_group: last_price_update {
    type: time
    description: "Date of the last price update"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_price_update ;;
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
  dimension: manufacturer_id {
    type: number
    description: "ID of the manufacturer (Foreign key to Manufacturers table)"
    # hidden: yes
    sql: ${TABLE}.manufacturer_id ;;
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
  dimension_group: next_quality_audit {
    type: time
    description: "Date of the next scheduled quality audit"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_quality_audit_date ;;
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
  dimension: obsolescence_risk {
    type: number
    description: "Risk of the product becoming obsolete"
    sql: ${TABLE}.obsolescence_risk ;;
  }
  dimension: price_trend {
    type: string
    description: "Trend in the product's price"
    sql: ${TABLE}.price_trend ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product (Foreign key to Products table)"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: quality_check {
    type: time
    description: "Date of the last quality check"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.quality_check_date ;;
  }
  dimension: quality_check_status {
    type: string
    description: "Status of the last quality check"
    sql: ${TABLE}.quality_check_status ;;
  }
  dimension: quarantine_flag {
    type: yesno
    description: "Indicates if the product is under quarantine"
    sql: ${TABLE}.quarantine_flag ;;
  }
  dimension: quarantine_reason {
    type: string
    description: "Reason for quarantine, if applicable"
    sql: ${TABLE}.quarantine_reason ;;
  }
  dimension: recall_flag {
    type: yesno
    description: "Indicates if the product is under recall"
    sql: ${TABLE}.recall_flag ;;
  }
  dimension: recall_reason {
    type: string
    description: "Reason for recall, if applicable"
    sql: ${TABLE}.recall_reason ;;
  }
  dimension: reorder_point {
    type: number
    description: "Quantity at which reordering is triggered"
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: replenishment_method {
    type: string
    description: "Method used for inventory replenishment"
    sql: ${TABLE}.replenishment_method ;;
  }
  dimension: reserved_quantity {
    type: number
    description: "Quantity reserved for pending orders"
    sql: ${TABLE}.reserved_quantity ;;
  }
  dimension: return_rate {
    type: number
    description: "Rate of product returns"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: safety_stock_quantity {
    type: number
    description: "Extra stock kept to prevent stockouts"
    sql: ${TABLE}.safety_stock_quantity ;;
  }
  dimension_group: seasonal_end {
    type: time
    description: "End date of the product's season"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.seasonal_end_date ;;
  }
  dimension: seasonal_flag {
    type: yesno
    description: "Indicates if the product is seasonal"
    sql: ${TABLE}.seasonal_flag ;;
  }
  dimension_group: seasonal_start {
    type: time
    description: "Start date of the product's season"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.seasonal_start_date ;;
  }
  dimension: serial_number {
    type: string
    description: "Serial number for unique item tracking"
    sql: ${TABLE}.serial_number ;;
  }
  dimension: shelf_location {
    type: string
    description: "Specific shelf location within the warehouse"
    sql: ${TABLE}.shelf_location ;;
  }
  dimension: shrinkage_rate {
    type: number
    description: "Rate of inventory loss due to theft, damage, etc."
    sql: ${TABLE}.shrinkage_rate ;;
  }
  dimension: slow_moving_flag {
    type: yesno
    description: "Indicates if the product is slow-moving"
    sql: ${TABLE}.slow_moving_flag ;;
  }
  dimension: slow_moving_threshold {
    type: number
    description: "Threshold for classifying as slow-moving inventory"
    sql: ${TABLE}.slow_moving_threshold ;;
  }
  dimension: standard_deviation_demand {
    type: number
    description: "Standard deviation of daily demand"
    sql: ${TABLE}.standard_deviation_demand ;;
  }
  dimension: stock_out_duration {
    type: number
    description: "Total duration of stockouts in days"
    sql: ${TABLE}.stock_out_duration ;;
  }
  dimension: stock_out_frequency {
    type: number
    description: "Number of stockout occurrences"
    sql: ${TABLE}.stock_out_frequency ;;
  }
  dimension: stock_status {
    type: string
    description: "Current status of the stock (e.g., 'In Stock', 'Low Stock')"
    sql: ${TABLE}.stock_status ;;
  }
  dimension: storage_requirements {
    type: string
    description: "Specific storage requirements"
    sql: ${TABLE}.storage_requirements ;;
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
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    description: "ID of the user who last updated the record"
    sql: ${TABLE}.updated_by ;;
  }
  dimension: ved_classification {
    type: string
    description: "VED analysis classification (V, E, or D)"
    sql: ${TABLE}.ved_classification ;;
  }
  dimension: volume {
    type: number
    description: "Volume of one unit of the product"
    sql: ${TABLE}.volume ;;
  }
  dimension: volume_unit {
    type: string
    description: "Unit of measurement for volume"
    sql: ${TABLE}.volume_unit ;;
  }
  dimension: warehouse_id {
    type: number
    description: "ID of the warehouse (Foreign key to Warehouses table)"
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }
  dimension: weight {
    type: number
    description: "Weight of one unit of the product"
    sql: ${TABLE}.weight ;;
  }
  dimension: weight_unit {
    type: string
    description: "Unit of measurement for weight"
    sql: ${TABLE}.weight_unit ;;
  }
  dimension: xyz_classification {
    type: string
    description: "XYZ analysis classification (X, Y, or Z)"
    sql: ${TABLE}.xyz_classification ;;
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
      manufacturers.manufacturer_id,
      manufacturers.manufacturer_name,
      suppliers.supplier_id,
      suppliers.bank_name,
      suppliers.supplier_name,
      warehouses.warehouse_name,
      warehouses.manager_name,
      warehouses.warehouse_id
    ]
  }

}