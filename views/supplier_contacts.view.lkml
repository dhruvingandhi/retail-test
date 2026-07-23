view: supplier_contacts {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.SupplierContacts` ;;

  dimension: alternate_contact {
    type: string
    description: "Alternate contact person"
    sql: ${TABLE}.alternate_contact ;;
  }
  dimension: backup_contact {
    type: yesno
    description: "Indicates if this is a backup contact"
    sql: ${TABLE}.backup_contact ;;
  }
  dimension: communication_history {
    type: string
    description: "Record of past communications"
    sql: ${TABLE}.communication_history ;;
  }
  dimension: communication_language {
    type: string
    description: "Preferred language for communication"
    sql: ${TABLE}.communication_language ;;
  }
  dimension: communication_preference {
    type: string
    description: "Any specific communication preferences"
    sql: ${TABLE}.communication_preference ;;
  }
  dimension: company_extension {
    type: string
    description: "Company phone extension"
    sql: ${TABLE}.company_extension ;;
  }
  dimension: contact_address_line1 {
    type: string
    description: "First line of the contact's address"
    sql: ${TABLE}.contact_address_line1 ;;
  }
  dimension: contact_address_line2 {
    type: string
    description: "Second line of the contact's address (if applicable)"
    sql: ${TABLE}.contact_address_line2 ;;
  }
  dimension: contact_availability {
    type: string
    description: "General availability of the contact"
    sql: ${TABLE}.contact_availability ;;
  }
  dimension: contact_city {
    type: string
    description: "City of the contact's address"
    sql: ${TABLE}.contact_city ;;
  }
  dimension: contact_country {
    type: string
    description: "Country of the contact's address"
    sql: ${TABLE}.contact_country ;;
  }
  dimension: contact_email_primary {
    type: string
    description: "Primary email address of the contact"
    sql: ${TABLE}.contact_email_primary ;;
  }
  dimension: contact_email_secondary {
    type: string
    description: "Secondary email address of the contact (if available)"
    sql: ${TABLE}.contact_email_secondary ;;
  }
  dimension: contact_name {
    type: string
    description: "Full name of the contact person"
    sql: ${TABLE}.contact_name ;;
  }
  dimension: contact_notes {
    type: string
    description: "Additional notes about the contact"
    sql: ${TABLE}.contact_notes ;;
  }
  dimension: contact_phone_mobile {
    type: string
    description: "Mobile phone number of the contact"
    sql: ${TABLE}.contact_phone_mobile ;;
  }
  dimension: contact_phone_work {
    type: string
    description: "Work phone number of the contact"
    sql: ${TABLE}.contact_phone_work ;;
  }
  dimension: contact_postal_code {
    type: string
    description: "Postal or ZIP code of the contact's address"
    sql: ${TABLE}.contact_postal_code ;;
  }
  dimension: contact_preferences {
    type: string
    description: "Specific preferences of the contact"
    sql: ${TABLE}.contact_preferences ;;
  }
  dimension: contact_relationship_status {
    type: string
    description: "Status of the relationship (e.g., 'Active', 'Inactive')"
    sql: ${TABLE}.contact_relationship_status ;;
  }
  dimension: contact_role {
    type: string
    description: "Role or position of the contact within the supplier company"
    sql: ${TABLE}.contact_role ;;
  }
  dimension: contact_state {
    type: string
    description: "State or province of the contact's address"
    sql: ${TABLE}.contact_state ;;
  }
  dimension: contacted_by {
    type: string
    description: "Name of the person who last contacted this individual"
    sql: ${TABLE}.contacted_by ;;
  }
  dimension_group: contacted {
    type: time
    description: "Date of the last contact"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contacted_date ;;
  }
  dimension: crm_id {
    type: string
    description: "Identifier in the CRM system (if applicable)"
    sql: ${TABLE}.crm_id ;;
  }
  dimension: direct_dial_number {
    type: string
    description: "Direct dial phone number"
    sql: ${TABLE}.direct_dial_number ;;
  }
  dimension: email_campaigns_received {
    type: string
    description: "List of email campaigns sent to this contact"
    sql: ${TABLE}.email_campaigns_received ;;
  }
  dimension: emergency_contact {
    type: string
    description: "Emergency contact information"
    sql: ${TABLE}.emergency_contact ;;
  }
  dimension: engagement_score {
    type: number
    description: "Score indicating the level of engagement (scale of 0-5)"
    sql: ${TABLE}.engagement_score ;;
  }
  dimension: fax_number {
    type: string
    description: "Fax number (if applicable)"
    sql: ${TABLE}.fax_number ;;
  }
  dimension: feedback_received {
    type: string
    description: "Feedback received from this contact"
    sql: ${TABLE}.feedback_received ;;
  }
  dimension_group: follow_up {
    type: time
    description: "Date for the next follow-up"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.follow_up_date ;;
  }
  dimension: follow_up_notes {
    type: string
    description: "Notes for follow-up actions"
    sql: ${TABLE}.follow_up_notes ;;
  }
  dimension: follow_up_required {
    type: yesno
    description: "Indicates if follow-up is required"
    sql: ${TABLE}.follow_up_required ;;
  }
  dimension: key_contact {
    type: yesno
    description: "Indicates if this is a key contact for the supplier"
    sql: ${TABLE}.key_contact ;;
  }
  dimension_group: last_contact {
    type: time
    description: "Date of the last communication with the contact"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_contact_date ;;
  }
  dimension: linkedin_profile {
    type: string
    description: "LinkedIn profile URL of the contact"
    sql: ${TABLE}.linkedin_profile ;;
  }
  dimension_group: meeting {
    type: time
    description: "Date of the scheduled meeting (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.meeting_date ;;
  }
  dimension: meeting_history {
    type: string
    description: "History of meetings with this contact"
    sql: ${TABLE}.meeting_history ;;
  }
  dimension: meeting_notes {
    type: string
    description: "Notes from previous meetings"
    sql: ${TABLE}.meeting_notes ;;
  }
  dimension: meeting_scheduled {
    type: yesno
    description: "Indicates if a meeting is currently scheduled"
    sql: ${TABLE}.meeting_scheduled ;;
  }
  dimension: mobile_whatsapp_number {
    type: string
    description: "WhatsApp number (if different from mobile)"
    sql: ${TABLE}.mobile_whatsapp_number ;;
  }
  dimension_group: next_contact {
    type: time
    description: "Scheduled date for the next communication"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_contact_date ;;
  }
  dimension: preferred_communication_channel {
    type: string
    description: "Preferred channel for communication"
    sql: ${TABLE}.preferred_communication_channel ;;
  }
  dimension: preferred_contact_method {
    type: string
    description: "Preferred method of contact (e.g., 'Email', 'Phone')"
    sql: ${TABLE}.preferred_contact_method ;;
  }
  dimension: preferred_contact_time {
    type: string
    description: "Preferred time for contacting (e.g., 'Morning', 'Afternoon')"
    sql: ${TABLE}.preferred_contact_time ;;
  }
  dimension: response_rate {
    type: number
    description: "Rate of response to communications (percentage)"
    sql: ${TABLE}.response_rate ;;
  }
  dimension: supplier_contact_id {
    type: number
    description: "Unique identifier for each supplier contact"
    sql: ${TABLE}.supplier_contact_id ;;
  }
  dimension: supplier_id {
    type: number
    description: "Foreign key referencing the associated supplier"
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: twitter_handle {
    type: string
    description: "Twitter handle of the contact"
    sql: ${TABLE}.twitter_handle ;;
  }
  measure: count {
    type: count
    drill_fields: [contact_name, suppliers.supplier_id, suppliers.bank_name, suppliers.supplier_name]
  }
}