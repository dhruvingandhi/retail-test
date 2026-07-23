view: suppliers {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Suppliers` ;;
  drill_fields: [supplier_id]

  dimension: supplier_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each supplier"
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: address_line1 {
    type: string
    description: "First line of the supplier's address"
    sql: ${TABLE}.address_line1 ;;
  }
  dimension: address_line2 {
    type: string
    description: "Second line of the supplier's address (if applicable)"
    sql: ${TABLE}.address_line2 ;;
  }
  dimension: alternate_contact_person {
    type: string
    description: "Name of an alternate contact at the supplier company"
    sql: ${TABLE}.alternate_contact_person ;;
  }
  dimension: average_delivery_time {
    type: number
    description: "Average time taken for deliveries (in days)"
    sql: ${TABLE}.average_delivery_time ;;
  }
  dimension: bank_account_number {
    type: string
    description: "Supplier's bank account number for payments"
    sql: ${TABLE}.bank_account_number ;;
  }
  dimension: bank_branch {
    type: string
    description: "Branch of the supplier's bank"
    sql: ${TABLE}.bank_branch ;;
  }
  dimension: bank_name {
    type: string
    description: "Name of the supplier's bank"
    sql: ${TABLE}.bank_name ;;
  }
  dimension: certifications_held {
    type: string
    description: "List of certifications held by the supplier"
    sql: ${TABLE}.certifications_held ;;
  }
  dimension: city {
    type: string
    description: "City where the supplier is located"
    sql: ${TABLE}.city ;;
  }
  dimension: company_website {
    type: string
    description: "Official website of the supplier company"
    sql: ${TABLE}.company_website ;;
  }
  dimension: complaint_resolution_rate {
    type: number
    description: "Percentage of complaints successfully resolved"
    sql: ${TABLE}.complaint_resolution_rate ;;
  }
  dimension: compliance_status {
    type: string
    description: "Current compliance status of the supplier"
    sql: ${TABLE}.compliance_status ;;
  }
  dimension: contact_email {
    type: string
    description: "Email address of the primary contact"
    sql: ${TABLE}.contact_email ;;
  }
  dimension: contact_person {
    type: string
    description: "Primary contact person at the supplier company"
    sql: ${TABLE}.contact_person ;;
  }
  dimension: contact_phone {
    type: string
    description: "Phone number of the primary contact"
    sql: ${TABLE}.contact_phone ;;
  }
  dimension_group: contract_end {
    type: time
    description: "End date of the current contract with the supplier"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_end_date ;;
  }
  dimension_group: contract_renewal {
    type: time
    description: "Date when the contract is up for renewal"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_renewal_date ;;
  }
  dimension_group: contract_start {
    type: time
    description: "Start date of the current contract with the supplier"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_start_date ;;
  }
  dimension: contract_status {
    type: string
    description: "Current status of the contract (e.g., 'Active', 'Pending Renewal', 'Terminated')"
    sql: ${TABLE}.contract_status ;;
  }
  dimension: contract_termination_conditions {
    type: string
    description: "Conditions for terminating the supplier contract"
    sql: ${TABLE}.contract_termination_conditions ;;
  }
  dimension: country {
    type: string
    description: "Country where the supplier is based"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: credit_limit {
    type: number
    description: "Credit limit extended to the supplier"
    sql: ${TABLE}.credit_limit ;;
  }
  dimension: credit_terms {
    type: string
    description: "Terms of credit agreement with the supplier"
    sql: ${TABLE}.credit_terms ;;
  }
  dimension: delivery_methods_available {
    type: string
    description: "List of delivery methods offered by the supplier"
    sql: ${TABLE}.delivery_methods_available ;;
  }
  dimension: delivery_reliability_rate {
    type: number
    description: "Percentage of on-time deliveries"
    sql: ${TABLE}.delivery_reliability_rate ;;
  }
  dimension: discount_offered {
    type: number
    description: "Standard discount percentage offered by the supplier"
    sql: ${TABLE}.discount_offered ;;
  }
  dimension: early_payment_discount {
    type: number
    description: "Discount percentage for early payments"
    sql: ${TABLE}.early_payment_discount ;;
  }
  dimension: ethical_compliance_score {
    type: number
    description: "Score for the supplier's ethical compliance (scale of 0-5)"
    sql: ${TABLE}.ethical_compliance_score ;;
  }
  dimension: freight_terms {
    type: string
    description: "Terms related to freight and shipping"
    sql: ${TABLE}.freight_terms ;;
  }
  dimension: iban {
    type: string
    description: "International Bank Account Number"
    sql: ${TABLE}.iban ;;
  }
  dimension: insurance_coverage {
    type: string
    description: "Details of the supplier's insurance coverage"
    sql: ${TABLE}.insurance_coverage ;;
  }
  dimension_group: insurance_expiry {
    type: time
    description: "Expiration date of the supplier's insurance"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.insurance_expiry_date ;;
  }
  dimension_group: invoice_due {
    type: time
    description: "Due date of the next invoice"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_due_date ;;
  }
  dimension_group: last_audit {
    type: time
    description: "Date of the last supplier audit conducted"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_audit_date ;;
  }
  dimension_group: last_complaint {
    type: time
    description: "Date of the most recent complaint"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_complaint_date ;;
  }
  dimension: late_payment_penalty {
    type: number
    description: "Penalty percentage for late payments"
    sql: ${TABLE}.late_payment_penalty ;;
  }
  dimension_group: next_audit {
    type: time
    description: "Scheduled date for the next supplier audit"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_audit_date ;;
  }
  dimension: number_of_complaints {
    type: number
    description: "Number of complaints received about the supplier"
    sql: ${TABLE}.number_of_complaints ;;
  }
  dimension: number_of_deliveries {
    type: number
    description: "Total number of deliveries made by the supplier"
    sql: ${TABLE}.number_of_deliveries ;;
  }
  dimension: number_of_products_supplied {
    type: number
    description: "Number of different products supplied"
    sql: ${TABLE}.number_of_products_supplied ;;
  }
  dimension_group: onboarding {
    type: time
    description: "Date when the supplier was onboarded"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.onboarding_date ;;
  }
  dimension: outstanding_invoices {
    type: number
    description: "Number of unpaid invoices"
    sql: ${TABLE}.outstanding_invoices ;;
  }
  dimension: payment_history {
    type: string
    description: "Record of past payments made to the supplier"
    sql: ${TABLE}.payment_history ;;
  }
  dimension: payment_terms {
    type: string
    description: "Agreed payment terms with the supplier"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: postal_code {
    type: string
    description: "Postal or ZIP code of the supplier's location"
    sql: ${TABLE}.postal_code ;;
  }
  dimension: preferred_contact_method {
    type: string
    description: "Supplier's preferred method of communication"
    sql: ${TABLE}.preferred_contact_method ;;
  }
  dimension: preferred_payment_method {
    type: string
    description: "Supplier's preferred method of payment"
    sql: ${TABLE}.preferred_payment_method ;;
  }
  dimension: product_recall_history {
    type: string
    description: "History of any product recalls"
    sql: ${TABLE}.product_recall_history ;;
  }
  dimension: product_return_rate {
    type: number
    description: "Percentage of products returned to the supplier"
    sql: ${TABLE}.product_return_rate ;;
  }
  dimension: quality_of_products {
    type: number
    description: "Rating of product quality (scale of 0-5)"
    sql: ${TABLE}.quality_of_products ;;
  }
  dimension: relationship_manager {
    type: string
    description: "Name of the relationship manager for this supplier"
    sql: ${TABLE}.relationship_manager ;;
  }
  dimension: shipping_insurance {
    type: string
    description: "Details of shipping insurance provided by the supplier"
    sql: ${TABLE}.shipping_insurance ;;
  }
  dimension: state {
    type: string
    description: "State or province where the supplier is located"
    sql: ${TABLE}.state ;;
  }
  dimension: supplier_category {
    type: string
    description: "Category or classification of the supplier"
    sql: ${TABLE}.supplier_category ;;
  }
  dimension: supplier_name {
    type: string
    description: "Official name of the supplier company"
    sql: ${TABLE}.supplier_name ;;
  }
  dimension: supplier_notes {
    type: string
    description: "Additional notes or comments about the supplier"
    sql: ${TABLE}.supplier_notes ;;
  }
  dimension: supplier_performance_score {
    type: number
    description: "Overall performance score of the supplier (scale of 0-5)"
    sql: ${TABLE}.supplier_performance_score ;;
  }
  dimension: supplier_rating {
    type: number
    description: "Overall rating of the supplier (scale of 0-5)"
    sql: ${TABLE}.supplier_rating ;;
  }
  dimension: supplier_risk_assessment {
    type: string
    description: "Results of the latest supplier risk assessment"
    sql: ${TABLE}.supplier_risk_assessment ;;
  }
  dimension: supplier_type {
    type: string
    description: "Type of supplier (e.g., 'Manufacturer', 'Distributor', 'Wholesaler')"
    sql: ${TABLE}.supplier_type ;;
  }
  dimension: supply_chain_manager {
    type: string
    description: "Name of the supply chain manager responsible for this supplier"
    sql: ${TABLE}.supply_chain_manager ;;
  }
  dimension: sustainability_score {
    type: number
    description: "Score for the supplier's sustainability practices (scale of 0-5)"
    sql: ${TABLE}.sustainability_score ;;
  }
  dimension: swift_code {
    type: string
    description: "SWIFT code for international bank transfers"
    sql: ${TABLE}.swift_code ;;
  }
  dimension: tax_id {
    type: string
    description: "Tax identification number of the supplier"
    sql: ${TABLE}.tax_id ;;
  }
  dimension: total_value_of_products_supplied {
    type: number
    description: "Total monetary value of products supplied"
    sql: ${TABLE}.total_value_of_products_supplied ;;
  }
  dimension: warehouse_id {
    type: number
    description: "Foreign key referencing the associated warehouse"
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }
  dimension: warehouse_location {
    type: string
    description: "Location of the supplier's warehouse"
    sql: ${TABLE}.warehouse_location ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      supplier_id,
      bank_name,
      supplier_name,
      warehouses.warehouse_name,
      warehouses.manager_name,
      warehouses.warehouse_id,
      advanced_inventory_management.count,
      inventory_management.count,
      inventory_movements.count,
      products.count,
      product_details.count,
      purchase_orders.count,
      supplier_contacts.count,
      supply_chain_management.count
    ]
  }

}