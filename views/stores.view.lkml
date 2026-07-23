# The name of this view in Looker is "Stores"
view: stores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Stores` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    description: "Physical address of the store"
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    type: string
    description: "City where the store is located"
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    description: "Country where the store is located"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: email {
    type: string
    description: "Contact email address for the store"
    sql: ${TABLE}.email ;;
  }

  dimension: is_active {
    type: yesno
    description: "Indicates if the store is currently active"
    sql: ${TABLE}.is_active ;;
  }

  dimension: manager_id {
    type: number
    description: "ID of the store manager (could be a foreign key to an Employees table)"
    sql: ${TABLE}.manager_id ;;
  }

  dimension: opening_date {
    type: string
    description: "Date when the store was opened"
    sql: ${TABLE}.opening_date ;;
  }

  dimension: phone_number {
    type: string
    description: "Contact phone number for the store"
    sql: ${TABLE}.phone_number ;;
  }

  dimension: postal_code {
    type: string
    description: "Postal or ZIP code of the store"
    sql: ${TABLE}.postal_code ;;
  }

  dimension: size_sqft {
    type: number
    description: "Size of the store in square feet"
    sql: ${TABLE}.size_sqft ;;
  }

  dimension: state {
    type: string
    description: "State or province of the store"
    sql: ${TABLE}.state ;;
  }

  dimension: store_id {
    type: number
    description: "Unique identifier for each store"
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_name {
    type: string
    description: "Name of the store"
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_type {
    type: string
    description: "Type of store (e.g., 'Flagship', 'Outlet', 'Mall')"
    sql: ${TABLE}.store_type ;;
  }
  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
