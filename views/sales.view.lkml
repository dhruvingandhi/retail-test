view: sales {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Sales` ;;
  drill_fields: [sale_id]

  dimension: sale_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each sale transaction"
    sql: ${TABLE}.sale_id ;;
  }
  dimension: affiliate_code {
    type: string
    description: "Affiliate code used for the sale"
    sql: ${TABLE}.affiliate_code ;;
  }
  dimension: affiliate_commission {
    type: number
    description: "Commission paid to the affiliate"
    sql: ${TABLE}.affiliate_commission ;;
  }
  dimension: average_item_discount {
    type: number
    description: "Average discount per item in this sale"
    sql: ${TABLE}.average_item_discount ;;
  }
  dimension: average_sale_price {
    type: number
    description: "Average price per item in this sale"
    sql: ${TABLE}.average_sale_price ;;
  }
  dimension_group: cancellation {
    type: time
    description: "Date of cancellation (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancellation_date ;;
  }
  dimension: channel_id {
    type: number
    description: "Identifier for the sales channel used"
    sql: ${TABLE}.channel_id ;;
  }
  dimension: coupon_code {
    type: string
    description: "Coupon code used for the sale (if applicable)"
    sql: ${TABLE}.coupon_code ;;
  }
  dimension: coupon_discount {
    type: number
    description: "Discount amount from coupon usage"
    sql: ${TABLE}.coupon_discount ;;
  }
  dimension: cross_sell_items {
    type: string
    description: "Items sold as cross-sells"
    sql: ${TABLE}.cross_sell_items ;;
  }
  dimension: custom_order_details {
    type: string
    description: "Details of the custom order (if applicable)"
    sql: ${TABLE}.custom_order_details ;;
  }
  dimension: customer_feedback {
    type: string
    description: "Feedback provided by the customer for this sale"
    sql: ${TABLE}.customer_feedback ;;
  }
  dimension: customer_feedback_submitted {
    type: yesno
    description: "Indicates if customer submitted feedback"
    sql: ${TABLE}.customer_feedback_submitted ;;
  }
  dimension: customer_id {
    type: number
    description: "Foreign key referencing the customer who made the purchase"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_loyalty_status {
    type: string
    description: "Customer's loyalty status at time of sale"
    sql: ${TABLE}.customer_loyalty_status ;;
  }
  dimension: customer_referral_source {
    type: string
    description: "Source of customer referral (if applicable)"
    sql: ${TABLE}.customer_referral_source ;;
  }
  dimension: customer_review_comments {
    type: string
    description: "Customer's review comments"
    sql: ${TABLE}.customer_review_comments ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Customer satisfaction rating for this sale"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension: customer_tier {
    type: string
    description: "Customer's tier at time of sale"
    sql: ${TABLE}.customer_tier ;;
  }
  dimension_group: delivery_date {
    type: time
    description: "Actual or estimated delivery date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivery_date ;;
  }
  dimension: delivery_method {
    type: string
    description: "Method of delivery for the sold items"
    sql: ${TABLE}.delivery_method ;;
  }
  dimension: delivery_status {
    type: string
    description: "Current status of the delivery"
    sql: ${TABLE}.delivery_status ;;
  }
  dimension: discount_amount {
    type: number
    description: "Amount of discount applied to the sale"
    sql: ${TABLE}.discount_amount ;;
  }
  dimension: discount_applied {
    type: yesno
    description: "Indicates if a discount was applied to the sale"
    sql: ${TABLE}.discount_applied ;;
  }
  dimension_group: estimated_delivery {
    type: time
    description: "Estimated date of delivery"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.estimated_delivery_date ;;
  }
  dimension_group: feedback_submission {
    type: time
    description: "Date when feedback was submitted"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.feedback_submission_date ;;
  }
  dimension: gift_card_amount {
    type: number
    description: "Amount paid using a gift card"
    sql: ${TABLE}.gift_card_amount ;;
  }
  dimension: gift_card_used {
    type: yesno
    description: "Indicates if a gift card was used for the purchase"
    sql: ${TABLE}.gift_card_used ;;
  }
  dimension: gift_message {
    type: string
    description: "Gift message (if applicable)"
    sql: ${TABLE}.gift_message ;;
  }
  dimension: handling_cost {
    type: number
    description: "Handling cost associated with this sale"
    sql: ${TABLE}.handling_cost ;;
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
  dimension: is_affiliate {
    type: yesno
    description: "Indicates if the sale was through an affiliate"
    sql: ${TABLE}.is_affiliate ;;
  }
  dimension: is_custom_order {
    type: yesno
    description: "Indicates if this was a custom order"
    sql: ${TABLE}.is_custom_order ;;
  }
  dimension: is_free_shipping {
    type: yesno
    description: "Indicates if free shipping was applied"
    sql: ${TABLE}.is_free_shipping ;;
  }
  dimension: is_gift {
    type: yesno
    description: "Indicates if the purchase was marked as a gift"
    sql: ${TABLE}.is_gift ;;
  }
  dimension: is_renewed {
    type: yesno
    description: "Indicates if the subscription was renewed"
    sql: ${TABLE}.is_renewed ;;
  }
  dimension: is_subscription {
    type: yesno
    description: "Indicates if this is a subscription sale"
    sql: ${TABLE}.is_subscription ;;
  }
  dimension: loyalty_points_earned {
    type: number
    description: "Number of loyalty points earned from this sale"
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_redeemed {
    type: number
    description: "Number of loyalty points redeemed for this sale"
    sql: ${TABLE}.loyalty_points_redeemed ;;
  }
  dimension: number_of_items_sold {
    type: number
    description: "Total number of individual items sold in this transaction"
    sql: ${TABLE}.number_of_items_sold ;;
  }
  dimension: order_confirmation_sent {
    type: yesno
    description: "Indicates if order confirmation was sent to the customer"
    sql: ${TABLE}.order_confirmation_sent ;;
  }
  dimension_group: order_fulfillment {
    type: time
    description: "Date when the order was fulfilled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_fulfillment_date ;;
  }
  dimension: order_id {
    type: number
    description: "Foreign key referencing the associated order"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: packaging_cost {
    type: number
    description: "Cost of packaging for this sale"
    sql: ${TABLE}.packaging_cost ;;
  }
  dimension_group: payment_due {
    type: time
    description: "Due date for the payment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.payment_due_date ;;
  }
  dimension: payment_method {
    type: string
    description: "Method of payment used"
    sql: ${TABLE}.payment_method ;;
  }
  dimension: payment_status {
    type: string
    description: "Current status of the payment"
    sql: ${TABLE}.payment_status ;;
  }
  dimension: payment_terms {
    type: string
    description: "Terms of payment for this sale"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing the product sold"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_returned {
    type: yesno
    description: "Indicates if the product was returned"
    sql: ${TABLE}.product_returned ;;
  }
  dimension: product_review_score {
    type: number
    description: "Product review score given by the customer"
    sql: ${TABLE}.product_review_score ;;
  }
  dimension: promotional_discount {
    type: number
    description: "Discount amount from promotions"
    sql: ${TABLE}.promotional_discount ;;
  }
  dimension: referral_bonus_earned {
    type: number
    description: "Bonus earned for customer referral"
    sql: ${TABLE}.referral_bonus_earned ;;
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
  dimension: refund_approved {
    type: yesno
    description: "Indicates if the refund was approved"
    sql: ${TABLE}.refund_approved ;;
  }
  dimension: refund_processing_fee {
    type: number
    description: "Fee for processing the refund"
    sql: ${TABLE}.refund_processing_fee ;;
  }
  dimension: refund_requested {
    type: yesno
    description: "Indicates if a refund was requested"
    sql: ${TABLE}.refund_requested ;;
  }
  dimension_group: refund_settlement {
    type: time
    description: "Date when the refund was settled"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.refund_settlement_date ;;
  }
  dimension: reorder_level {
    type: number
    description: "Reorder level for the product after this sale"
    sql: ${TABLE}.reorder_level ;;
  }
  dimension: restocking_fee {
    type: number
    description: "Fee charged for restocking returned items"
    sql: ${TABLE}.restocking_fee ;;
  }
  dimension: return_processing_fee {
    type: number
    description: "Processing fee for returns (if applicable)"
    sql: ${TABLE}.return_processing_fee ;;
  }
  dimension: return_reason {
    type: string
    description: "Reason for return (if applicable)"
    sql: ${TABLE}.return_reason ;;
  }
  dimension: return_shipping_fee {
    type: number
    description: "Shipping fee for returns (if applicable)"
    sql: ${TABLE}.return_shipping_fee ;;
  }
  dimension: sale_amount {
    type: number
    description: "Total amount of the sale before discounts and taxes"
    sql: ${TABLE}.sale_amount ;;
  }
  dimension_group: sale {
    type: time
    description: "Date of the sale transaction"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sale_date ;;
  }
  dimension: sale_price_per_unit {
    type: number
    description: "Price per unit of the product sold"
    sql: ${TABLE}.sale_price_per_unit ;;
  }
  dimension: sale_quantity {
    type: number
    description: "Quantity of items sold in this transaction"
    sql: ${TABLE}.sale_quantity ;;
  }
  dimension: sales_adjustments {
    type: number
    description: "Any adjustments made to the sale amount"
    sql: ${TABLE}.sales_adjustments ;;
  }
  dimension: sales_cancellation {
    type: yesno
    description: "Indicates if the sale was cancelled"
    sql: ${TABLE}.sales_cancellation ;;
  }
  dimension: sales_cancellation_reason {
    type: string
    description: "Reason for cancellation (if applicable)"
    sql: ${TABLE}.sales_cancellation_reason ;;
  }
  dimension: sales_channel {
    type: string
    description: "Channel through which the sale was made"
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: sales_commission {
    type: number
    description: "Commission amount for the sales representative"
    sql: ${TABLE}.sales_commission ;;
  }
  dimension: sales_incentive {
    type: string
    description: "Any additional incentives applied to this sale"
    sql: ${TABLE}.sales_incentive ;;
  }
  dimension: sales_order_notes {
    type: string
    description: "Additional notes related to the sales order"
    sql: ${TABLE}.sales_order_notes ;;
  }
  dimension: sales_promotion_code {
    type: string
    description: "Promotion code applied to the sale"
    sql: ${TABLE}.sales_promotion_code ;;
  }
  dimension: sales_promotion_discount {
    type: number
    description: "Discount amount from the promotion"
    sql: ${TABLE}.sales_promotion_discount ;;
  }
  dimension: sales_region {
    type: string
    description: "Geographic region where the sale occurred"
    sql: ${TABLE}.sales_region ;;
  }
  dimension: sales_rep_id {
    type: number
    description: "Foreign key referencing the sales representative involved"
    sql: ${TABLE}.sales_rep_id ;;
  }
  dimension: sales_source {
    type: string
    description: "Source of the sale (e.g., 'Online', 'In-store')"
    sql: ${TABLE}.sales_source ;;
  }
  dimension: sales_territory {
    type: string
    description: "Specific sales territory within the region"
    sql: ${TABLE}.sales_territory ;;
  }
  dimension: sales_volume {
    type: number
    description: "Total sales volume for this transaction"
    sql: ${TABLE}.sales_volume ;;
  }
  dimension: shipping_cost {
    type: number
    description: "Actual cost of shipping"
    sql: ${TABLE}.shipping_cost ;;
  }
  dimension: shipping_fee {
    type: number
    description: "Shipping fee charged for the sale"
    sql: ${TABLE}.shipping_fee ;;
  }
  dimension: shipping_provider {
    type: string
    description: "Name of the shipping provider"
    sql: ${TABLE}.shipping_provider ;;
  }
  dimension_group: subscription_end {
    type: time
    description: "End date of the subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_end_date ;;
  }
  dimension_group: subscription_renewal {
    type: time
    description: "Next renewal date for the subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_renewal_date ;;
  }
  dimension_group: subscription_start {
    type: time
    description: "Start date of the subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_start_date ;;
  }
  dimension: tax_amount {
    type: number
    description: "Amount of tax charged on the sale"
    sql: ${TABLE}.tax_amount ;;
  }
  dimension: tax_invoiced {
    type: number
    description: "Amount of tax invoiced for this sale"
    sql: ${TABLE}.tax_invoiced ;;
  }
  dimension: total_amount {
    type: number
    description: "Total amount including discounts, taxes, and shipping"
    sql: ${TABLE}.total_amount ;;
  }
  dimension: tracking_number {
    type: string
    description: "Tracking number for the shipment"
    sql: ${TABLE}.tracking_number ;;
  }
  dimension: upsell_items {
    type: string
    description: "Items sold as upsells"
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
    description: "Indicates if warranty was offered with the sale"
    sql: ${TABLE}.warranty_offered ;;
  }
  dimension: warranty_terms {
    type: string
    description: "Terms of the warranty"
    sql: ${TABLE}.warranty_terms ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      sale_id,
      products.product_id,
      products.product_name,
      orders.order_id,
      orders.delivery_contact_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      financial_reports.count,
      invoices.count,
      payment_details.count,
      transactions.count
    ]
  }

}