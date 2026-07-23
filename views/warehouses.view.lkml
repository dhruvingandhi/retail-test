view: warehouses {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Warehouses` ;;
  drill_fields: [warehouse_id]

  fields_hidden_by_default: yes

  dimension: warehouse_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each warehouse"
    sql: ${TABLE}.warehouse_id ;;
  }
  dimension: annual_operating_cost {
    type: number
    description: "Annual operating cost of the warehouse"
    sql: ${TABLE}.annual_operating_cost ;;
  }
  dimension: automation_level {
    type: string
    description: "Level of automation in the warehouse (e.g., \"Fully Automated\", \"Semi-Automated\", \"Manual\")"
    sql: ${TABLE}.automation_level ;;
  }
  dimension: available_capacity {
    type: number
    description: "Current available storage capacity in cubic meters or square feet"
    sql: ${TABLE}.available_capacity ;;
  }
  dimension: average_processing_time {
    type: number
    description: "Average time to process an order (in hours)"
    sql: ${TABLE}.average_processing_time ;;
  }
  dimension: backup_generator_capacity {
    type: number
    description: "Capacity of the backup generator (in kilowatts)"
    sql: ${TABLE}.backup_generator_capacity ;;
  }
  dimension: barcode_scanning_system {
    type: yesno
    description: "Indicates if the warehouse uses a barcode scanning system"
    sql: ${TABLE}.barcode_scanning_system ;;
  }
  dimension: bulk_storage_area_size {
    type: number
    description: "Size of the bulk storage area (in square meters)"
    sql: ${TABLE}.bulk_storage_area_size ;;
  }
  dimension: carbon_footprint {
    type: number
    description: "Annual carbon footprint of the warehouse (in metric tons of CO2)"
    sql: ${TABLE}.carbon_footprint ;;
  }
  dimension: city {
    type: string
    description: "City where the warehouse is located"
    sql: ${TABLE}.city ;;
  }
  dimension: cleaning_schedule {
    type: string
    description: "Schedule for cleaning activities"
    sql: ${TABLE}.cleaning_schedule ;;
  }
  dimension: cold_storage_area_size {
    type: number
    description: "Size of the cold storage area (in square meters)"
    sql: ${TABLE}.cold_storage_area_size ;;
  }
  dimension: compliance_certifications {
    type: string
    description: "List of compliance certifications held by the warehouse"
    sql: ${TABLE}.compliance_certifications ;;
  }
  dimension: country {
    type: string
    description: "Country where the warehouse is located"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: damaged_goods_handling_policy {
    type: string
    description: "Policy for handling damaged goods"
    sql: ${TABLE}.damaged_goods_handling_policy ;;
  }
  dimension: earthquake_proof {
    type: yesno
    description: "Indicates if the warehouse is built to withstand earthquakes"
    sql: ${TABLE}.earthquake_proof ;;
  }
  dimension: emergency_contact {
    type: string
    description: "Name of the emergency contact person"
    sql: ${TABLE}.emergency_contact ;;
  }
  dimension: emergency_phone {
    type: string
    description: "Emergency contact phone number"
    sql: ${TABLE}.emergency_phone ;;
  }
  dimension: employee_satisfaction_score {
    type: number
    description: "Average employee satisfaction score (0-100)"
    sql: ${TABLE}.employee_satisfaction_score ;;
  }
  dimension: employee_shift_schedule {
    type: string
    description: "Description of employee shift schedules"
    sql: ${TABLE}.employee_shift_schedule ;;
  }
  dimension: environmental_compliance_score {
    type: number
    description: "Environmental compliance score (0-100)"
    sql: ${TABLE}.environmental_compliance_score ;;
  }
  dimension: fire_safety_compliant {
    type: yesno
    description: "Indicates if the warehouse complies with fire safety regulations"
    sql: ${TABLE}.fire_safety_compliant ;;
  }
  dimension: fire_suppression_system {
    type: string
    description: "Type of fire suppression system installed"
    sql: ${TABLE}.fire_suppression_system ;;
  }
  dimension: flood_risk_level {
    type: string
    description: "Assessed level of flood risk (e.g., \"Low\", \"Medium\", \"High\")"
    sql: ${TABLE}.flood_risk_level ;;
  }
  dimension: forklifts_available {
    type: yesno
    description: "Indicates if forklifts are available in the warehouse"
    sql: ${TABLE}.forklifts_available ;;
  }
  dimension: hazardous_materials_handling {
    type: yesno
    description: "Indicates if the warehouse can handle hazardous materials"
    sql: ${TABLE}.hazardous_materials_handling ;;
  }
  dimension: hazardous_materials_license_number {
    type: string
    description: "License number for handling hazardous materials (if applicable)"
    sql: ${TABLE}.hazardous_materials_license_number ;;
  }
  dimension: inbound_shipments_received {
    type: number
    description: "Number of inbound shipments received annually"
    sql: ${TABLE}.inbound_shipments_received ;;
  }
  dimension: insurance_coverage {
    type: number
    description: "Amount of insurance coverage for the warehouse"
    sql: ${TABLE}.insurance_coverage ;;
  }
  dimension: inventory_management_system {
    type: string
    description: "Name of the inventory management system used"
    sql: ${TABLE}.inventory_management_system ;;
  }
  dimension: inventory_turnover_rate {
    type: number
    description: "Rate at which inventory is turned over annually"
    sql: ${TABLE}.inventory_turnover_rate ;;
  }
  dimension_group: last_safety_inspection {
    type: time
    description: "Date of the last safety inspection"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_safety_inspection_date ;;
  }
  dimension: latitude {
    type: number
    description: "Latitude coordinate of the warehouse location"
    sql: ${TABLE}.latitude ;;
  }
  dimension: location_address_line1 {
    type: string
    description: "First line of the warehouse's physical address"
    sql: ${TABLE}.location_address_line1 ;;
  }
  dimension: location_address_line2 {
    type: string
    description: "Second line of the warehouse's physical address (if applicable)"
    sql: ${TABLE}.location_address_line2 ;;
  }
  dimension: logistics_partner {
    type: string
    description: "Name of the logistics partner associated with the warehouse"
    sql: ${TABLE}.logistics_partner ;;
  }
  dimension: longitude {
    type: number
    description: "Longitude coordinate of the warehouse location"
    sql: ${TABLE}.longitude ;;
  }
  dimension: maintenance_cost {
    type: number
    description: "Annual maintenance cost of the warehouse"
    sql: ${TABLE}.maintenance_cost ;;
  }
  dimension: manager_contact_email {
    type: string
    description: "Contact email address for the warehouse manager"
    sql: ${TABLE}.manager_contact_email ;;
  }
  dimension: manager_contact_phone {
    type: string
    description: "Contact phone number for the warehouse manager"
    sql: ${TABLE}.manager_contact_phone ;;
  }
  dimension: manager_name {
    type: string
    description: "Name of the warehouse manager"
    sql: ${TABLE}.manager_name ;;
  }
  dimension: max_temperature {
    type: number
    description: "Maximum temperature maintained in the warehouse (in Celsius)"
    sql: ${TABLE}.max_temperature ;;
  }
  dimension: min_temperature {
    type: number
    description: "Minimum temperature maintained in the warehouse (in Celsius)"
    sql: ${TABLE}.min_temperature ;;
  }
  dimension_group: next_safety_inspection {
    type: time
    description: "Scheduled date for the next safety inspection"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_safety_inspection_date ;;
  }
  dimension: number_of_docks {
    type: number
    description: "Number of loading/unloading docks in the warehouse"
    sql: ${TABLE}.number_of_docks ;;
  }
  dimension: number_of_employees {
    type: number
    description: "Total number of employees working at the warehouse"
    sql: ${TABLE}.number_of_employees ;;
  }
  dimension: number_of_inventory_movements {
    type: number
    description: "Number of inventory movements (in/out) per year"
    sql: ${TABLE}.number_of_inventory_movements ;;
  }
  dimension: number_of_loading_bays {
    type: number
    description: "Number of loading bays in the warehouse"
    sql: ${TABLE}.number_of_loading_bays ;;
  }
  dimension: number_of_pallets {
    type: number
    description: "Total number of pallets in the warehouse"
    sql: ${TABLE}.number_of_pallets ;;
  }
  dimension: number_of_returns_handled {
    type: number
    description: "Number of returned items handled annually"
    sql: ${TABLE}.number_of_returns_handled ;;
  }
  dimension: number_of_shelves {
    type: number
    description: "Number of storage shelves in the warehouse"
    sql: ${TABLE}.number_of_shelves ;;
  }
  dimension: outbound_shipments_dispatched {
    type: number
    description: "Number of outbound shipments dispatched annually"
    sql: ${TABLE}.outbound_shipments_dispatched ;;
  }
  dimension: pallet_jacks_available {
    type: yesno
    description: "Indicates if pallet jacks are available in the warehouse"
    sql: ${TABLE}.pallet_jacks_available ;;
  }
  dimension: pallet_tracking_system {
    type: string
    description: "Type of pallet tracking system used"
    sql: ${TABLE}.pallet_tracking_system ;;
  }
  dimension: pest_control_schedule {
    type: string
    description: "Schedule for pest control activities"
    sql: ${TABLE}.pest_control_schedule ;;
  }
  dimension: pick_and_pack_area_size {
    type: number
    description: "Size of the area dedicated to pick and pack operations (in square meters)"
    sql: ${TABLE}.pick_and_pack_area_size ;;
  }
  dimension: postal_code {
    type: string
    description: "Postal code of the warehouse location"
    sql: ${TABLE}.postal_code ;;
  }
  dimension: power_backup_system {
    type: yesno
    description: "Indicates if the warehouse has a power backup system"
    sql: ${TABLE}.power_backup_system ;;
  }
  dimension: preferred_shipping_carrier {
    type: string
    description: "Name of the preferred shipping carrier"
    sql: ${TABLE}.preferred_shipping_carrier ;;
  }
  dimension: receiving_hours {
    type: string
    description: "Operating hours for receiving goods"
    sql: ${TABLE}.receiving_hours ;;
  }
  dimension: return_processing_area_size {
    type: number
    description: "Size of the area dedicated to processing returns (in square meters)"
    sql: ${TABLE}.return_processing_area_size ;;
  }
  dimension: rfid_enabled {
    type: yesno
    description: "Indicates if the warehouse uses RFID technology"
    sql: ${TABLE}.RFID_enabled ;;
  }
  dimension: safety_training_program {
    type: string
    description: "Description of the safety training program for employees"
    sql: ${TABLE}.safety_training_program ;;
  }
  dimension: security_cameras {
    type: yesno
    description: "Indicates if the warehouse has security cameras installed"
    sql: ${TABLE}.security_cameras ;;
  }
  dimension: security_guards {
    type: yesno
    description: "Indicates if the warehouse employs security guards"
    sql: ${TABLE}.security_guards ;;
  }
  dimension: security_level {
    type: string
    description: "Level of security measures implemented (e.g., \"High\", \"Medium\", \"Low\")"
    sql: ${TABLE}.security_level ;;
  }
  dimension: shipping_hours {
    type: string
    description: "Operating hours for shipping goods"
    sql: ${TABLE}.shipping_hours ;;
  }
  dimension: solar_energy_capability {
    type: yesno
    description: "Indicates if the warehouse has solar energy capabilities"
    sql: ${TABLE}.solar_energy_capability ;;
  }
  dimension: state {
    type: string
    description: "State or province where the warehouse is located"
    sql: ${TABLE}.state ;;
  }
  dimension: temperature_controlled {
    type: yesno
    description: "Indicates if the warehouse has temperature control capabilities"
    sql: ${TABLE}.temperature_controlled ;;
  }
  dimension: transportation_modes_available {
    type: string
    description: "List of available transportation modes (e.g., \"Truck, Rail, Air\")"
    sql: ${TABLE}.transportation_modes_available ;;
  }
  dimension: utility_cost {
    type: number
    description: "Annual utility cost of the warehouse"
    sql: ${TABLE}.utility_cost ;;
  }
  dimension: warehouse_capacity {
    type: number
    description: "Total storage capacity of the warehouse in cubic meters or square feet"
    sql: ${TABLE}.warehouse_capacity ;;
  }
  dimension: warehouse_code {
    type: string
    description: "Internal code used to identify the warehouse (e.g., \"CDC001\")"
    sql: ${TABLE}.warehouse_code ;;
  }
  dimension: warehouse_location {
    hidden: no
    label: "Warehouse Location"
    description: "The warehouse's location composed of the latitude and longitude to create coordinates on maps."
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }
  dimension: warehouse_name {
    hidden: no
    label: "Warehouse Name"
    description: "Name of the warehouse (e.g., \"Central Distribution Center\")"
    type: string
    sql: ${TABLE}.warehouse_name ;;
  }
  dimension: warehouse_software_integration {
    type: string
    description: "List of software integrations used in the warehouse"
    sql: ${TABLE}.warehouse_software_integration ;;
  }
  dimension: warehouse_type {
    type: string
    description: "Type of warehouse (e.g., \"Distribution\", \"Fulfillment\", \"Cold Storage\")"
    sql: ${TABLE}.warehouse_type ;;
  }
  dimension: warehouse_zone_layout {
    type: string
    description: "Description of the warehouse zone layout"
    sql: ${TABLE}.warehouse_zone_layout ;;
  }
  dimension: waste_management_system {
    type: string
    description: "Type of waste management system used"
    sql: ${TABLE}.waste_management_system ;;
  }
  dimension: water_storage_capacity {
    type: number
    description: "Water storage capacity for emergency use (in liters)"
    sql: ${TABLE}.water_storage_capacity ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      warehouse_id,
      warehouse_name,
      manager_name,
      advanced_inventory_management.count,
      inventory_adjustments.count,
      inventory_levels.count,
      inventory_management.count,
      inventory_movements.count,
      products.count,
      suppliers.count,
      supply_chain_management.count
    ]
  }

}