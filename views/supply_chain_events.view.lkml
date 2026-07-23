view: supply_chain_events {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.SupplyChainEvents` ;;

  dimension: actual_financial_impact {
    type: number
    description: "Actual financial impact after resolution"
    sql: ${TABLE}.actual_financial_impact ;;
  }
  dimension: affected_customers_count {
    type: number
    description: "Number of customers affected by the event"
    sql: ${TABLE}.affected_customers_count ;;
  }
  dimension: affected_orders_count {
    type: number
    description: "Number of orders affected by the event"
    sql: ${TABLE}.affected_orders_count ;;
  }
  dimension: affected_product_category_id {
    type: number
    description: "ID of the affected product category (if applicable)"
    sql: ${TABLE}.affected_product_category_id ;;
  }
  dimension: affected_supplier_id {
    type: number
    description: "ID of the affected supplier (if applicable)"
    sql: ${TABLE}.affected_supplier_id ;;
  }
  dimension: affected_transportation_route_id {
    type: number
    description: "ID of the affected transportation route (if applicable)"
    sql: ${TABLE}.affected_transportation_route_id ;;
  }
  dimension: affected_warehouse_id {
    type: number
    description: "ID of the affected warehouse (if applicable)"
    sql: ${TABLE}.affected_warehouse_id ;;
  }
  dimension: brand_reputation_impact {
    type: string
    description: "Impact on brand reputation"
    sql: ${TABLE}.brand_reputation_impact ;;
  }
  dimension: communication_log {
    type: string
    description: "Log of communications related to the event"
    sql: ${TABLE}.communication_log ;;
  }
  dimension: contingency_plan_activated {
    type: yesno
    description: "Whether a contingency plan was activated"
    sql: ${TABLE}.contingency_plan_activated ;;
  }
  dimension: contingency_plan_effectiveness {
    type: number
    description: "Effectiveness of the contingency plan (scale of 1-5)"
    sql: ${TABLE}.contingency_plan_effectiveness ;;
  }
  dimension: corrective_actions {
    type: string
    description: "Actions taken to correct the issue"
    sql: ${TABLE}.corrective_actions ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of record creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of user who created the record"
    sql: ${TABLE}.created_by ;;
  }
  dimension: customer_satisfaction_impact {
    type: number
    description: "Impact on customer satisfaction (scale of 1-5)"
    sql: ${TABLE}.customer_satisfaction_impact ;;
  }
  dimension: detection_source {
    type: string
    description: "Source that detected the event"
    sql: ${TABLE}.detection_source ;;
  }
  dimension: document_references {
    type: string
    description: "References to relevant documents"
    sql: ${TABLE}.document_references ;;
  }
  dimension_group: end {
    type: time
    description: "End date and time of the event (if applicable)"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date ;;
  }
  dimension: estimated_financial_impact {
    type: number
    description: "Estimated financial impact of the event"
    sql: ${TABLE}.estimated_financial_impact ;;
  }
  dimension: event_description {
    type: string
    description: "Detailed description of the event"
    sql: ${TABLE}.event_description ;;
  }
  dimension: event_id {
    type: number
    description: "Unique identifier for each supply chain event"
    sql: ${TABLE}.event_id ;;
  }
  dimension: event_type {
    type: string
    description: "Type of event (e.g., 'Supplier Delay', 'Natural Disaster', 'Quality Issue')"
    sql: ${TABLE}.event_type ;;
  }
  dimension: external_parties_involved {
    type: string
    description: "External parties involved in event management"
    sql: ${TABLE}.external_parties_involved ;;
  }
  dimension: impact_scope {
    type: string
    description: "Scope of impact (e.g., 'Local', 'Regional', 'Global')"
    sql: ${TABLE}.impact_scope ;;
  }
  dimension: insurance_claim_id {
    type: string
    description: "ID of any related insurance claim"
    sql: ${TABLE}.insurance_claim_id ;;
  }
  dimension: inventory_impact_units {
    type: number
    description: "Impact on inventory in units"
    sql: ${TABLE}.inventory_impact_units ;;
  }
  dimension: inventory_impact_value {
    type: number
    description: "Financial impact on inventory"
    sql: ${TABLE}.inventory_impact_value ;;
  }
  dimension: lead_responder_id {
    type: number
    description: "ID of the primary person responsible for the event"
    sql: ${TABLE}.lead_responder_id ;;
  }
  dimension: legal_implications {
    type: string
    description: "Description of any legal implications"
    sql: ${TABLE}.legal_implications ;;
  }
  dimension: lessons_learned {
    type: string
    description: "Lessons learned from the event"
    sql: ${TABLE}.lessons_learned ;;
  }
  dimension: mitigation_strategy {
    type: string
    description: "Strategy employed to mitigate the event's impact"
    sql: ${TABLE}.mitigation_strategy ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes about the event"
    sql: ${TABLE}.notes ;;
  }
  dimension_group: notification_timestamp {
    type: time
    description: "Timestamp when the event was first notified"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.notification_timestamp ;;
  }
  dimension: preventive_actions {
    type: string
    description: "Actions taken to prevent future occurrences"
    sql: ${TABLE}.preventive_actions ;;
  }
  dimension: probability_of_recurrence {
    type: number
    description: "Estimated probability of event recurrence"
    sql: ${TABLE}.probability_of_recurrence ;;
  }
  dimension: production_delay_hours {
    type: number
    description: "Production delay caused by the event in hours"
    sql: ${TABLE}.production_delay_hours ;;
  }
  dimension: quality_impact_description {
    type: string
    description: "Description of impact on product quality"
    sql: ${TABLE}.quality_impact_description ;;
  }
  dimension: recovery_cost {
    type: number
    description: "Cost incurred in recovering from the event"
    sql: ${TABLE}.recovery_cost ;;
  }
  dimension: regulatory_compliance_impact {
    type: string
    description: "Impact on regulatory compliance"
    sql: ${TABLE}.regulatory_compliance_impact ;;
  }
  dimension: related_events {
    type: string
    description: "References to related supply chain events"
    sql: ${TABLE}.related_events ;;
  }
  dimension: resolution_status {
    type: string
    description: "Current status of event resolution (e.g., 'Open', 'In Progress', 'Resolved')"
    sql: ${TABLE}.resolution_status ;;
  }
  dimension: resolution_time_minutes {
    type: number
    description: "Time taken to resolve the event in minutes"
    sql: ${TABLE}.resolution_time_minutes ;;
  }
  dimension: response_time_minutes {
    type: number
    description: "Time taken to respond to the event in minutes"
    sql: ${TABLE}.response_time_minutes ;;
  }
  dimension: responsible_team {
    type: string
    description: "Team responsible for managing the event"
    sql: ${TABLE}.responsible_team ;;
  }
  dimension: risk_level {
    type: string
    description: "Assessed risk level of the event"
    sql: ${TABLE}.risk_level ;;
  }
  dimension: root_cause {
    type: string
    description: "Identified root cause of the event"
    sql: ${TABLE}.root_cause ;;
  }
  dimension: safety_impact_description {
    type: string
    description: "Description of any safety impacts"
    sql: ${TABLE}.safety_impact_description ;;
  }
  dimension: severity_level {
    type: string
    description: "Severity of the event (e.g., 'Low', 'Medium', 'High', 'Critical')"
    sql: ${TABLE}.severity_level ;;
  }
  dimension_group: start {
    type: time
    description: "Start date and time of the event"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: supplier_performance_impact {
    type: number
    description: "Impact on supplier performance (scale of 1-5)"
    sql: ${TABLE}.supplier_performance_impact ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    description: "ID of user who last updated the record"
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
  }
}