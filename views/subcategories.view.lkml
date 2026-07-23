# The name of this view in Looker is "Subcategories"
view: subcategories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Subcategories` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    description: "ID of the parent category"
    sql: ${TABLE}.category_id ;;
  }

  dimension: created_at {
    type: number
    description: "Timestamp of record creation"
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    description: "Description of the subcategory"
    sql: ${TABLE}.description ;;
  }

  dimension: is_active {
    type: yesno
    description: "Indicates if the subcategory is currently active"
    sql: ${TABLE}.is_active ;;
  }

  dimension: subcategory_id {
    type: number
    description: "Unique identifier for each subcategory"
    sql: ${TABLE}.subcategory_id ;;
  }

  dimension: subcategory_name {
    type: string
    description: "Name of the subcategory"
    sql: ${TABLE}.subcategory_name ;;
  }

  dimension: updated_at {
    type: number
    description: "Timestamp of last update"
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [subcategory_name]
  }
}
