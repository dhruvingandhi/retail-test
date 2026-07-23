view: inventory_movements {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Inventory_Movements` ;;

  fields_hidden_by_default: yes

  dimension: movement_id {
    primary_key: yes
    label: "Movement ID"
    description: "Unique identifier for each inventory movement"
    type: number
    sql: ${TABLE}.movement_id ;;
  }
  dimension: adjustment_amount {
    type: number
    description: "Amount of inventory adjustment"
    sql: ${TABLE}.adjustment_amount ;;
  }
  dimension: adjustment_authorization {
    type: string
    description: "Authorization for inventory adjustments"
    sql: ${TABLE}.adjustment_authorization ;;
  }
  dimension: adjustment_reason {
    hidden: no
    type: string
    description: "Reason for the adjustment (if applicable)"
    sql: ${TABLE}.adjustment_reason ;;
  }
  dimension: approved_by {
    type: string
    description: "User who approved the movement"
    sql: ${TABLE}.approved_by ;;
  }
  dimension: audit_trail {
    type: string
    description: "Audit trail of changes to the movement record"
    sql: ${TABLE}.audit_trail ;;
  }
  dimension: automatic_adjustment {
    type: yesno
    description: "Indicates if the adjustment was automatic"
    sql: ${TABLE}.automatic_adjustment ;;
  }
  dimension: batch_number {
    type: string
    description: "Batch or lot number of the products"
    sql: ${TABLE}.batch_number ;;
  }
  dimension: carbon_footprint {
    type: number
    description: "Estimated carbon footprint of the movement"
    sql: ${TABLE}.carbon_footprint ;;
  }
  dimension: claim_amount {
    type: number
    description: "Amount claimed in insurance"
    sql: ${TABLE}.claim_amount ;;
  }
  dimension: claim_status {
    type: string
    description: "Status of the insurance claim"
    sql: ${TABLE}.claim_status ;;
  }
  dimension: created_by {
    type: string
    description: "User who created the movement record"
    sql: ${TABLE}.created_by ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer (for outbound movements)"
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customs_fee {
    type: number
    description: "Customs fee for international movements"
    sql: ${TABLE}.customs_fee ;;
  }
  dimension: damage_amount {
    type: number
    description: "Monetary value of the damage"
    sql: ${TABLE}.damage_amount ;;
  }
  dimension: damage_fee {
    type: number
    description: "Fee charged for damaged goods"
    sql: ${TABLE}.damage_fee ;;
  }
  dimension: damage_reason {
    type: string
    description: "Reason for the damage"
    sql: ${TABLE}.damage_reason ;;
  }
  dimension: damage_reported {
    type: yesno
    description: "Indicates if damage was reported during the movement"
    sql: ${TABLE}.damage_reported ;;
  }
  dimension: delivery_confirmed {
    type: yesno
    description: "Indicates if delivery has been confirmed"
    sql: ${TABLE}.delivery_confirmed ;;
  }
  dimension_group: delivery {
    type: time
    description: "Date of delivery"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivery_date ;;
  }
  dimension: destination_country {
    type: string
    description: "Destination country for exports"
    sql: ${TABLE}.destination_country ;;
  }
  dimension: expiration_alert {
    type: yesno
    description: "Indicates if an expiration alert is active for this lot"
    sql: ${TABLE}.expiration_alert ;;
  }
  dimension: export_tax {
    type: number
    description: "Export tax for international outbound movements"
    sql: ${TABLE}.export_tax ;;
  }
  dimension: external_notes {
    type: string
    description: "External notes (e.g., for suppliers or customers)"
    sql: ${TABLE}.external_notes ;;
  }
  dimension: handling_agent {
    type: string
    description: "Agent responsible for special handling"
    sql: ${TABLE}.handling_agent ;;
  }
  dimension: handling_fee {
    type: number
    description: "Fee for handling the inventory"
    sql: ${TABLE}.handling_fee ;;
  }
  dimension: import_tax {
    type: number
    description: "Import tax for international inbound movements"
    sql: ${TABLE}.import_tax ;;
  }
  dimension: inbound_shipment {
    hidden: no
    label: "Inbound Shipment"
    description: "Indicates if this is an inbound shipment"
    type: yesno
    sql: ${TABLE}.inbound_shipment ;;
  }
  dimension_group: incident {
    type: time
    description: "Date of the incident"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.incident_date ;;
  }
  dimension: incident_report {
    type: string
    description: "Details of any incidents during movement"
    sql: ${TABLE}.incident_report ;;
  }
  dimension: incident_resolution {
    type: string
    description: "Resolution of the incident"
    sql: ${TABLE}.incident_resolution ;;
  }
  dimension: insurance_claim {
    type: yesno
    description: "Indicates if an insurance claim has been filed"
    sql: ${TABLE}.insurance_claim ;;
  }
  dimension_group: insurance_claim {
    type: time
    description: "Date of the insurance claim"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insurance_claim_date ;;
  }
  dimension: insurance_coverage {
    type: number
    description: "Amount of insurance coverage for the movement"
    sql: ${TABLE}.insurance_coverage ;;
  }
  dimension: internal_notes {
    type: string
    description: "Internal notes about the movement"
    sql: ${TABLE}.internal_notes ;;
  }
  dimension: inventory_cycle_count {
    type: number
    description: "Cycle count number for this inventory"
    sql: ${TABLE}.inventory_cycle_count ;;
  }
  dimension: inventory_lot {
    type: string
    description: "Lot number for inventory tracking"
    sql: ${TABLE}.inventory_lot ;;
  }
  dimension: inventory_value_change {
    type: number
    description: "Change in inventory value due to this movement"
    sql: ${TABLE}.inventory_value_change ;;
  }
  dimension: is_adjustment {
    type: yesno
    description: "Indicates if this is an inventory adjustment"
    sql: ${TABLE}.is_adjustment ;;
  }
  dimension: is_exported {
    hidden: no
    type: yesno
    description: "Indicates if the movement is an export"
    sql: ${TABLE}.is_exported ;;
  }
  dimension: is_lost {
    hidden: no
    type: yesno
    description: "Indicates if the inventory is reported as lost"
    sql: ${TABLE}.is_lost ;;
  }
  dimension: is_perishable {
    hidden: no
    type: yesno
    description: "Indicates if the product is perishable"
    sql: ${TABLE}.is_perishable ;;
  }
  dimension: is_seasonal {
    hidden: no
    type: yesno
    description: "Indicates if the product is seasonal"
    sql: ${TABLE}.is_seasonal ;;
  }
  dimension: is_special_handling_required {
    hidden: no
    type: yesno
    description: "Indicates if special handling is required"
    sql: ${TABLE}.is_special_handling_required ;;
  }
  dimension: is_verified {
    hidden: no
    type: yesno
    description: "Indicates if the movement has been verified"
    sql: ${TABLE}.is_verified ;;
  }
  dimension: logistics_partner {
    type: string
    description: "Name of the logistics partner handling the movement"
    sql: ${TABLE}.logistics_partner ;;
  }
  dimension: loss_prevention_inspector {
    type: string
    description: "Inspector for loss prevention"
    sql: ${TABLE}.loss_prevention_inspector ;;
  }
  dimension: loss_prevention_status {
    type: string
    description: "Status of loss prevention measures"
    sql: ${TABLE}.loss_prevention_status ;;
  }
  dimension: lost_reason {
    type: string
    description: "Reason for lost inventory"
    sql: ${TABLE}.lost_reason ;;
  }
  dimension: manual_adjustment {
    type: yesno
    description: "Indicates if the adjustment was manual"
    sql: ${TABLE}.manual_adjustment ;;
  }
  dimension: movement_cost {
    type: number
    description: "Cost associated with the movement"
    sql: ${TABLE}.movement_cost ;;
  }
  dimension: movement_recorded_by {
    type: string
    description: "Person who recorded the movement"
    sql: ${TABLE}.movement_recorded_by ;;
  }
  dimension: new_quantity {
    type: number
    description: "Quantity after the movement"
    sql: ${TABLE}.new_quantity ;;
  }
  dimension_group: next_cycle_count {
    type: time
    description: "Date of the next scheduled cycle count"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_cycle_count_date ;;
  }
  dimension: outbound_shipment {
    hidden: no
    label: "Outbound Shipment"
    description: "Indicates if this is an outbound shipment"
    type: yesno
    sql: ${TABLE}.outbound_shipment ;;
  }
  dimension: previous_quantity {
    type: number
    description: "Quantity before the movement"
    sql: ${TABLE}.previous_quantity ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing the product involved in the movement"
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: qc {
    type: time
    description: "Date of quality check"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.qc_date ;;
  }
  dimension: qc_notes {
    type: string
    description: "Notes from quality check"
    sql: ${TABLE}.qc_notes ;;
  }
  dimension: quality_check_passed {
    type: yesno
    description: "Indicates if the quality check was passed"
    sql: ${TABLE}.quality_check_passed ;;
  }
  dimension: quantity {
    type: number
    description: "Quantity of products moved"
    sql: ${TABLE}.quantity ;;
  }
  dimension: received_by {
    type: string
    description: "Person who received the goods"
    sql: ${TABLE}.received_by ;;
  }
  dimension_group: received {
    type: time
    description: "Date when goods were received (for inbound movements)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.received_date ;;
  }
  dimension: remarks {
    type: string
    description: "Additional remarks about the movement"
    sql: ${TABLE}.remarks ;;
  }
  dimension: restock_authorized_by {
    type: string
    description: "Person who authorized restocking"
    sql: ${TABLE}.restock_authorized_by ;;
  }
  dimension: restock_completed_by {
    type: string
    description: "Person who completed restocking"
    sql: ${TABLE}.restock_completed_by ;;
  }
  dimension_group: restock {
    type: time
    description: "Date of restocking"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.restock_date ;;
  }
  dimension: restock_fee {
    type: number
    description: "Fee charged for restocking"
    sql: ${TABLE}.restock_fee ;;
  }
  dimension: restock_notes {
    type: string
    description: "Additional notes on restocking"
    sql: ${TABLE}.restock_notes ;;
  }
  dimension: restock_percentage {
    type: number
    description: "Percentage of restock fee"
    sql: ${TABLE}.restock_percentage ;;
  }
  dimension: restock_reason {
    type: string
    description: "Reason for restocking (if applicable)"
    sql: ${TABLE}.restock_reason ;;
  }
  dimension: return_processing_fee {
    type: number
    description: "Fee for processing returns"
    sql: ${TABLE}.return_processing_fee ;;
  }
  dimension: return_reason {
    type: string
    description: "Reason for return (if applicable)"
    sql: ${TABLE}.return_reason ;;
  }
  dimension: return_shipping_cost {
    type: number
    description: "Cost of return shipping"
    sql: ${TABLE}.return_shipping_cost ;;
  }
  dimension: shipment_cost {
    type: number
    description: "Cost of shipment"
    sql: ${TABLE}.shipment_cost ;;
  }
  dimension: shipped_by {
    type: string
    description: "Person who shipped the goods"
    sql: ${TABLE}.shipped_by ;;
  }
  dimension_group: shipped {
    type: time
    description: "Date when goods were shipped (for outbound movements)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.shipped_date ;;
  }
  dimension: shipping_method {
    type: string
    description: "Method of shipping used"
    sql: ${TABLE}.shipping_method ;;
  }
  dimension: source_country {
    type: string
    description: "Source country for imports"
    sql: ${TABLE}.source_country ;;
  }
  dimension: special_handling_instructions {
    type: string
    description: "Instructions for special handling"
    sql: ${TABLE}.special_handling_instructions ;;
  }
  dimension: stock_after_movement {
    type: number
    description: "Total stock after the movement"
    sql: ${TABLE}.stock_after_movement ;;
  }
  dimension: stock_before_movement {
    type: number
    description: "Total stock before the movement"
    sql: ${TABLE}.stock_before_movement ;;
  }
  dimension: storage_cost {
    type: number
    description: "Cost of storage for this inventory"
    sql: ${TABLE}.storage_cost ;;
  }
  dimension: supplier_id {
    type: number
    description: "ID of the supplier (for inbound movements)"
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: theft_amount {
    type: number
    description: "Value of stolen inventory"
    sql: ${TABLE}.theft_amount ;;
  }
  dimension: theft_reported {
    hidden: no
    type: yesno
    description: "Indicates if theft was reported"
    sql: ${TABLE}.theft_reported ;;
  }
  dimension_group: transaction {
    hidden: no
    type: time
    description: "Date when the movement occurred"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transaction_reference {
    type: string
    description: "Reference number for the transaction"
    sql: ${TABLE}.transaction_reference ;;
  }
  dimension: transaction_type {
    hidden: no
    type: string
    description: "Type of transaction (e.g., 'Inbound', 'Outbound', 'Transfer', 'Adjustment')"
    sql: ${TABLE}.transaction_type ;;
  }
  dimension: transfer_from {
    type: string
    description: "Source warehouse for transfers"
    sql: ${TABLE}.transfer_from ;;
  }
  dimension: transfer_to {
    type: string
    description: "Destination warehouse for transfers"
    sql: ${TABLE}.transfer_to ;;
  }
  dimension: transport_mode {
    type: string
    description: "Mode of transport used"
    sql: ${TABLE}.transport_mode ;;
  }
  dimension: unexpected_shortage {
    type: yesno
    description: "Indicates if there was an unexpected shortage"
    sql: ${TABLE}.unexpected_shortage ;;
  }
  dimension: unexpected_surplus {
    type: yesno
    description: "Indicates if there was an unexpected surplus"
    sql: ${TABLE}.unexpected_surplus ;;
  }
  dimension: verified_by {
    type: string
    description: "User who verified the movement"
    sql: ${TABLE}.verified_by ;;
  }
  dimension_group: verified {
    type: time
    description: "Date of verification"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.verified_date ;;
  }
  dimension: warehouse_id {
    type: number
    description: "Foreign key referencing the warehouse where the movement occurred"
    sql: ${TABLE}.warehouse_id ;;
  }
  dimension: warehouse_transfer {
    hidden: no
    type: yesno
    description: "Indicates if this is a transfer between warehouses"
    sql: ${TABLE}.warehouse_transfer ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: total_quantity {
    hidden: no
    label: "Total Quantity"
    description: "Sum of quantity of products moved"
    type: sum
    sql: ${quantity} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      products.product_id,
      products.product_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      warehouses.warehouse_name,
      warehouses.manager_name,
      warehouses.warehouse_id,
      suppliers.supplier_id,
      suppliers.bank_name,
      suppliers.supplier_name
    ]
  }

}