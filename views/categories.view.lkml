# The name of this view in Looker is "Categories"
view: categories {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Categories` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    description: "Unique identifier for each category"
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    description: "Name of the category"
    sql: ${TABLE}.category_name ;;
  }

  dimension: description {
    type: string
    description: "Detailed description of the category"
    sql: ${TABLE}.description ;;
  }

  dimension: parent_category_id {
    type: number
    description: "ID of the parent category, allowing for hierarchical structure"
    sql: ${TABLE}.parent_category_id ;;
  }
  measure: count {
    type: count
    drill_fields: [category_name]
  }
}
