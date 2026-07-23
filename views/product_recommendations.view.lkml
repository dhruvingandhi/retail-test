view: product_lifecycle_management {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.ProductLifecycleManagement` ;;

  dimension: average_profit_margin {
    type: number
    description: "Average profit margin as a percentage"
    sql: ${TABLE}.average_profit_margin ;;
  }
  dimension: average_unit_cost {
    type: number
    description: "Average cost to produce one unit of the product"
    sql: ${TABLE}.average_unit_cost ;;
  }
  dimension: brand_id {
    type: number
    description: "ID of the brand (Foreign key to Brands table)"
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }
  dimension: category_id {
    type: number
    description: "ID of the product category (Foreign key to Categories table)"
    sql: ${TABLE}.category_id ;;
  }
  dimension_group: certification {
    type: time
    description: "Date when product received necessary certifications"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.certification_date ;;
  }
  dimension_group: clearance_end {
    type: time
    description: "Date when clearance sales ended or will end"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.clearance_end_date ;;
  }
  dimension_group: clearance_start {
    type: time
    description: "Date when clearance sales began"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.clearance_start_date ;;
  }
  dimension_group: conception {
    type: time
    description: "Date when the product idea was conceived"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.conception_date ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp when the record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: current_retail_price {
    type: number
    description: "Current retail price of the product"
    sql: ${TABLE}.current_retail_price ;;
  }
  dimension: current_stock_level {
    type: number
    description: "Current inventory level of the product"
    sql: ${TABLE}.current_stock_level ;;
  }
  dimension: customer_rating {
    type: number
    description: "Average customer rating (e.g., 1.0 to 5.0)"
    sql: ${TABLE}.customer_rating ;;
  }
  dimension_group: decline_start {
    type: time
    description: "Date when product sales began to decline"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.decline_start_date ;;
  }
  dimension: defect_rate {
    type: number
    description: "Percentage of units found to be defective"
    sql: ${TABLE}.defect_rate ;;
  }
  dimension_group: design_end {
    type: time
    description: "Date when product design was completed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.design_end_date ;;
  }
  dimension_group: design_start {
    type: time
    description: "Date when product design began"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.design_start_date ;;
  }
  dimension_group: discontinuation {
    type: time
    description: "Date when the product was or will be discontinued"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.discontinuation_date ;;
  }
  dimension_group: end_of_life {
    type: time
    description: "Planned or actual end of life date for the product"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_of_life_date ;;
  }
  dimension_group: general_availability {
    type: time
    description: "Date when the product became generally available"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.general_availability_date ;;
  }
  dimension: highest_ever_price {
    type: number
    description: "Highest price at which the product was ever sold"
    sql: ${TABLE}.highest_ever_price ;;
  }
  dimension: initial_production_quantity {
    type: number
    description: "Initial quantity produced for market release"
    sql: ${TABLE}.initial_production_quantity ;;
  }
  dimension_group: initial_release {
    type: time
    description: "Date when the product was first released to market"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.initial_release_date ;;
  }
  dimension: initial_retail_price {
    type: number
    description: "Initial retail price when the product was first released"
    sql: ${TABLE}.initial_retail_price ;;
  }
  dimension_group: last_order {
    type: time
    description: "Date of the last customer order"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_order_date ;;
  }
  dimension_group: last_shipment {
    type: time
    description: "Date of the last product shipment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_shipment_date ;;
  }
  dimension: lifecycle_id {
    type: number
    description: "Unique identifier for each product lifecycle record"
    sql: ${TABLE}.lifecycle_id ;;
  }
  dimension: lifecycle_stage {
    type: string
    description: "Current stage in the product lifecycle (e.g., 'Development', 'Growth', 'Maturity', 'Decline')"
    sql: ${TABLE}.lifecycle_stage ;;
  }
  dimension: lowest_ever_price {
    type: number
    description: "Lowest price at which the product was ever sold"
    sql: ${TABLE}.lowest_ever_price ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes or comments about the product lifecycle"
    sql: ${TABLE}.notes ;;
  }
  dimension_group: peak_sales {
    type: time
    description: "Date when the product reached its peak sales"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.peak_sales_date ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product (Foreign key to Products table)"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    description: "Name of the product"
    sql: ${TABLE}.product_name ;;
  }
  dimension_group: production_start {
    type: time
    description: "Date when full-scale production began"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.production_start_date ;;
  }
  dimension_group: prototype_creation {
    type: time
    description: "Date when the first prototype was created"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prototype_creation_date ;;
  }
  dimension: reorder_point {
    type: number
    description: "Inventory level at which reordering is triggered"
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: replacement_product_id {
    type: number
    description: "ID of the product replacing this one (Foreign key to Products table)"
    sql: ${TABLE}.replacement_product_id ;;
  }
  dimension: return_rate {
    type: number
    description: "Percentage of units returned by customers"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: sku {
    type: string
    description: "Stock Keeping Unit, unique identifier for inventory management"
    sql: ${TABLE}.sku ;;
  }
  dimension_group: support_end {
    type: time
    description: "Date when product support will end or ended"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.support_end_date ;;
  }
  dimension_group: testing_end {
    type: time
    description: "Date when product testing was completed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.testing_end_date ;;
  }
  dimension_group: testing_start {
    type: time
    description: "Date when product testing began"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.testing_start_date ;;
  }
  dimension: total_development_cost {
    type: number
    description: "Total cost incurred in developing the product"
    sql: ${TABLE}.total_development_cost ;;
  }
  dimension: total_profit {
    type: number
    description: "Total profit generated by the product"
    sql: ${TABLE}.total_profit ;;
  }
  dimension: total_revenue {
    type: number
    description: "Total revenue generated by the product"
    sql: ${TABLE}.total_revenue ;;
  }
  dimension: total_units_produced {
    type: number
    description: "Total number of units produced over the product's lifetime"
    sql: ${TABLE}.total_units_produced ;;
  }
  dimension: total_units_sold {
    type: number
    description: "Total number of units sold over the product's lifetime"
    sql: ${TABLE}.total_units_sold ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: warranty_period {
    type: string
    description: "Duration of the product warranty"
    sql: ${TABLE}.warranty_period ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, products.product_id, products.product_name, brands.brand_name, brands.brand_id]
  }
}