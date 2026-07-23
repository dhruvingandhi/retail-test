view: addresses {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Addresses` ;;
  drill_fields: [address_id]

  dimension: address_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each address"
    sql: ${TABLE}.address_id ;;
  }
  dimension: address_line1 {
    type: string
    description: "First line of the address"
    sql: ${TABLE}.address_line1 ;;
  }
  dimension: address_line2 {
    type: string
    description: "Second line of the address (if applicable)"
    sql: ${TABLE}.address_line2 ;;
  }
  dimension: address_type {
    type: string
    description: "Type of address (e.g., 'Shipping', 'Billing')"
    sql: ${TABLE}.address_type ;;
  }
  dimension: city {
    type: string
    description: "City of the address"
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    description: "Country of the address"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of record creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer associated with this address"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: is_default {
    type: yesno
    description: "Indicates if this is the default address for the customer"
    sql: ${TABLE}.is_default ;;
  }
  dimension: postal_code {
    type: string
    description: "Postal or ZIP code of the address"
    sql: ${TABLE}.postal_code ;;
  }
  dimension: state {
    type: string
    description: "State or province of the address"
    sql: ${TABLE}.state ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [address_id, customers.first_name, customers.last_name, customers.customer_id]
  }
}