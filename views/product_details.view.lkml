view: product_details {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.ProductDetails` ;;

  dimension: age_group {
    type: string
    description: "Age group the product is designed for"
    sql: ${TABLE}.age_group ;;
  }
  dimension: brand_id {
    type: number
    description: "ID of the brand"
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }
  dimension: category_id {
    type: number
    description: "ID of the product category"
    sql: ${TABLE}.category_id ;;
  }
  dimension: color {
    type: string
    description: "Color of the product"
    sql: ${TABLE}.color ;;
  }
  dimension: cost_price {
    type: number
    description: "Cost price per unit"
    sql: ${TABLE}.cost_price ;;
  }
  dimension: country_of_origin {
    type: string
    description: "Country where the product is manufactured"
    sql: ${TABLE}.country_of_origin ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of record creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of the employee who created the record"
    sql: ${TABLE}.created_by ;;
  }
  dimension: dimension_unit {
    type: string
    description: "Unit of dimension measurement"
    sql: ${TABLE}.dimension_unit ;;
  }
  dimension_group: discontinue {
    type: time
    description: "Date when the product will be or was discontinued"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.discontinue_date ;;
  }
  dimension: gender {
    type: string
    description: "Gender the product is designed for (if applicable)"
    sql: ${TABLE}.gender ;;
  }
  dimension: height {
    type: number
    description: "Height of the product"
    sql: ${TABLE}.height ;;
  }
  dimension: is_active {
    type: yesno
    description: "Indicates if the product is currently active"
    sql: ${TABLE}.is_active ;;
  }
  dimension: is_discountable {
    type: yesno
    description: "Indicates if the product can be discounted"
    sql: ${TABLE}.is_discountable ;;
  }
  dimension: is_featured {
    type: yesno
    description: "Indicates if the product is featured"
    sql: ${TABLE}.is_featured ;;
  }
  dimension: is_taxable {
    type: yesno
    description: "Indicates if the product is taxable"
    sql: ${TABLE}.is_taxable ;;
  }
  dimension: lead_time {
    type: number
    description: "Lead time for restocking (in days)"
    sql: ${TABLE}.lead_time ;;
  }
  dimension: length {
    type: number
    description: "Length of the product"
    sql: ${TABLE}.length ;;
  }
  dimension: long_description {
    type: string
    description: "Detailed description of the product"
    sql: ${TABLE}.long_description ;;
  }
  dimension: manufacturer {
    type: string
    description: "Name of the manufacturer"
    sql: ${TABLE}.manufacturer ;;
  }
  dimension: material {
    type: string
    description: "Material of the product"
    sql: ${TABLE}.material ;;
  }
  dimension: max_order_quantity {
    type: number
    description: "Maximum quantity that can be ordered"
    sql: ${TABLE}.max_order_quantity ;;
  }
  dimension: meta_description {
    type: string
    description: "Meta description for SEO"
    sql: ${TABLE}.meta_description ;;
  }
  dimension: meta_title {
    type: string
    description: "Meta title for SEO"
    sql: ${TABLE}.meta_title ;;
  }
  dimension: min_order_quantity {
    type: number
    description: "Minimum quantity that can be ordered"
    sql: ${TABLE}.min_order_quantity ;;
  }
  dimension: msrp {
    type: number
    description: "Manufacturer's Suggested Retail Price"
    sql: ${TABLE}.msrp ;;
  }
  dimension: product_id {
    type: number
    description: "Unique identifier for each product"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    description: "Name of the product"
    sql: ${TABLE}.product_name ;;
  }
  dimension_group: release {
    type: time
    description: "Date when the product was released"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.release_date ;;
  }
  dimension: reorder_point {
    type: number
    description: "Quantity at which reorder should be triggered"
    sql: ${TABLE}.reorder_point ;;
  }
  dimension: return_policy {
    type: string
    description: "Return policy for the product"
    sql: ${TABLE}.return_policy ;;
  }
  dimension: search_keywords {
    type: string
    description: "Keywords for search optimization"
    sql: ${TABLE}.search_keywords ;;
  }
  dimension: season {
    type: string
    description: "Season the product is primarily for (if applicable)"
    sql: ${TABLE}.season ;;
  }
  dimension: short_description {
    type: string
    description: "Brief description of the product"
    sql: ${TABLE}.short_description ;;
  }
  dimension: size {
    type: string
    description: "Size of the product"
    sql: ${TABLE}.size ;;
  }
  dimension: sku {
    type: string
    description: "Stock Keeping Unit, unique product identifier"
    sql: ${TABLE}.sku ;;
  }
  dimension: stock_quantity {
    type: number
    description: "Current stock quantity"
    sql: ${TABLE}.stock_quantity ;;
  }
  dimension: style {
    type: string
    description: "Style of the product"
    sql: ${TABLE}.style ;;
  }
  dimension: subcategory_id {
    type: number
    description: "ID of the product subcategory"
    sql: ${TABLE}.subcategory_id ;;
  }
  dimension: supplier_id {
    type: number
    description: "ID of the supplier"
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: tax_class {
    type: string
    description: "Tax classification of the product"
    sql: ${TABLE}.tax_class ;;
  }
  dimension: unit_price {
    type: number
    description: "Selling price per unit"
    sql: ${TABLE}.unit_price ;;
  }
  dimension: upc {
    type: string
    description: "Universal Product Code"
    sql: ${TABLE}.upc ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: warranty_period {
    type: string
    description: "Warranty period for the product"
    sql: ${TABLE}.warranty_period ;;
  }
  dimension: weight {
    type: number
    description: "Weight of the product"
    sql: ${TABLE}.weight ;;
  }
  dimension: weight_unit {
    type: string
    description: "Unit of weight measurement"
    sql: ${TABLE}.weight_unit ;;
  }
  dimension: width {
    type: number
    description: "Width of the product"
    sql: ${TABLE}.width ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_name,
      products.product_id,
      products.product_name,
      brands.brand_name,
      brands.brand_id,
      suppliers.supplier_id,
      suppliers.bank_name,
      suppliers.supplier_name
    ]
  }

}