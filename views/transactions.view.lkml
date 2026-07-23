view: transactions {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Transactions` ;;
  drill_fields: [refund_transaction_id]

  dimension: refund_transaction_id {
    primary_key: yes
    type: number
    description: "ID of the refund transaction (if applicable)"
    sql: ${TABLE}.refund_transaction_id ;;
  }
  dimension: adjustment_amount {
    type: number
    description: "Amount of adjustment"
    sql: ${TABLE}.adjustment_amount ;;
  }
  dimension_group: approval {
    type: time
    description: "Date when the transaction was approved"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.approval_date ;;
  }
  dimension: audit_trail {
    type: string
    description: "Audit trail of changes made to the transaction record"
    sql: ${TABLE}.audit_trail ;;
  }
  dimension_group: cancellation {
    type: time
    description: "Date when a recurring transaction was cancelled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancellation_date ;;
  }
  dimension: cancellation_reason {
    type: string
    description: "Reason for cancellation of recurring transaction"
    sql: ${TABLE}.cancellation_reason ;;
  }
  dimension: chargeback_amount {
    type: number
    description: "Amount of the chargeback"
    sql: ${TABLE}.chargeback_amount ;;
  }
  dimension: chargeback_processing_fee {
    type: number
    description: "Fee for processing the chargeback"
    sql: ${TABLE}.chargeback_processing_fee ;;
  }
  dimension: chargeback_reason {
    type: string
    description: "Reason for chargeback (if applicable)"
    sql: ${TABLE}.chargeback_reason ;;
  }
  dimension: chargeback_requested {
    type: yesno
    description: "Indicates if a chargeback has been requested"
    sql: ${TABLE}.chargeback_requested ;;
  }
  dimension_group: chargeback_resolution {
    type: time
    description: "Date when the chargeback was resolved"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.chargeback_resolution_date ;;
  }
  dimension: chargeback_status {
    type: string
    description: "Current status of the chargeback"
    sql: ${TABLE}.chargeback_status ;;
  }
  dimension: complaint_reported {
    type: yesno
    description: "Indicates if a complaint was reported for this transaction"
    sql: ${TABLE}.complaint_reported ;;
  }
  dimension_group: complaint_resolution {
    type: time
    description: "Date when the complaint was resolved"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.complaint_resolution_date ;;
  }
  dimension: complaint_resolution_status {
    type: string
    description: "Status of complaint resolution"
    sql: ${TABLE}.complaint_resolution_status ;;
  }
  dimension_group: compliance_check {
    type: time
    description: "Date of compliance check"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.compliance_check_date ;;
  }
  dimension: compliance_check_status {
    type: string
    description: "Status of compliance check"
    sql: ${TABLE}.compliance_check_status ;;
  }
  dimension: compliance_failure_reason {
    type: string
    description: "Reason for compliance failure (if applicable)"
    sql: ${TABLE}.compliance_failure_reason ;;
  }
  dimension: coupon_amount {
    type: number
    description: "Discount amount from the coupon"
    sql: ${TABLE}.coupon_amount ;;
  }
  dimension: coupon_applied {
    type: yesno
    description: "Indicates if a coupon was applied to the transaction"
    sql: ${TABLE}.coupon_applied ;;
  }
  dimension: coupon_code {
    type: string
    description: "Code of the coupon applied"
    sql: ${TABLE}.coupon_code ;;
  }
  dimension: currency {
    type: string
    description: "Currency used for the transaction"
    sql: ${TABLE}.currency ;;
  }
  dimension: customer_browser {
    type: string
    description: "Browser used by the customer"
    sql: ${TABLE}.customer_browser ;;
  }
  dimension: customer_device {
    type: string
    description: "Device used by the customer (e.g., 'Mobile', 'Desktop')"
    sql: ${TABLE}.customer_device ;;
  }
  dimension: customer_feedback {
    type: string
    description: "Feedback provided by the customer regarding the transaction"
    sql: ${TABLE}.customer_feedback ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer involved in the transaction"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_ip {
    type: string
    description: "IP address of the customer at the time of transaction"
    sql: ${TABLE}.customer_ip ;;
  }
  dimension: customer_location {
    type: string
    description: "Geographic location of the customer at the time of transaction"
    sql: ${TABLE}.customer_location ;;
  }
  dimension: customer_review_score {
    type: number
    description: "Customer's review score for the transaction experience"
    sql: ${TABLE}.customer_review_score ;;
  }
  dimension: customs_handling_fee {
    type: number
    description: "Fee for customs handling (for international transactions)"
    sql: ${TABLE}.customs_handling_fee ;;
  }
  dimension: denial_reason {
    type: string
    description: "Reason for denial (if applicable)"
    sql: ${TABLE}.denial_reason ;;
  }
  dimension_group: dispute {
    type: time
    description: "Date when a dispute was raised"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dispute_date ;;
  }
  dimension: dispute_reason {
    type: string
    description: "Reason for dispute (if applicable)"
    sql: ${TABLE}.dispute_reason ;;
  }
  dimension_group: dispute_resolution {
    type: time
    description: "Date when the dispute was resolved"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dispute_resolution_date ;;
  }
  dimension: dispute_resolution_status {
    type: string
    description: "Current status of the dispute resolution"
    sql: ${TABLE}.dispute_resolution_status ;;
  }
  dimension: exchange_amount {
    type: number
    description: "Amount after currency exchange"
    sql: ${TABLE}.exchange_amount ;;
  }
  dimension: exchange_currency {
    type: string
    description: "Currency after exchange"
    sql: ${TABLE}.exchange_currency ;;
  }
  dimension: exchange_rate {
    type: number
    description: "Exchange rate used (for international transactions)"
    sql: ${TABLE}.exchange_rate ;;
  }
  dimension: fraud_check_status {
    type: string
    description: "Status of fraud check (e.g., 'Cleared', 'Suspicious', 'Confirmed Fraud')"
    sql: ${TABLE}.fraud_check_status ;;
  }
  dimension_group: fraud_review {
    type: time
    description: "Date when fraud check was conducted"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fraud_review_date ;;
  }
  dimension: gateway_approval_status {
    type: string
    description: "Approval status from the payment gateway"
    sql: ${TABLE}.gateway_approval_status ;;
  }
  dimension: gateway_error_code {
    type: string
    description: "Error code from the payment gateway (if applicable)"
    sql: ${TABLE}.gateway_error_code ;;
  }
  dimension: gateway_fee {
    type: number
    description: "Fee charged by the payment gateway"
    sql: ${TABLE}.gateway_fee ;;
  }
  dimension: gateway_processing_time {
    type: string
    description: "Time taken by the gateway to process the transaction"
    sql: ${TABLE}.gateway_processing_time ;;
  }
  dimension: gateway_response_code {
    type: string
    description: "Response code from the payment gateway"
    sql: ${TABLE}.gateway_response_code ;;
  }
  dimension: gateway_transaction_id {
    type: string
    description: "Transaction ID provided by the payment gateway"
    sql: ${TABLE}.gateway_transaction_id ;;
  }
  dimension: internal_notes {
    type: string
    description: "Internal notes about the transaction"
    sql: ${TABLE}.internal_notes ;;
  }
  dimension_group: invoice {
    type: time
    description: "Date when the invoice was issued"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }
  dimension_group: invoice_due {
    type: time
    description: "Due date for the invoice payment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_due_date ;;
  }
  dimension: invoice_id {
    type: number
    description: "ID of the related invoice"
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }
  dimension: is_adjustment {
    type: yesno
    description: "Indicates if this is an adjustment transaction"
    sql: ${TABLE}.is_adjustment ;;
  }
  dimension: is_fraudulent {
    type: yesno
    description: "Indicates if the transaction has been flagged as fraudulent"
    sql: ${TABLE}.is_fraudulent ;;
  }
  dimension: is_international {
    type: yesno
    description: "Indicates if this is an international transaction"
    sql: ${TABLE}.is_international ;;
  }
  dimension: is_recurring {
    type: yesno
    description: "Indicates if this is a recurring transaction"
    sql: ${TABLE}.is_recurring ;;
  }
  dimension: is_refundable {
    type: yesno
    description: "Indicates if the transaction is eligible for refund"
    sql: ${TABLE}.is_refundable ;;
  }
  dimension: is_successful {
    type: yesno
    description: "Indicates if the transaction was successfully processed"
    sql: ${TABLE}.is_successful ;;
  }
  dimension_group: last_payment {
    type: time
    description: "Date of the last payment for recurring transactions"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_payment_date ;;
  }
  dimension: loyalty_points_earned {
    type: number
    description: "Number of loyalty points earned from this transaction"
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_redeemed {
    type: number
    description: "Number of loyalty points redeemed in this transaction"
    sql: ${TABLE}.loyalty_points_redeemed ;;
  }
  dimension_group: next_payment {
    type: time
    description: "Date of the next scheduled payment for recurring transactions"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_payment_date ;;
  }
  dimension: order_id {
    type: number
    description: "ID of the related order"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: original_transaction_id {
    type: number
    description: "ID of the original transaction (for refunds or chargebacks)"
    sql: ${TABLE}.original_transaction_id ;;
  }
  dimension: payment_gateway {
    type: string
    description: "Payment gateway used for the transaction"
    sql: ${TABLE}.payment_gateway ;;
  }
  dimension: payment_method {
    type: string
    description: "Method of payment used (e.g., 'Credit Card', 'PayPal')"
    sql: ${TABLE}.payment_method ;;
  }
  dimension: payment_processing_time {
    type: string
    description: "Time taken to process the payment"
    sql: ${TABLE}.payment_processing_time ;;
  }
  dimension: payment_provider {
    type: string
    description: "Name of the payment provider"
    sql: ${TABLE}.payment_provider ;;
  }
  dimension: payment_provider_fees {
    type: number
    description: "Fees charged by the payment provider"
    sql: ${TABLE}.payment_provider_fees ;;
  }
  dimension: payment_status {
    type: string
    description: "Current status of the payment (e.g., 'Completed', 'Pending', 'Failed')"
    sql: ${TABLE}.payment_status ;;
  }
  dimension: payment_terms {
    type: string
    description: "Terms of payment for the transaction"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: payment_terms_agreed {
    type: yesno
    description: "Indicates if the customer agreed to the payment terms"
    sql: ${TABLE}.payment_terms_agreed ;;
  }
  dimension: recurring_interval {
    type: string
    description: "Interval for recurring transactions (e.g., 'Monthly', 'Annually')"
    sql: ${TABLE}.recurring_interval ;;
  }
  dimension: refund_amount {
    type: number
    description: "Amount refunded"
    sql: ${TABLE}.refund_amount ;;
  }
  dimension_group: refund_processed {
    type: time
    description: "Date when the refund was processed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.refund_processed_date ;;
  }
  dimension: refund_reference {
    type: string
    description: "Reference number for the refund"
    sql: ${TABLE}.refund_reference ;;
  }
  dimension: refund_requested {
    type: yesno
    description: "Indicates if a refund has been requested"
    sql: ${TABLE}.refund_requested ;;
  }
  dimension: sale_id {
    type: number
    description: "Foreign key referencing the associated sale"
    # hidden: yes
    sql: ${TABLE}.sale_id ;;
  }
  dimension: sales_commission {
    type: number
    description: "Commission amount for the sales representative"
    sql: ${TABLE}.sales_commission ;;
  }
  dimension: sales_rep_id {
    type: number
    description: "ID of the sales representative associated with the transaction"
    sql: ${TABLE}.sales_rep_id ;;
  }
  dimension: sales_territory {
    type: string
    description: "Sales territory where the transaction occurred"
    sql: ${TABLE}.sales_territory ;;
  }
  dimension: settlement_amount {
    type: number
    description: "Amount settled after fees and adjustments"
    sql: ${TABLE}.settlement_amount ;;
  }
  dimension: settlement_approved_by {
    type: string
    description: "Person who approved the settlement"
    sql: ${TABLE}.settlement_approved_by ;;
  }
  dimension: settlement_status {
    type: string
    description: "Current status of settlement"
    sql: ${TABLE}.settlement_status ;;
  }
  dimension: tax_amount {
    type: number
    description: "Amount of tax applied to the transaction"
    sql: ${TABLE}.tax_amount ;;
  }
  dimension: tax_rate {
    type: number
    description: "Tax rate applied"
    sql: ${TABLE}.tax_rate ;;
  }
  dimension: transaction_amount {
    type: number
    description: "Total amount of the transaction"
    sql: ${TABLE}.transaction_amount ;;
  }
  dimension: transaction_approval_status {
    type: string
    description: "Approval status of the transaction"
    sql: ${TABLE}.transaction_approval_status ;;
  }
  dimension: transaction_classification {
    type: string
    description: "Classification of the transaction type"
    sql: ${TABLE}.transaction_classification ;;
  }
  dimension_group: transaction_date {
    type: time
    description: "Date of the transaction"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transaction_fee {
    type: number
    description: "Fee associated with processing the transaction"
    sql: ${TABLE}.transaction_fee ;;
  }
  dimension: transaction_id {
    type: number
    description: "Unique identifier for each transaction"
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: transaction_log {
    type: string
    description: "Detailed log of the transaction process"
    sql: ${TABLE}.transaction_log ;;
  }
  dimension: transaction_notes {
    type: string
    description: "Additional notes about the transaction"
    sql: ${TABLE}.transaction_notes ;;
  }
  dimension: transaction_processor {
    type: string
    description: "Name of the entity processing the transaction"
    sql: ${TABLE}.transaction_processor ;;
  }
  dimension: transaction_reference {
    type: string
    description: "Unique reference number for the transaction"
    sql: ${TABLE}.transaction_reference ;;
  }
  dimension_group: transaction_settlement {
    type: time
    description: "Date when the transaction was settled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_settlement_date ;;
  }
  dimension: transaction_source {
    type: string
    description: "Source of the transaction (e.g., 'Website', 'Mobile App')"
    sql: ${TABLE}.transaction_source ;;
  }
  dimension: transaction_source_channel {
    type: string
    description: "Specific channel source of the transaction"
    sql: ${TABLE}.transaction_source_channel ;;
  }
  dimension: transaction_time {
    type: string
    description: "Time of the transaction"
    sql: ${TABLE}.transaction_time ;;
  }
  dimension: transaction_type {
    type: string
    description: "Type of transaction (e.g., 'Sale', 'Refund', 'Chargeback')"
    sql: ${TABLE}.transaction_type ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      refund_transaction_id,
      sales.sale_id,
      transactions.refund_transaction_id,
      orders.order_id,
      orders.delivery_contact_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      invoices.invoice_id,
      payment_details.count,
      sales_transaction.count,
      transactions.count
    ]
  }

}