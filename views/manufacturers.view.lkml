# The name of this view in Looker is "Manufacturers"
view: manufacturers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Manufacturers` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    description: "Physical address of the manufacturer's headquarters or main facility"
    sql: ${TABLE}.address ;;
  }

  dimension: contact_person {
    type: string
    description: "Name of the primary contact person at the manufacturer"
    sql: ${TABLE}.contact_person ;;
  }

  dimension: country {
    type: string
    description: "Country where the manufacturer is based"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: created_at {
    type: number
    description: "Timestamp when the manufacturer record was created"
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    description: "Email address for contacting the manufacturer"
    sql: ${TABLE}.email ;;
  }

  dimension: established_date {
    type: string
    description: "Date when the manufacturer was established"
    sql: ${TABLE}.established_date ;;
  }

  dimension: manufacturer_id {
    type: number
    description: "Unique identifier for each manufacturer"
    sql: ${TABLE}.manufacturer_id ;;
  }

  dimension: manufacturer_name {
    type: string
    description: "Official name of the manufacturer"
    sql: ${TABLE}.manufacturer_name ;;
  }

  dimension: notes {
    type: string
    description: "Additional notes or comments about the manufacturer"
    sql: ${TABLE}.notes ;;
  }

  dimension: phone_number {
    type: string
    description: "Contact phone number for the manufacturer"
    sql: ${TABLE}.phone_number ;;
  }

  dimension: product_categories {
    type: string
    description: "List of product categories the manufacturer produces"
    sql: ${TABLE}.product_categories ;;
  }

  dimension: quality_certification {
    type: string
    description: "Quality certifications held by the manufacturer (e.g., ISO 9001)"
    sql: ${TABLE}.quality_certification ;;
  }

  dimension: updated_at {
    type: number
    description: "Timestamp of the last update to the manufacturer record"
    sql: ${TABLE}.updated_at ;;
  }

  dimension: website {
    type: string
    description: "Official website of the manufacturer"
    sql: ${TABLE}.website ;;
  }
  measure: count {
    type: count
    drill_fields: [manufacturer_name]
  }
}
