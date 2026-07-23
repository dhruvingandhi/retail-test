view: product_bundles {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.ProductBundles` ;;

  dimension: bundle_id {
    type: number
    description: "Unique identifier for each product bundle"
    sql: ${TABLE}.bundle_id ;;
  }
  dimension: bundle_name {
    type: string
    description: "Name of the product bundle"
    sql: ${TABLE}.bundle_name ;;
  }
  dimension: bundle_sku {
    type: string
    description: "Stock Keeping Unit for the bundle, must be unique"
    sql: ${TABLE}.bundle_sku ;;
  }
  dimension: category_id {
    type: number
    description: "ID of the category this bundle belongs to (if applicable)"
    sql: ${TABLE}.category_id ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp when the bundle was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    description: "User who created the bundle"
    sql: ${TABLE}.created_by ;;
  }
  dimension: description {
    type: string
    description: "Detailed description of the bundle"
    sql: ${TABLE}.description ;;
  }
  dimension: discount_amount {
    type: number
    description: "Discount applied to the bundle"
    sql: ${TABLE}.discount_amount ;;
  }
  dimension_group: end {
    type: time
    description: "End date of the bundle's availability (for limited-time offers)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: is_active {
    type: yesno
    description: "Indicates if the bundle is currently active and available for sale"
    sql: ${TABLE}.is_active ;;
  }
  dimension: max_quantity {
    type: number
    description: "Maximum quantity that can be purchased (if limited)"
    sql: ${TABLE}.max_quantity ;;
  }
  dimension: min_quantity {
    type: number
    description: "Minimum quantity that can be purchased"
    sql: ${TABLE}.min_quantity ;;
  }
  dimension_group: start {
    type: time
    description: "Start date of the bundle's availability (for limited-time offers)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: total_price {
    type: number
    description: "Total price of the bundle"
    sql: ${TABLE}.total_price ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp when the bundle was last updated"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [bundle_name]
  }
}