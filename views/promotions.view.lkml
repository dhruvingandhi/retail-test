# The name of this view in Looker is "Promotions"
view: promotions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Promotions` ;;

  fields_hidden_by_default: yes

  dimension: promotion_id {
    primary_key: yes
    label: "Promotion ID"
    description: "Unique identifier for each promotion"
    type: number
    sql: ${TABLE}.promotion_id ;;
  }
  dimension: created_at {
    type: number
    description: "Timestamp of record creation"
    sql: ${TABLE}.created_at ;;
  }
  dimension: description {
    hidden: no
    type: string
    label: "Promotion Description"
    description: "Detailed description of the promotion"
    sql: ${TABLE}.description ;;
  }
  dimension: discount_type {
    hidden: no
    label: "Discount Type"
    description: "Type of discount offered. Only includes 'Percentage', 'Fixed Amount', 'Buy One Get One' values."
    type: string
    sql: ${TABLE}.discount_type ;;
  }
  dimension: discount_value {
    label: "Discount Value"
    description: "Value of the discount"
    type: number
    sql: ${TABLE}.discount_value ;;
  }
  dimension: end_date {
    hidden: no
    type: string
    label: "End Date"
    description: "End date of the promotion"
    sql: ${TABLE}.end_date ;;
  }
  dimension: is_active {
    hidden: no
    type: yesno
    label: "Is Active"
    description: "Indicates if the promotion is currently active"
    sql: ${TABLE}.is_active ;;
  }
  dimension: minimum_purchase_amount {
    type: number
    description: "Minimum purchase amount required to apply the promotion"
    sql: ${TABLE}.minimum_purchase_amount ;;
  }
  dimension: promotion_name {
    hidden: no
    label: "Promotion Name"
    description: "Name of the promotion"
    type: string
    sql: ${TABLE}.promotion_name ;;
  }
  dimension: start_date {
    hidden: no
    type: string
    label: "Start Date"
    description: "Start date of the promotion"
    sql: ${TABLE}.start_date ;;
  }
  dimension: updated_at {
    type: number
    description: "Timestamp of last update"
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usage_limit {
    type: number
    description: "Maximum number of times the promotion can be used"
    sql: ${TABLE}.usage_limit ;;
  }
  measure: total_discount_value {
    hidden: no
    label: "Total Discount Value"
    description: "The total discount value for promotions"
    type: sum
    sql: ${discount_value} ;;
    value_format_name: usd
  }
}
