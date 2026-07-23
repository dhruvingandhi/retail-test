view: customers {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Customers` ;;
  drill_fields: [customer_id]

  fields_hidden_by_default: yes

  dimension: customer_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each customer"
    sql: ${TABLE}.customer_id ;;
  }
  dimension: account_balance {
    type: number
    description: "Current balance in customer's account"
    sql: ${TABLE}.account_balance ;;
  }
  dimension: account_created_by {
    type: string
    description: "Entity or person who created the customer account"
    sql: ${TABLE}.account_created_by ;;
  }
  dimension_group: account_created {
    type: time
    description: "Date when the customer account was created"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.account_created_date ;;
  }
  dimension: account_last_updated_by {
    type: string
    description: "Entity or person who last updated the account"
    sql: ${TABLE}.account_last_updated_by ;;
  }
  dimension_group: account_last_updated {
    type: time
    description: "Date when the account was last updated"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.account_last_updated_date ;;
  }
  dimension: account_recovery_email {
    type: string
    description: "Email address for account recovery"
    sql: ${TABLE}.account_recovery_email ;;
  }
  dimension: account_recovery_phone {
    type: string
    description: "Phone number for account recovery"
    sql: ${TABLE}.account_recovery_phone ;;
  }
  dimension: address_line1 {
    type: string
    description: "First line of customer's address"
    sql: ${TABLE}.address_line1 ;;
  }
  dimension: address_line2 {
    type: string
    description: "Second line of customer's address (if applicable)"
    sql: ${TABLE}.address_line2 ;;
  }
  dimension: average_order_frequency {
    type: number
    description: "Average frequency of orders (e.g., orders per month)"
    sql: ${TABLE}.average_order_frequency ;;
  }
  dimension: average_order_value {
    type: number
    description: "Average value of customer's orders"
    sql: ${TABLE}.average_order_value ;;
  }
  dimension: avg_cart_value_abandoned {
    type: number
    description: "Average value of abandoned carts"
    sql: ${TABLE}.avg_cart_value_abandoned ;;
  }
  dimension: campaign_id {
    type: number
    description: "ID of the campaign that acquired the customer"
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_response {
    type: string
    description: "Customer's response to the campaign"
    sql: ${TABLE}.campaign_response ;;
  }
  dimension: city {
    type: string
    description: "City of customer's address"
    sql: ${TABLE}.city ;;
  }
  dimension: complaint_resolution_rate {
    type: number
    description: "Percentage of complaints successfully resolved"
    sql: ${TABLE}.complaint_resolution_rate ;;
  }
  dimension: complaints_reported {
    type: number
    description: "Number of complaints filed by the customer"
    sql: ${TABLE}.complaints_reported ;;
  }
  dimension: country {
    hidden: no
    label: "Country"
    description: "The country where our customer resides. Great for geographical analysis and understanding our market reach."
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: credit_limit {
    type: number
    description: "Credit limit assigned to the customer (if applicable)"
    sql: ${TABLE}.credit_limit ;;
  }
  dimension: credit_score {
    type: number
    description: "Customer's credit score (if applicable)"
    sql: ${TABLE}.credit_score ;;
  }
  dimension: custom_attributes {
    type: string
    description: "Additional custom attributes stored as JSON"
    sql: ${TABLE}.custom_attributes ;;
  }
  dimension: customer_feedback_score {
    type: number
    description: "Average score from customer feedback"
    sql: ${TABLE}.customer_feedback_score ;;
  }
  dimension: customer_lifetime_value {
    type: number
    description: "Estimated lifetime value of the customer"
    sql: ${TABLE}.customer_lifetime_value ;;
  }
  dimension: customer_notes {
    type: string
    description: "Additional notes about the customer"
    sql: ${TABLE}.customer_notes ;;
  }
  dimension: customer_rating {
    type: number
    description: "Overall rating of the customer (e.g., based on behavior, spending)"
    sql: ${TABLE}.customer_rating ;;
  }
  dimension: customer_satisfaction_survey_score {
    type: number
    description: "Score from customer satisfaction surveys"
    sql: ${TABLE}.customer_satisfaction_survey_score ;;
  }
  dimension: customer_segment {
    hidden: no
    label: "Customer Segment"
    description: "The group or category this customer belongs to (e.g., 'High Value', 'New Customer'). Perfect for targeted marketing"
    type: string
    sql: ${TABLE}.customer_segment ;;
  }
  dimension: customer_type {
    hidden: no
    label: "Customer Type"
    description: "Classifies the customer (e.g., 'Retail', 'Wholesale', 'VIP'). Helps us understand how different customer groups engage with us."
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  dimension_group: date_of_birth {
    type: time
    description: "Customer's date of birth"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_birth ;;
  }
  dimension: default_billing_address {
    type: string
    description: "Customer's default billing address"
    sql: ${TABLE}.default_billing_address ;;
  }
  dimension: default_payment_gateway {
    type: string
    description: "Default payment gateway for the customer"
    sql: ${TABLE}.default_payment_gateway ;;
  }
  dimension: default_payment_method {
    type: string
    description: "Customer's default payment method"
    sql: ${TABLE}.default_payment_method ;;
  }
  dimension: default_shipping_address {
    type: string
    description: "Customer's default shipping address"
    sql: ${TABLE}.default_shipping_address ;;
  }
  dimension: discount_code_applied_count {
    type: number
    description: "Number of times discount codes were applied"
    sql: ${TABLE}.discount_code_applied_count ;;
  }
  dimension: email {
    type: string
    description: "Customer's email address"
    sql: ${TABLE}.email ;;
  }
  dimension: email_opt_in {
    type: yesno
    description: "Indicates if customer has opted in for email communications"
    sql: ${TABLE}.email_opt_in ;;
  }
  dimension: email_verification_status {
    type: yesno
    description: "Indicates if the customer's email has been verified"
    sql: ${TABLE}.email_verification_status ;;
  }
  dimension: first_name {
    type: string
    description: "Customer's first name"
    sql: ${TABLE}.first_name ;;
  }
  dimension_group: fraud_check {
    type: time
    description: "Date of the last fraud check"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fraud_check_date ;;
  }
  dimension: fraud_check_status {
    type: string
    description: "Status of fraud check (e.g., 'Cleared', 'Pending', 'Flagged')"
    sql: ${TABLE}.fraud_check_status ;;
  }
  dimension: fraud_flagged_by {
    type: string
    description: "Entity or person who flagged the account for fraud"
    sql: ${TABLE}.fraud_flagged_by ;;
  }
  dimension_group: fraud_resolution {
    type: time
    description: "Date when fraud issue was resolved (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fraud_resolution_date ;;
  }
  dimension: gender {
    type: string
    description: "Customer's gender"
    sql: ${TABLE}.gender ;;
  }
  dimension: has_active_subscription {
    type: yesno
    description: "Indicates if the customer has an active subscription"
    sql: ${TABLE}.has_active_subscription ;;
  }
  dimension: is_active {
    hidden: no
    label: "Is Active"
    description: "Is this customer's account currently active and able to place orders? 'Yes' means they're ready to shop."
    type: yesno
    sql: ${TABLE}.is_active ;;
  }
  dimension: is_deleted {
    type: yesno
    description: "Indicates if the customer account has been deleted"
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_fraudulent {
    hidden: no
    label: "Is Fraudulent"
    description: "Has this customer's account been flagged as fraudulent? 'Yes' means we suspect suspicious activity."
    type: yesno
    sql: ${TABLE}.is_fraudulent ;;
  }
  dimension: is_subscribed {
    type: yesno
    description: "Indicates if the customer has an active subscription"
    sql: ${TABLE}.is_subscribed ;;
  }
  dimension_group: last_login {
    type: time
    description: "Date of the customer's last login"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_login_date ;;
  }
  dimension: last_login_ip {
    type: string
    description: "IP address of the customer's last login"
    sql: ${TABLE}.last_login_ip ;;
  }
  dimension: last_name {
    type: string
    description: "Customer's last name"
    sql: ${TABLE}.last_name ;;
  }
  dimension: last_order_id {
    type: number
    description: "ID of the customer's last order"
    sql: ${TABLE}.last_order_id ;;
  }
  dimension_group: last_purchase {
    type: time
    description: "Date of the customer's most recent purchase"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_purchase_date ;;
  }
  dimension: loyalty_points {
    type: number
    description: "Number of loyalty points accumulated"
    sql: ${TABLE}.loyalty_points ;;
  }
  dimension: loyalty_points_earned {
    type: number
    description: "Number of loyalty points earned by the customer"
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_redeemed {
    type: number
    description: "Number of loyalty points redeemed by the customer"
    sql: ${TABLE}.loyalty_points_redeemed ;;
  }
  dimension: loyalty_tier {
    type: string
    description: "Customer's loyalty program tier"
    sql: ${TABLE}.loyalty_tier ;;
  }
  dimension: marketing_source {
    type: string
    description: "Source of marketing that acquired the customer"
    sql: ${TABLE}.marketing_source ;;
  }
  dimension: newsletter_opt_in {
    type: yesno
    description: "Indicates if the customer has opted in for newsletters"
    sql: ${TABLE}.newsletter_opt_in ;;
  }
  dimension_group: next_subscription_billing {
    type: time
    description: "Next billing date for the subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_subscription_billing_date ;;
  }
  dimension: number_of_abandoned_carts {
    type: number
    description: "Number of shopping carts abandoned by the customer"
    sql: ${TABLE}.number_of_abandoned_carts ;;
  }
  dimension: number_of_logins {
    type: number
    description: "Total number of times the customer has logged in"
    sql: ${TABLE}.number_of_logins ;;
  }
  dimension: number_of_support_tickets {
    type: number
    description: "Number of support tickets raised by the customer"
    sql: ${TABLE}.number_of_support_tickets ;;
  }
  dimension: payment_terms {
    type: string
    description: "Details of payment terms agreed by the customer"
    sql: ${TABLE}.payment_terms ;;
  }
  dimension: payment_terms_agreed {
    type: yesno
    description: "Indicates if the customer has agreed to payment terms"
    sql: ${TABLE}.payment_terms_agreed ;;
  }
  dimension: phone_number {
    type: string
    description: "Customer's phone number"
    sql: ${TABLE}.phone_number ;;
  }
  dimension: phone_verification_status {
    type: yesno
    description: "Indicates if the customer's phone number has been verified"
    sql: ${TABLE}.phone_verification_status ;;
  }
  dimension: postal_code {
    type: string
    description: "Postal or ZIP code of customer's address"
    sql: ${TABLE}.postal_code ;;
  }
  dimension: preferred_communication_channel {
    type: string
    description: "Customer's preferred method of communication"
    sql: ${TABLE}.preferred_communication_channel ;;
  }
  dimension: preferred_currency {
    hidden: no
    label: "Preferred Currency"
    description: "The currency this customer prefers to see prices and transact in (e.g., 'USD', 'EUR'). Essential for personalized experiences."
    type: string
    sql: ${TABLE}.preferred_currency ;;
  }
  dimension: preferred_language {
    type: string
    description: "Customer's preferred language for communication"
    sql: ${TABLE}.preferred_language ;;
  }
  dimension: preferred_payment_method {
    type: string
    description: "Customer's preferred method of payment"
    sql: ${TABLE}.preferred_payment_method ;;
  }
  dimension: preferred_shipping_carrier {
    type: string
    description: "Customer's preferred shipping carrier"
    sql: ${TABLE}.preferred_shipping_carrier ;;
  }
  dimension: preferred_shipping_method {
    type: string
    description: "Customer's preferred shipping method"
    sql: ${TABLE}.preferred_shipping_method ;;
  }
  dimension: referral_code {
    type: string
    description: "Referral code used by the customer (if applicable)"
    sql: ${TABLE}.referral_code ;;
  }
  dimension: referral_source {
    type: string
    description: "Source through which the customer was referred"
    sql: ${TABLE}.referral_source ;;
  }
  dimension: refunded_order_count {
    type: number
    description: "Number of orders refunded to the customer"
    sql: ${TABLE}.refunded_order_count ;;
  }
  dimension_group: registration {
    type: time
    description: "Date when the customer registered"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.registration_date ;;
  }
  dimension: return_rate {
    type: number
    description: "Percentage of orders returned by the customer"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: secondary_payment_method {
    type: string
    description: "Customer's secondary payment method"
    sql: ${TABLE}.secondary_payment_method ;;
  }
  dimension: secondary_shipping_address {
    type: string
    description: "Customer's secondary shipping address"
    sql: ${TABLE}.secondary_shipping_address ;;
  }
  dimension: sms_opt_in {
    type: yesno
    description: "Indicates if customer has opted in for SMS communications"
    sql: ${TABLE}.sms_opt_in ;;
  }
  dimension: social_media_profile {
    type: string
    description: "Links to customer's social media profiles"
    sql: ${TABLE}.social_media_profile ;;
  }
  dimension: state {
    type: string
    description: "State or province of customer's address"
    sql: ${TABLE}.state ;;
  }
  dimension_group: subscription_end {
    type: time
    description: "End date of the customer's subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_end_date ;;
  }
  dimension_group: subscription_start {
    type: time
    description: "Start date of the customer's subscription"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.subscription_start_date ;;
  }
  dimension: tax_exempt_status {
    type: yesno
    description: "Indicates if the customer is exempt from taxes"
    sql: ${TABLE}.tax_exempt_status ;;
  }
  dimension: tax_id {
    type: string
    description: "Customer's tax identification number (if applicable)"
    sql: ${TABLE}.tax_id ;;
  }
  dimension: total_orders {
    type: number
    description: "Total number of orders placed by the customer"
    sql: ${TABLE}.total_orders ;;
  }
  dimension: total_returns {
    type: number
    description: "Total number of returns made by the customer"
    sql: ${TABLE}.total_returns ;;
  }
  dimension: total_spent {
    type: number
    description: "Total amount spent by the customer"
    sql: ${TABLE}.total_spent ;;
  }
  dimension: total_spent_last_12_months {
    type: number
    description: "Total amount spent in the last 12 months"
    sql: ${TABLE}.total_spent_last_12_months ;;
  }
  dimension: vip_status {
    type: yesno
    description: "Indicates if the customer has VIP status"
    sql: ${TABLE}.vip_status ;;
  }
  dimension: wishlist_count {
    type: number
    description: "Number of items in the customer's wishlist"
    sql: ${TABLE}.wishlist_count ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: number_of_customers {
    hidden: no
    label: "Number of Customers"
    description: "The total count of all unique customers. A customer is a user who makes a purchase."
    type: count_distinct
    sql: ${customer_id} ;;
    value_format_name: decimal_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_id,
      first_name,
      last_name,
      campaigns.campaign_id,
      campaigns.campaign_name,
      addresses.count,
      customer_journey_analytics.count,
      customer_feedback.count,
      customer_loyalty_program.count,
      customer_profile.count,
      customer_segments.count,
      financial_reports.count,
      invoices.count,
      inventory_movements.count,
      orders.count,
      payment_details.count,
      product_recommendations.count,
      product_reviews.count,
      refunds.count,
      sales.count,
      sales_transaction.count,
      transactions.count
    ]
  }

}