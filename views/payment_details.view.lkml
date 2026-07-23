view: payment_details {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Payment_Details` ;;

  fields_hidden_by_default: yes

  dimension: payment_id {
    primary_key: yes
    label: "Payment ID"
    description: "Unique identifier for each payment"
    type: number
    sql: ${TABLE}.payment_id ;;
  }
  dimension: audit_trail {
    type: string
    description: "Audit trail of changes to the payment record"
    sql: ${TABLE}.audit_trail ;;
  }
  dimension: balance_due {
    type: number
    description: "Remaining balance due"
    sql: ${TABLE}.balance_due ;;
  }
  dimension: bank_account_number {
    type: string
    description: "Bank account number (masked for security)"
    sql: ${TABLE}.bank_account_number ;;
  }
  dimension: bank_name {
    type: string
    description: "Name of the bank for bank transfers"
    sql: ${TABLE}.bank_name ;;
  }
  dimension: bank_sort_code {
    type: string
    description: "Bank sort code or routing number"
    sql: ${TABLE}.bank_sort_code ;;
  }
  dimension: chargeback_amount {
    hidden: no
    label: "Chargeback Amount"
    description: "The monetary amount in United States Dollars that was disputed and pulled back from us by a customer's bank. This represents lost revenue and a potential issue."
    type: number
    sql: ${TABLE}.chargeback_amount ;;
  }
  dimension_group: chargeback {
    hidden: no
    label: "Chargeback Date"
    description: "The date when a payment dispute (chargeback) was officially initiated against us."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.chargeback_date ;;
  }
  dimension: chargeback_processing_fee {
    type: number
    description: "Fee for processing the chargeback"
    sql: ${TABLE}.chargeback_processing_fee ;;
  }
  dimension: chargeback_reason {
    hidden: no
    label: "Chargeback Reason"
    description: "The customer's stated reason for initiating a chargeback (e.g., 'Fraudulent Transaction', 'Service Not Received')."
    type: string
    sql: ${TABLE}.chargeback_reason ;;
  }
  dimension: chargeback_requested {
    type: yesno
    description: "Indicates if a chargeback has been requested"
    sql: ${TABLE}.chargeback_requested ;;
  }
  dimension: chargeback_resolution_status {
    type: string
    description: "Status of chargeback resolution"
    sql: ${TABLE}.chargeback_resolution_status ;;
  }
  dimension: complaint_reported {
    type: yesno
    description: "Indicates if a complaint was reported"
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
  dimension_group: credit_card_expiry {
    type: time
    description: "Expiration date of the credit card"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.credit_card_expiry ;;
  }
  dimension: credit_card_issuer {
    type: string
    description: "Issuer of the credit card used"
    sql: ${TABLE}.credit_card_issuer ;;
  }
  dimension: credit_card_last4 {
    type: string
    description: "Last 4 digits of the credit card"
    sql: ${TABLE}.credit_card_last4 ;;
  }
  dimension: currency {
    type: string
    description: "Currency of the payment"
    sql: ${TABLE}.currency ;;
  }
  dimension: customer_feedback {
    type: string
    description: "Feedback provided by the customer regarding the payment"
    sql: ${TABLE}.customer_feedback ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer making the payment"
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Customer's satisfaction score for the payment process"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension: customs_handling_fee {
    type: number
    description: "Fee for customs handling (for international payments)"
    sql: ${TABLE}.customs_handling_fee ;;
  }
  dimension: debit_card_issuer {
    type: string
    description: "Issuer of the debit card used"
    sql: ${TABLE}.debit_card_issuer ;;
  }
  dimension: discount_amount {
    type: number
    description: "Amount of the discount"
    sql: ${TABLE}.discount_amount ;;
  }
  dimension: discount_applied {
    type: yesno
    description: "Indicates if a discount was applied"
    sql: ${TABLE}.discount_applied ;;
  }
  dimension: discount_code {
    type: string
    description: "Code of the discount applied"
    sql: ${TABLE}.discount_code ;;
  }
  dimension_group: dispute {
    type: time
    description: "Date when a dispute was raised"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dispute_date ;;
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
    description: "Status of dispute resolution"
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
    description: "Exchange rate used (for international payments)"
    sql: ${TABLE}.exchange_rate ;;
  }
  dimension: gateway_processing_fee {
    type: number
    description: "Fee charged by the payment gateway"
    sql: ${TABLE}.gateway_processing_fee ;;
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
  dimension: installment_amount {
    type: number
    description: "Amount per installment"
    sql: ${TABLE}.installment_amount ;;
  }
  dimension: installment_number {
    type: number
    description: "Current installment number"
    sql: ${TABLE}.installment_number ;;
  }
  dimension: internal_notes {
    type: string
    description: "Internal notes about the payment"
    sql: ${TABLE}.internal_notes ;;
  }
  dimension_group: invoice {
    type: time
    description: "Date of the invoice"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }
  dimension_group: invoice_due {
    type: time
    description: "Due date of the invoice"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_due_date ;;
  }
  dimension: invoice_id {
    type: number
    description: "ID of the related invoice"
    sql: ${TABLE}.invoice_id ;;
  }
  dimension: is_international {
    type: yesno
    description: "Indicates if this is an international payment"
    sql: ${TABLE}.is_international ;;
  }
  dimension: is_partial_payment {
    type: yesno
    description: "Indicates if this is a partial payment"
    sql: ${TABLE}.is_partial_payment ;;
  }
  dimension: is_recurring {
    type: yesno
    description: "Indicates if this is a recurring payment"
    sql: ${TABLE}.is_recurring ;;
  }
  dimension_group: last_payment {
    type: time
    description: "Date of the last payment for recurring payments"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_payment_date ;;
  }
  dimension: late_fee_applied {
    type: yesno
    description: "Indicates if a late fee was applied"
    sql: ${TABLE}.late_fee_applied ;;
  }
  dimension: late_payment_fee {
    type: number
    description: "Fee charged for late payment"
    sql: ${TABLE}.late_payment_fee ;;
  }
  dimension: loyalty_points_earned {
    type: number
    description: "Number of loyalty points earned from this payment"
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_redeemed {
    type: number
    description: "Number of loyalty points redeemed in this payment"
    sql: ${TABLE}.loyalty_points_redeemed ;;
  }
  dimension_group: next_payment {
    type: time
    description: "Date of the next scheduled payment for recurring payments"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_payment_date ;;
  }
  dimension_group: next_subscription_billing {
    type: time
    description: "Next billing date for the subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_subscription_billing_date ;;
  }
  dimension: partial_payment_amount {
    type: number
    description: "Amount of partial payment"
    sql: ${TABLE}.partial_payment_amount ;;
  }
  dimension: payment_amount {
    type: number
    description: "Amount of the payment"
    sql: ${TABLE}.payment_amount ;;
  }
  dimension_group: payment_date {
    hidden: no
    label: "Payment Date"
    description: "The exact date when this payment was successfully processed. Crucial for cash flow reporting and reconciliation."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_date ;;
  }
  dimension_group: payment_due {
    type: time
    description: "Due date for the payment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_due_date ;;
  }
  dimension_group: payment_due_date_1 {
    type: time
    description: "Due date for the first payment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_due_date_1 ;;
  }
  dimension: payment_gateway {
    type: string
    description: "Payment gateway used to process the payment"
    sql: ${TABLE}.payment_gateway ;;
  }
  dimension: payment_log {
    type: string
    description: "Detailed log of the payment process"
    sql: ${TABLE}.payment_log ;;
  }
  dimension: payment_method {
    type: string
    description: "Method of payment (e.g., 'Credit Card', 'PayPal', 'Bank Transfer')"
    sql: ${TABLE}.payment_method ;;
  }
  dimension: payment_notes {
    type: string
    description: "Additional notes about the payment"
    sql: ${TABLE}.payment_notes ;;
  }
  dimension: payment_plan {
    type: string
    description: "Details of the payment plan if applicable"
    sql: ${TABLE}.payment_plan ;;
  }
  dimension: payment_processor {
    hidden: no
    label: "Payment Processor"
    description: "The specific company that handled the technical processing of this payment. Crucial for understanding transaction flows and fees"
    type: string
    sql: ${TABLE}.payment_processor ;;
  }
  dimension: payment_provider_fees {
    type: number
    description: "Fees charged by the payment provider"
    sql: ${TABLE}.payment_provider_fees ;;
  }
  dimension: payment_reference {
    type: string
    description: "Unique reference number for the payment"
    sql: ${TABLE}.payment_reference ;;
  }
  dimension: payment_reminder_sent {
    type: yesno
    description: "Indicates if a payment reminder was sent"
    sql: ${TABLE}.payment_reminder_sent ;;
  }
  dimension_group: payment_settlement {
    type: time
    description: "Date when the payment was settled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_settlement_date ;;
  }
  dimension: payment_settlement_status {
    type: string
    description: "Status of payment settlement"
    sql: ${TABLE}.payment_settlement_status ;;
  }
  dimension: payment_status {
    hidden: no
    label: "Payment Status"
    description: "Current status of the payment (e.g., 'Completed', 'Pending', 'Failed')."
    type: string
    sql: ${TABLE}.payment_status ;;
  }
  dimension: payment_terms {
    type: string
    description: "Terms of the payment"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: payment_terms_agreed {
    type: yesno
    description: "Indicates if the customer agreed to payment terms"
    sql: ${TABLE}.payment_terms_agreed ;;
  }
  dimension: penalty_fee {
    type: number
    description: "Any additional penalty fee"
    sql: ${TABLE}.penalty_fee ;;
  }
  dimension: penalty_fee_1 {
    type: number
    description: "First level penalty fee"
    sql: ${TABLE}.penalty_fee_1 ;;
  }
  dimension: penalty_fee_2 {
    type: number
    description: "Second level penalty fee"
    sql: ${TABLE}.penalty_fee_2 ;;
  }
  dimension: penalty_fee_3 {
    type: number
    description: "Third level penalty fee"
    sql: ${TABLE}.penalty_fee_3 ;;
  }
  dimension: penalty_fee_applied {
    type: yesno
    description: "Indicates if a penalty fee was applied"
    sql: ${TABLE}.penalty_fee_applied ;;
  }
  dimension: provider_name {
    hidden: no
    label: "Provider Name"
    description: "The overarching company or service that facilitated this payment (e.g., 'Stripe', 'PayPal')."
    type: string
    sql: ${TABLE}.provider_name ;;
  }
  dimension: recurring_interval {
    type: string
    description: "Interval for recurring payments (e.g., 'Monthly', 'Annually')"
    sql: ${TABLE}.recurring_interval ;;
  }
  dimension: refund_amount {
    label: "Refund Amount"
    description: "Amount of the refund"
    type: number
    sql: ${TABLE}.refund_amount ;;
  }
  dimension_group: refund {
    hidden: no
    label: "Refund Date"
    description: "The **date** when a refund for this payment was officially processed. Monitor recent refunds closely."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.refund_date ;;
  }
  dimension: refund_processing_fee {
    type: number
    description: "Fee for processing the refund"
    sql: ${TABLE}.refund_processing_fee ;;
  }
  dimension: refund_reason {
    hidden: no
    label: "Refund Reason"
    description: "The customer's stated reason for requesting a refund (e.g., 'Product Damaged', 'Changed Mind')."
    type: string
    sql: ${TABLE}.refund_reason ;;
  }
  dimension: refund_requested {
    type: yesno
    description: "Indicates if a refund has been requested"
    sql: ${TABLE}.refund_requested ;;
  }
  dimension: refund_status {
    type: string
    description: "Current status of the refund"
    sql: ${TABLE}.refund_status ;;
  }
  dimension: remaining_balance {
    type: number
    description: "Remaining balance after partial payment"
    sql: ${TABLE}.remaining_balance ;;
  }
  dimension: sale_id {
    type: number
    description: "ID of the related sale"
    sql: ${TABLE}.sale_id ;;
  }
  dimension_group: subscription_cancellation {
    type: time
    description: "Date when the subscription was cancelled (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_cancellation_date ;;
  }
  dimension: subscription_id {
    type: number
    description: "ID of the related subscription"
    sql: ${TABLE}.subscription_id ;;
  }
  dimension: subscription_plan {
    type: string
    description: "Details of the subscription plan"
    sql: ${TABLE}.subscription_plan ;;
  }
  dimension: subscription_status {
    type: string
    description: "Current status of the subscription"
    sql: ${TABLE}.subscription_status ;;
  }
  dimension: tax_amount {
    type: number
    description: "Amount of tax applied"
    sql: ${TABLE}.tax_amount ;;
  }
  dimension: tax_rate {
    type: number
    description: "Tax rate applied"
    sql: ${TABLE}.tax_rate ;;
  }
  dimension: total_installments {
    type: number
    description: "Total number of installments"
    sql: ${TABLE}.total_installments ;;
  }
  dimension: transaction_id {
    type: number
    description: "Foreign key referencing the associated transaction"
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: transaction_log {
    type: string
    description: "Detailed log of the transaction"
    sql: ${TABLE}.transaction_log ;;
  }
  measure: chargeback_rate {
    hidden: no
    label: "Chargeback Rate"
    description: "The ratio of total chargeback amount to total payment amount, expressed as a percentage."
    type: number
    sql: SAFE_DIVIDE(${total_chargeback_amount},${total_payment_amount}) ;;
    value_format_name: percent_2
  }
  measure: payment_count {
    hidden: no
    label: "Payment Volume"
    description: "The total count of unique payment transactions processed."
    type: count_distinct
    sql: ${payment_id} ;;
  }
  measure: refund_rate {
    hidden: no
    label: "Refund Rate"
    description: "The percentage of total payment amount that has been returned as refunds. Helps identify product issues or customer service challenges."
    type: number
    sql: SAFE_DIVIDE(${total_refund_amount},${total_payment_amount}) ;;
    value_format_name: percent_2
  }
  measure: total_chargeback_amount {
    hidden: no
    label: "Total Chargeback Amount"
    description: "The total amount of all chargebacks, in US Dollars."
    type: sum
    sql: ${chargeback_amount} ;;
    value_format_name: usd
  }
  measure: total_payment_amount {
    hidden: no
    label: "Total Payment Amount"
    description: "The total sum of all payments received, in US Dollars."
    type: sum
    sql: ${payment_amount} ;;
    value_format_name: usd
  }
  measure: total_refund_amount {
    hidden: no
    label: "Total Refunds"
    description: "The total sum of all refunded amounts, in US Dollars."
    type: sum
    sql: ${refund_amount} ;;
    value_format_name: usd
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      provider_name,
      bank_name,
      sales.sale_id,
      transactions.refund_transaction_id,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      invoices.invoice_id
    ]
  }

}