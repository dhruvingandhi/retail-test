view: invoices {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Invoices` ;;
  drill_fields: [invoice_id]

  fields_hidden_by_default: yes

  dimension: invoice_id {
    primary_key: yes
    label: "Invoice ID"
    description: "The unique ID for each bill we send to a customer. Think of it as the invoice's fingerprint"
    type: number
    sql: ${TABLE}.invoice_id ;;
  }
  dimension_group: aging {
    hidden: no
    label: "Aging"
    description: "How many days an invoice is past its payment due date. Higher numbers mean more overdue."
    type: duration
    sql_start: ${due_date_raw} ;;
    sql_end: CURRENT_DATE() ;;
    intervals: [day]
  }
  dimension_group: approval {
    type: time
    description: "Date when the invoice was approved"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.approval_date ;;
  }
  dimension: audit_trail {
    type: string
    description: "Audit trail of changes to the invoice"
    sql: ${TABLE}.audit_trail ;;
  }
  dimension: balance_due {
    label: "Balance Due"
    description: "Remaining balance due on the invoice"
    type: number
    sql: ${TABLE}.balance_due ;;
  }
  dimension: billing_address {
    type: string
    description: "Billing address for the invoice"
    sql: ${TABLE}.billing_address ;;
  }
  dimension: cancellation_reason {
    hidden: no
    label: "Cancellation Reason"
    description: "Why this invoice was cancelled (e.g., 'Out-of-stock', 'Pricing Error', 'Operational Issue')"
    type: string
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
    hidden: no
    label: "Chargeback Reason"
    description: "The reason given by the customer or bank for initiating a chargeback on this invoice."
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
  dimension: credit_memo_amount {
    type: number
    description: "Amount of credit memo issued"
    sql: ${TABLE}.credit_memo_amount ;;
  }
  dimension: credit_memo_reference {
    type: string
    description: "Reference number for the credit memo"
    sql: ${TABLE}.credit_memo_reference ;;
  }
  dimension: currency {
    type: string
    description: "Currency used for the invoice"
    sql: ${TABLE}.currency ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer being invoiced"
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_signature {
    type: string
    description: "Customer's signature (if required)"
    sql: ${TABLE}.customer_signature ;;
  }
  dimension: customs_declaration_number {
    type: string
    description: "Customs declaration number for international shipments"
    sql: ${TABLE}.customs_declaration_number ;;
  }
  dimension: customs_handling_fee {
    type: number
    description: "Fee for customs handling (for international orders)"
    sql: ${TABLE}.customs_handling_fee ;;
  }
  dimension: delivery_confirmation {
    type: yesno
    description: "Indicates if delivery has been confirmed"
    sql: ${TABLE}.delivery_confirmation ;;
  }
  dimension_group: delivery {
    type: time
    description: "Date when the order was delivered"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivery_date ;;
  }
  dimension: discount_amount {
    type: number
    description: "Amount of discount applied"
    sql: ${TABLE}.discount_amount ;;
  }
  dimension: discount_code {
    type: string
    description: "Code of the discount applied"
    sql: ${TABLE}.discount_code ;;
  }
  dimension: discount_percentage {
    type: number
    description: "Percentage of discount applied"
    sql: ${TABLE}.discount_percentage ;;
  }
  dimension: dispute_reason {
    hidden: no
    label: "Dispute Reason"
    description: "The reason provided by the customer for disputing this invoice."
    type: string
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
    description: "Status of dispute resolution"
    sql: ${TABLE}.dispute_resolution_status ;;
  }
  dimension_group: due_date {
    hidden: no
    label: "Due Date"
    description: "The specific date by which payment for this invoice is expected. Crucial for managing cash flow."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.due_date ;;
  }
  dimension: duty_charges {
    type: number
    description: "Duty charges for international shipments"
    sql: ${TABLE}.duty_charges ;;
  }
  dimension: exchange_amount {
    type: number
    description: "Total amount after currency exchange"
    sql: ${TABLE}.exchange_amount ;;
  }
  dimension: exchange_rate {
    type: number
    description: "Exchange rate used (for international transactions)"
    sql: ${TABLE}.exchange_rate ;;
  }
  dimension: gift_card_amount {
    type: number
    description: "Amount paid using a gift card"
    sql: ${TABLE}.gift_card_amount ;;
  }
  dimension: gift_card_used {
    type: yesno
    description: "Indicates if a gift card was used"
    sql: ${TABLE}.gift_card_used ;;
  }
  dimension: handling_fee {
    type: number
    description: "Additional handling fee"
    sql: ${TABLE}.handling_fee ;;
  }
  dimension: import_country {
    type: string
    description: "Country of import (for international orders)"
    sql: ${TABLE}.import_country ;;
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
  dimension: invoice_approval_status {
    type: string
    description: "Approval status of the invoice"
    sql: ${TABLE}.invoice_approval_status ;;
  }
  dimension_group: invoice_cancellation {
    type: time
    description: "Date when the invoice was cancelled (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_cancellation_date ;;
  }
  dimension: invoice_created_by {
    type: string
    description: "User who created the invoice"
    sql: ${TABLE}.invoice_created_by ;;
  }
  dimension_group: invoice_created {
    type: time
    description: "Date when the invoice was created"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_created_date ;;
  }
  dimension_group: invoice {
    type: time
    description: "Date when the invoice was issued"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }
  dimension: invoice_due_alert {
    type: yesno
    description: "Indicates if a due date alert has been sent"
    sql: ${TABLE}.invoice_due_alert ;;
  }
  dimension: invoice_notes {
    type: string
    description: "Additional notes on the invoice"
    sql: ${TABLE}.invoice_notes ;;
  }
  dimension: invoice_resend_count {
    type: number
    description: "Number of times the invoice has been resent"
    sql: ${TABLE}.invoice_resend_count ;;
  }
  dimension_group: invoice_settlement {
    type: time
    description: "Date when the invoice was settled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_settlement_date ;;
  }
  dimension: invoice_status {
    type: string
    description: "Current status of the invoice (e.g., 'Paid', 'Unpaid', 'Overdue')"
    sql: ${TABLE}.invoice_status ;;
  }
  dimension: is_disputed {
    type: yesno
    description: "Indicates if the invoice is disputed"
    sql: ${TABLE}.is_disputed ;;
  }
  dimension: is_paid {
    type: yesno
    description: "Indicates if the invoice has been paid"
    sql: ${TABLE}.is_paid ;;
  }
  dimension: is_refundable {
    type: yesno
    description: "Indicates if the invoice is eligible for refund"
    sql: ${TABLE}.is_refundable ;;
  }
  dimension: last_modified_by {
    type: string
    description: "User who last modified the invoice"
    sql: ${TABLE}.last_modified_by ;;
  }
  dimension_group: last_modified {
    type: time
    description: "Date of last modification"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_modified_date ;;
  }
  dimension: late_payment_fee {
    type: number
    description: "Fee charged for late payment"
    sql: ${TABLE}.late_payment_fee ;;
  }
  dimension_group: next_payment_due {
    type: time
    description: "Due date for the next payment (for installment plans)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_payment_due_date ;;
  }
  dimension: order_id {
    type: number
    description: "Foreign key referencing the associated order"
    sql: ${TABLE}.order_id ;;
  }
  dimension: outstanding_balance {
    type: number
    description: "Outstanding balance on the invoice"
    sql: ${TABLE}.outstanding_balance ;;
  }
  dimension: overdue_alert_sent {
    type: yesno
    description: "Indicates if an overdue alert has been sent"
    sql: ${TABLE}.overdue_alert_sent ;;
  }
  dimension: payment_confirmation {
    type: yesno
    description: "Indicates if payment has been confirmed"
    sql: ${TABLE}.payment_confirmation ;;
  }
  dimension_group: payment {
    type: time
    description: "Date when the payment was received"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_date ;;
  }
  dimension: payment_method {
    type: string
    description: "Method of payment used"
    sql: ${TABLE}.payment_method ;;
  }
  dimension: payment_plan {
    type: string
    description: "Details of the payment plan (if applicable)"
    sql: ${TABLE}.payment_plan ;;
  }
  dimension: payment_reference {
    type: string
    description: "Reference number for the payment"
    sql: ${TABLE}.payment_reference ;;
  }
  dimension: payment_terms {
    type: string
    description: "Terms of payment for the invoice"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: penalty_fee {
    type: number
    description: "Fee charged for late payment"
    sql: ${TABLE}.penalty_fee ;;
  }
  dimension: prepaid_amount {
    type: number
    description: "Amount prepaid by the customer"
    sql: ${TABLE}.prepaid_amount ;;
  }
  dimension: promotion_code {
    type: string
    description: "Promotional code applied to the invoice"
    sql: ${TABLE}.promotion_code ;;
  }
  dimension: promotion_discount {
    type: number
    description: "Discount amount from promotions"
    sql: ${TABLE}.promotion_discount ;;
  }
  dimension: reversal_reason {
    hidden: no
    label: "Reversal Reason"
    description: "The combined reason if an invoice was reversed due to either a chargeback or a refund."
    type: string
    sql: CASE
          WHEN ${chargeback_reason} IS NOT NULL AND ${refund_reason} IS NOT NULL THEN CONCAT(${chargeback_reason}, " and ", ${refund_reason})
          WHEN ${chargeback_reason} IS NOT NULL AND ${refund_reason} IS NULL THEN CONCAT(${chargeback_reason})
          WHEN ${chargeback_reason} IS NULL AND ${refund_reason} IS NOT NULL THEN CONCAT(${refund_reason})
          ELSE NULL
        END
      ;;
  }
  dimension: refund_amount {
    type: number
    description: "Amount of refund requested"
    sql: ${TABLE}.refund_amount ;;
  }
  dimension: refund_processing_fee {
    type: number
    description: "Fee for processing the refund"
    sql: ${TABLE}.refund_processing_fee ;;
  }
  dimension: refund_reason {
    hidden: no
    label: "Refund Reason"
    description: "The reason provided by the customer for requesting a refund on this invoice. Important for understanding customer dissatisfaction."
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
  dimension: sale_id {
    type: number
    description: "ID of the related sale"
    sql: ${TABLE}.sale_id ;;
  }
  dimension: sales_rep_id {
    type: number
    description: "ID of the sales representative associated with the invoice"
    sql: ${TABLE}.sales_rep_id ;;
  }
  dimension: settlement_status {
    type: string
    description: "Status of invoice settlement"
    sql: ${TABLE}.settlement_status ;;
  }
  dimension: shipment_cost {
    type: number
    description: "Cost of shipping"
    sql: ${TABLE}.shipment_cost ;;
  }
  dimension: shipment_tracking_number {
    type: string
    description: "Tracking number for the shipment"
    sql: ${TABLE}.shipment_tracking_number ;;
  }
  dimension: shipping_address {
    type: string
    description: "Shipping address for the order"
    sql: ${TABLE}.shipping_address ;;
  }
  dimension: shipping_fee {
    type: number
    description: "Shipping fee charged"
    sql: ${TABLE}.shipping_fee ;;
  }
  dimension: tax_amount {
    type: number
    description: "Amount of tax charged"
    sql: ${TABLE}.tax_amount ;;
  }
  dimension: total_amount {
    type: number
    description: "Total amount of the invoice"
    sql: ${TABLE}.total_amount ;;
  }
  dimension: total_installments {
    type: number
    description: "Total number of installments"
    sql: ${TABLE}.total_installments ;;
  }
  measure: average_days_aged {
    hidden: no
    label: "Average Days Aged"
    description: "On average, how many days invoices are typically late past their due date. A key metric for assessing collection efficiency."
    type: average
    sql: ${days_aging} ;;
    value_format_name: decimal_0
  }
  measure: average_balance {
    hidden: no
    label: "Average Balance"
    description: "The average remaining balance due across all invoices, in US Dollars."
    type: average
    sql: ${balance_due} ;;
    value_format_name: decimal_0
  }
  measure: total_balance_due {
    hidden: no
    label: "Current Outstanding Receivable"
    description: "The sum of the remaining balance due on all invoices, in US Dollars."
    type: sum
    sql: ${balance_due} ;;
    value_format_name: decimal_0
  }
  measure: number_of_invoices {
    hidden: no
    label: "Number of Invoices"
    description: "The total count of all unique invoices we have issued. See how many bills are in the system."
    type: count_distinct
    sql: ${invoice_id} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      invoice_id,
      sales.sale_id,
      orders.order_id,
      orders.delivery_contact_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      payment_details.count,
      transactions.count
    ]
  }

}