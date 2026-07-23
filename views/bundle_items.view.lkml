view: bundle_items {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.BundleItems` ;;

  dimension: bundle_id {
    type: number
    description: "Foreign key referencing the ProductBundles table"
    sql: ${TABLE}.bundle_id ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing the Products table"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: quantity {
    type: number
    description: "Number of this product included in the bundle"
    sql: ${TABLE}.quantity ;;
  }
  measure: count {
    type: count
    drill_fields: [products.product_id, products.product_name]
  }
}