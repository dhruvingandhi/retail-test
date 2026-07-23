view: loyalty_program {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.LoyaltyProgram` ;;

  dimension_group: created {
    type: time
    description: "Timestamp of record creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: description {
    type: string
    description: "Detailed description of the program"
    sql: ${TABLE}.description ;;
  }
  dimension: minimum_points_redemption {
    type: number
    description: "Minimum points required for redemption"
    sql: ${TABLE}.minimum_points_redemption ;;
  }
  dimension: points_expiration_months {
    type: number
    description: "Number of months before points expire (NULL if they don't expire)"
    sql: ${TABLE}.points_expiration_months ;;
  }
  dimension: points_per_dollar {
    type: number
    description: "Number of points earned per dollar spent"
    sql: ${TABLE}.points_per_dollar ;;
  }
  dimension: program_id {
    type: number
    description: "Unique identifier for each loyalty program"
    sql: ${TABLE}.program_id ;;
  }
  dimension: program_name {
    type: string
    description: "Name of the loyalty program"
    sql: ${TABLE}.program_name ;;
  }
  dimension: tiers_available {
    type: yesno
    description: "Indicates if the program has different tiers"
    sql: ${TABLE}.tiers_available ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [program_name]
  }
}