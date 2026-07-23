view: orders {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Orders` ;;
  drill_fields: [order_id]

  fields_hidden_by_default: yes

  dimension: order_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each order"
    sql: ${TABLE}.order_id ;;
  }
  dimension: affiliate_code {
    type: string
    description: "Affiliate code used (if applicable)"
    sql: ${TABLE}.affiliate_code ;;
  }
  dimension: affiliate_commission {
    type: number
    description: "Commission paid to affiliate"
    sql: ${TABLE}.affiliate_commission ;;
  }
  dimension: audit_trail {
    type: string
    description: "Audit trail of changes made to the order"
    sql: ${TABLE}.audit_trail ;;
  }
  dimension: balance_due {
    type: number
    description: "Remaining balance to be paid"
    sql: ${TABLE}.balance_due ;;
  }
  dimension: billing_address {
    type: string
    description: "Billing address for the order"
    sql: ${TABLE}.billing_address ;;
  }
  dimension: cancel_reason {
    type: string
    description: "Reason for cancellation"
    sql: ${TABLE}.cancel_reason ;;
  }
  dimension_group: cancellation {
    type: time
    description: "Date when the order was cancelled (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancellation_date ;;
  }
  dimension: cancellation_fee {
    type: number
    description: "Fee charged for cancellation"
    sql: ${TABLE}.cancellation_fee ;;
  }
  dimension: cancelled_by {
    type: string
    description: "Who cancelled the order (customer or system)"
    sql: ${TABLE}.cancelled_by ;;
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
  dimension: cross_sell_items {
    type: string
    description: "Items added as cross-sells"
    sql: ${TABLE}.cross_sell_items ;;
  }
  dimension: currency {
    type: string
    description: "Currency used for the transaction"
    sql: ${TABLE}.currency ;;
  }
  dimension: custom_order_details {
    type: string
    description: "Details of the custom order"
    sql: ${TABLE}.custom_order_details ;;
  }
  dimension: customer_device {
    type: string
    description: "Device used by the customer to place the order"
    sql: ${TABLE}.customer_device ;;
  }
  dimension: customer_feedback {
    type: string
    description: "Feedback provided by the customer for this order"
    sql: ${TABLE}.customer_feedback ;;
  }
  dimension_group: customer_feedback_submission {
    type: time
    description: "Date when customer feedback was submitted"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.customer_feedback_submission_date ;;
  }
  dimension: customer_id {
    type: number
    description: "Foreign key referencing the customer who placed the order"
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_ip {
    type: string
    description: "IP address of the customer when placing the order"
    sql: ${TABLE}.customer_ip ;;
  }
  dimension: customer_loyalty_status {
    type: string
    description: "Customer's loyalty status at time of order"
    sql: ${TABLE}.customer_loyalty_status ;;
  }
  dimension: customer_review_score {
    type: number
    description: "Customer's review score for this order"
    sql: ${TABLE}.customer_review_score ;;
  }
  dimension: customer_tier {
    hidden: no
    label: "Customer Tier"
    description: "The loyalty tier of the customer when they placed this order (e.g., 'Gold', 'Silver'). This helps us see if our most valuable customers are ordering."
    type: string
    sql: ${TABLE}.customer_tier ;;
  }
  dimension: customs_declaration_number {
    type: string
    description: "Customs declaration number for international orders"
    sql: ${TABLE}.customs_declaration_number ;;
  }
  dimension: customs_handling_fee {
    type: number
    description: "Fee for customs handling (if applicable)"
    sql: ${TABLE}.customs_handling_fee ;;
  }
  dimension: delivery_contact_address {
    type: string
    description: "Address of the delivery contact"
    sql: ${TABLE}.delivery_contact_address ;;
  }
  dimension: delivery_contact_name {
    type: string
    description: "Name of the delivery contact person"
    sql: ${TABLE}.delivery_contact_name ;;
  }
  dimension: delivery_contact_phone {
    type: string
    description: "Phone number of the delivery contact"
    sql: ${TABLE}.delivery_contact_phone ;;
  }
  dimension_group: delivery {
    type: time
    description: "Actual or estimated delivery date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivery_date ;;
  }
  dimension: delivery_instructions {
    type: string
    description: "Special instructions for delivery"
    sql: ${TABLE}.delivery_instructions ;;
  }
  dimension: discount_code {
    type: string
    description: "Discount code applied to the order (if any)"
    sql: ${TABLE}.discount_code ;;
  }
  dimension: fraud_check_status {
    type: string
    description: "Status of fraud check"
    sql: ${TABLE}.fraud_check_status ;;
  }
  dimension_group: fraud_review {
    type: time
    description: "Date of fraud review"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fraud_review_date ;;
  }
  dimension: gift_card_amount {
    type: number
    description: "Amount paid using gift card"
    sql: ${TABLE}.gift_card_amount ;;
  }
  dimension: gift_card_used {
    type: yesno
    description: "Indicates if a gift card was used"
    sql: ${TABLE}.gift_card_used ;;
  }
  dimension: gift_message {
    type: string
    description: "Gift message (if applicable)"
    sql: ${TABLE}.gift_message ;;
  }
  dimension: handling_fee {
    type: number
    description: "Additional handling fee charged"
    sql: ${TABLE}.handling_fee ;;
  }
  dimension: installment_number {
    type: number
    description: "Current installment number (if applicable)"
    sql: ${TABLE}.installment_number ;;
  }
  dimension: installment_plan {
    type: string
    description: "Details of installment plan (if applicable)"
    sql: ${TABLE}.installment_plan ;;
  }
  dimension: is_cancelled {
    type: yesno
    description: "Indicates if the order has been cancelled"
    sql: ${TABLE}.is_cancelled ;;
  }
  dimension: is_custom_order {
    type: yesno
    description: "Indicates if this is a custom order"
    sql: ${TABLE}.is_custom_order ;;
  }
  dimension: is_express_shipping {
    type: yesno
    description: "Indicates if express shipping was chosen"
    sql: ${TABLE}.is_express_shipping ;;
  }
  dimension: is_fraudulent {
    type: yesno
    description: "Indicates if the order has been flagged as fraudulent"
    sql: ${TABLE}.is_fraudulent ;;
  }
  dimension: is_free_shipping {
    type: yesno
    description: "Indicates if free shipping was applied"
    sql: ${TABLE}.is_free_shipping ;;
  }
  dimension: is_gift {
    type: yesno
    description: "Indicates if the order is a gift"
    sql: ${TABLE}.is_gift ;;
  }
  dimension: is_international {
    type: yesno
    description: "Indicates if this is an international order"
    sql: ${TABLE}.is_international ;;
  }
  dimension: is_priority_order {
    type: yesno
    description: "Indicates if this is a priority order"
    sql: ${TABLE}.is_priority_order ;;
  }
  dimension: is_promotional_discount {
    type: yesno
    description: "Indicates if a promotional discount was applied"
    sql: ${TABLE}.is_promotional_discount ;;
  }
  dimension: is_return_accepted {
    type: yesno
    description: "Indicates if return has been accepted"
    sql: ${TABLE}.is_return_accepted ;;
  }
  dimension: is_returned {
    type: yesno
    description: "Indicates if the order has been returned"
    sql: ${TABLE}.is_returned ;;
  }
  dimension: is_salesman_sold {
    type: yesno
    description: "Indicates if the order was sold by a salesperson"
    sql: ${TABLE}.is_salesman_sold ;;
  }
  dimension: is_subscription {
    type: yesno
    description: "Indicates if this is a subscription order"
    sql: ${TABLE}.is_subscription ;;
  }
  dimension: is_subscription_renewed {
    type: yesno
    description: "Indicates if subscription has been renewed"
    sql: ${TABLE}.is_subscription_renewed ;;
  }
  dimension: is_under_warranty {
    type: yesno
    description: "Indicates if the order is currently under warranty"
    sql: ${TABLE}.is_under_warranty ;;
  }
  dimension: loyalty_points_earned {
    type: number
    description: "Number of loyalty points earned from this order"
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_used {
    type: number
    description: "Number of loyalty points used in this order"
    sql: ${TABLE}.loyalty_points_used ;;
  }
  dimension_group: next_payment_due {
    type: time
    description: "Due date for the next payment (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_payment_due_date ;;
  }
  dimension_group: order {
    hidden: no
    label: "Order"
    description: "The exact date and time when the customer placed this order. Key for understanding sales trends."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: timestamp
    sql: TIMESTAMP(${TABLE}.order_date) ;;
  }
  dimension: order_dispatched_by {
    type: string
    description: "Who dispatched the order"
    sql: ${TABLE}.order_dispatched_by ;;
  }
  dimension: order_fulfilled_by {
    type: string
    description: "Who fulfilled the order"
    sql: ${TABLE}.order_fulfilled_by ;;
  }
  dimension: order_notes {
    type: string
    description: "Additional notes related to the order"
    sql: ${TABLE}.order_notes ;;
  }
  dimension: order_packed_by {
    type: string
    description: "Who packed the order"
    sql: ${TABLE}.order_packed_by ;;
  }
  dimension: order_placed_by {
    type: string
    description: "Who placed the order (customer name or system)"
    sql: ${TABLE}.order_placed_by ;;
  }
  dimension: order_source {
    type: string
    description: "Source of the order (e.g., 'Website', 'Mobile App', 'Phone')"
    sql: ${TABLE}.order_source ;;
  }
  dimension: order_status {
    type: string
    description: "Current status of the order (e.g., 'Pending', 'Shipped', 'Delivered')"
    sql: ${TABLE}.order_status ;;
  }
  dimension: packaging_cost {
    type: number
    description: "Cost of packaging"
    sql: ${TABLE}.packaging_cost ;;
  }
  dimension: packaging_material {
    type: string
    description: "Type of packaging material used"
    sql: ${TABLE}.packaging_material ;;
  }
  dimension: payment_status {
    type: string
    description: "Status of payment (e.g., 'Paid', 'Pending', 'Failed')"
    sql: ${TABLE}.payment_status ;;
  }
  dimension: payment_terms {
    type: string
    description: "Payment terms for the order"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: payment_terms_agreed {
    type: yesno
    description: "Indicates if customer agreed to payment terms"
    sql: ${TABLE}.payment_terms_agreed ;;
  }
  dimension: prepaid_amount {
    type: number
    description: "Amount prepaid by the customer"
    sql: ${TABLE}.prepaid_amount ;;
  }
  dimension: products_list {
    type: string
    description: "List of products and quantities in JSON format"
    sql: ${TABLE}.products_list ;;
  }
  dimension: promotional_discount {
    type: number
    description: "Amount of promotional discount applied"
    sql: ${TABLE}.promotional_discount ;;
  }
  dimension: referral_discount {
    type: number
    description: "Discount applied due to referral"
    sql: ${TABLE}.referral_discount ;;
  }
  dimension: refund_amount {
    type: number
    description: "Amount refunded (if applicable)"
    sql: ${TABLE}.refund_amount ;;
  }
  dimension: return_processing_fee {
    type: number
    description: "Fee charged for processing return"
    sql: ${TABLE}.return_processing_fee ;;
  }
  dimension: return_reason {
    type: string
    description: "Reason for return"
    sql: ${TABLE}.return_reason ;;
  }
  dimension: sales_channel {
    hidden: no
    label: "Sales Channel"
    description: "The specific channel where this sale originated (e.g., 'Online Store', 'Retail Location', 'Mobile App'). Great for channel performance analysis"
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: sales_commission {
    type: number
    description: "Commission paid to sales representative"
    sql: ${TABLE}.sales_commission ;;
  }
  dimension: sales_representative_id {
    type: number
    description: "ID of the sales representative (if applicable)"
    sql: ${TABLE}.sales_representative_id ;;
  }
  dimension: sales_tax_invoiced {
    type: yesno
    description: "Indicates if sales tax has been invoiced"
    sql: ${TABLE}.sales_tax_invoiced ;;
  }
  dimension: shipment_tracking_details {
    type: string
    description: "Detailed tracking information"
    sql: ${TABLE}.shipment_tracking_details ;;
  }
  dimension: shipping_address {
    type: string
    description: "Delivery address for the order"
    sql: ${TABLE}.shipping_address ;;
  }
  dimension: shipping_cost {
    type: number
    description: "Cost incurred for shipping"
    sql: ${TABLE}.shipping_cost ;;
  }
  dimension: shipping_fee {
    type: number
    description: "Shipping cost for the order"
    sql: ${TABLE}.shipping_fee ;;
  }
  dimension: shipping_method {
    type: string
    description: "Method of shipping chosen for the order"
    sql: ${TABLE}.shipping_method ;;
  }
  dimension: shipping_provider {
    type: string
    description: "Name of the shipping provider"
    sql: ${TABLE}.shipping_provider ;;
  }
  dimension_group: subscription_end {
    type: time
    description: "End date of subscription (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_end_date ;;
  }
  dimension_group: subscription_renewal {
    type: time
    description: "Next renewal date for subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_renewal_date ;;
  }
  dimension_group: subscription_start {
    type: time
    description: "Start date of subscription (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_start_date ;;
  }
  dimension: sustainable_packaging {
    type: yesno
    description: "Indicates if sustainable packaging was used"
    sql: ${TABLE}.sustainable_packaging ;;
  }
  dimension: tax_amount {
    type: number
    description: "Amount of tax charged on the order"
    sql: ${TABLE}.tax_amount ;;
  }
  dimension: tax_invoiced {
    type: number
    description: "Amount of tax invoiced"
    sql: ${TABLE}.tax_invoiced ;;
  }
  dimension: total_amount {
    type: number
    description: "Total amount of the order including tax and shipping"
    sql: ${TABLE}.total_amount ;;
  }
  dimension: total_amount_revenue_badge {
    hidden: no
    label: "Revenue Badge"
    description: "A quick visual indicator of how large an order's revenue is, using icons to highlight 'Top', 'Good', or 'Low' orders. Allows the user to easily spot high-value sales"
    type: string
    sql: ${total_amount} ;;
    html:
      {% assign amt = value %}
      {% if amt >= 1000 %}
        <span style="color:#27ae60; font-weight:bold;">🏆 Top Order: ${{ amt | round: 2 }}</span>
      {% elsif amt >= 500 %}
        <span style="color:#f39c12; font-weight:bold;">🚀 Good Order: ${{ amt | round: 2 }}</span>
      {% else %}
        <span style="color:#c0392b; font-weight:bold;">📉 Low Order: ${{ amt | round: 2 }}</span>
      {% endif %}
    ;;
  }
  dimension: tracking_number {
    type: string
    description: "Tracking number for shipment"
    sql: ${TABLE}.tracking_number ;;
  }
  dimension: upsell_items {
    type: string
    description: "Items added as upsells"
    sql: ${TABLE}.upsell_items ;;
  }
  dimension_group: warranty_expiration {
    type: time
    description: "Expiration date of the warranty"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.warranty_expiration_date ;;
  }
  dimension: warranty_offered {
    type: yesno
    description: "Indicates if warranty was offered"
    sql: ${TABLE}.warranty_offered ;;
  }
  dimension: warranty_ordered {
    type: yesno
    description: "Indicates if warranty was purchased"
    sql: ${TABLE}.warranty_ordered ;;
  }
  dimension: warranty_terms {
    type: string
    description: "Terms of the warranty"
    sql: ${TABLE}.warranty_terms ;;
  }
  measure: average_customer_review_score {
    hidden: no
    label: "Average Customer Review Score"
    description: "The average of a customer's review score. Each order comes with a customer review score"
    type: average
    sql: ${customer_review_score} ;;
    value_format_name: decimal_1
  }
  measure: average_order_value{
    hidden: no
    label: "Average Order Value"
    description: "The average total amount of the order, including tax and shipping, in US Dollars."
    type: average
    sql: ${total_amount} ;;
    value_format_name: usd
  }
  measure: first_order_date {
    hidden: no
    label: "First Order Date"
    description: "The earliest date any customer in your selection placed an order. Useful for understanding new customer acquisition or overall history."
    type: string
    sql: MIN(${order_date}) ;;
  }
  measure: last_order_date {
    hidden: no
    label: "Most Recent Order Date"
    description: "The latest date any customer in your selection placed an order. Great for tracking recent activity."
    type: string
    sql: MAX(${order_date}) ;;
  }
  measure: number_of_orders {
    hidden: no
    label: "Number of Orders"
    description: "The grand total count of unique orders placed. See how many transactions have bee processed."
    type: count_distinct
    sql: ${order_id} ;;
  }
  measure: number_of_orders_last_month {
    hidden: no
    label: "Number of Orders Last Month"
    group_label: "Previous Period Comparison"
    description: "The total number of orders placed last month. Use with the Order Created Date, or Month."
    type: period_over_period
    kind: previous
    based_on: number_of_orders
    based_on_time: order_month
    period: month
    value_format_name: "decimal_0"
    drill_fields: [detail*]
  }
  measure: number_of_orders_last_year {
    hidden: no
    label: "Number of Orders Last Year"
    group_label: "Previous Period Comparison"
    description: "The total number of orders placed last year. Use with the Order Created Date, Month, Quarter or Year."
    type: period_over_period
    kind: previous
    based_on: number_of_orders
    based_on_time: order_year
    period: year
    value_format_name: "decimal_0"
    drill_fields: [detail*]
  }
  measure: number_of_orders_change_from_last_year {
    hidden: no
    label: "Number of Orders from Last Year"
    group_label: "Previous Period Comparison"
    description: "The total change in the number of orders that were placed this year versus last year. Use with the Order Created Date, Month, Quarter or Year."
    type: period_over_period
    kind: difference
    based_on: number_of_orders
    based_on_time: order_year
    period: year
    value_format_name: "decimal_0"
    drill_fields: [detail*]
  }
  measure: number_of_orders_percent_change_from_last_year {
    hidden: no
    label: "Number of Orders Percent Change from Last Year"
    group_label: "Previous Period Comparison"
    description: "The total percent change in the number of orders that were placed this year versus last year. Use with the Order Created Date, Month, Quarter or Year."
    type: period_over_period
    kind: relative_change
    based_on: number_of_orders
    based_on_time: order_year
    period: year
    value_format_name: "percent_1"
    drill_fields: [detail*]
  }
  measure: total_sales_revenue {
    hidden: no
    label: "Total Sales Revenue"
    description: "The sum of the total amount for orders, including tax and shipping, in US Dollars."
    type: sum
    sql: ${total_amount} ;;
    value_format_name: usd
  }
  measure: total_shipping_cost {
    hidden: no
    label: "Total Shipping Cost"
    description: "The total cost incurred for shipping for orders, in US Dollars."
    type: sum
    sql: ${shipping_cost} ;;
    value_format_name: usd
  }
  measure: total_tax_amount {
    hidden: no
    label: "Total Tax Amount"
    description: "The total amount of tax charged for orders, in US Dollars."
    type: sum
    sql: ${tax_amount} ;;
    value_format_name: usd
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      delivery_contact_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      customer_feedback.count,
      financial_reports.count,
      invoices.count,
      product_reviews.count,
      purchase_orders.count,
      refunds.count,
      sales.count,
      sales_transaction.count,
      transactions.count,
      supply_chain_management.count
    ]
  }

}