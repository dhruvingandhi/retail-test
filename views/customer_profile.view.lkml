view: customer_profile {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.CustomerProfile` ;;

  fields_hidden_by_default: yes

  dimension: customer_id {
    primary_key: yes
    label: "Customer ID"
    description: "Unique identifier for each customer"
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: abandoned_cart_count {
    type: number
    description: "Number of abandoned shopping carts"
    sql: ${TABLE}.abandoned_cart_count ;;
  }
  dimension: account_status {
    hidden: no
    type: string
    label: "Account Status"
    description: "Current status of the customer account (e.g., 'Active')"
    sql: ${TABLE}.account_status ;;
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
  dimension: average_order_value {
    type: number
    description: "Average value of customer's orders"
    sql: ${TABLE}.average_order_value ;;
  }
  dimension: city {
    hidden: no
    type: string
    label: "City"
    group_label: "Location"
    description: "City of customer's address"
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    hidden: no
    type: string
    label: "Country"
    group_label: "Location"
    description: "Country of customer's address"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of record creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: credit_limit {
    hidden: no
    type: number
    label: "Credit Limit"
    description: "Credit limit assigned to the customer (if applicable)"
    sql: ${TABLE}.credit_limit ;;
  }
  dimension: customer_segment {
    type: string
    description: "Customer segment or category"
    sql: ${TABLE}.customer_segment ;;
  }
  dimension_group: date_of_birth {
    type: time
    description: "Customer's date of birth"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_birth ;;
  }
  dimension: email {
    type: string
    description: "Customer's email address (unique)"
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    description: "Customer's first name"
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    hidden: no
    type: string
    label: "Gender"
    description: "Customer's gender"
    sql: ${TABLE}.gender ;;
  }
  dimension: language_preference {
    hidden: no
    type: string
    label: "Language Preference"
    description: "Customer's preferred language"
    sql: ${TABLE}.language_preference ;;
  }
  dimension_group: last_login {
    hidden: no
    type: time
    label: "Last Login"
    description: "Timestamp of customer's last login"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_login_date ;;
  }
  dimension: last_name {
    type: string
    description: "Customer's last name"
    sql: ${TABLE}.last_name ;;
  }
  dimension_group: last_purchase {
    type: time
    description: "Date of customer's last purchase"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_purchase_date ;;
  }
  dimension: lifetime_value {
    type: number
    description: "Total lifetime value of the customer"
    sql: ${TABLE}.lifetime_value ;;
  }
  dimension: loyalty_points {
    type: number
    description: "Current loyalty points balance"
    sql: ${TABLE}.loyalty_points ;;
  }
  dimension: loyalty_program_id {
    type: number
    description: "ID of the loyalty program the customer is enrolled in"
    sql: ${TABLE}.loyalty_program_id ;;
  }
  dimension: marketing_opt_in {
    type: yesno
    description: "Indicates if customer has opted in for marketing communications"
    sql: ${TABLE}.marketing_opt_in ;;
  }
  dimension: mobile_app_visits {
    type: number
    description: "Number of visits to the mobile app"
    sql: ${TABLE}.mobile_app_visits ;;
  }
  dimension: newsletter_subscribed {
    type: yesno
    description: "Indicates if customer is subscribed to newsletter"
    sql: ${TABLE}.newsletter_subscribed ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes about the customer"
    sql: ${TABLE}.notes ;;
  }
  dimension: phone_number {
    type: string
    description: "Customer's phone number"
    sql: ${TABLE}.phone_number ;;
  }
  dimension: postal_code {
    hidden: no
    type: string
    label: "Postal Code"
    group_label: "Location"
    description: "Postal or ZIP code of customer's address"
    sql: ${TABLE}.postal_code ;;
  }
  dimension: preferred_category {
    hidden: no
    type: string
    label: "Preferred Category"
    group_label: "Preferences"
    description: "Customer's preferred product category"
    sql: ${TABLE}.preferred_category ;;
  }
  dimension: preferred_payment_method {
    hidden: no
    type: string
    label: "Preferred Payment Method"
    group_label: "Preferences"
    description: "Customer's preferred payment method"
    sql: ${TABLE}.preferred_payment_method ;;
  }
  dimension: preferred_shipping_method {
    hidden: no
    type: string
    label: "Preferred Shipping Method"
    group_label: "Preferences"
    description: "Customer's preferred shipping method"
    sql: ${TABLE}.preferred_shipping_method ;;
  }
  dimension: product_reviews_count {
    hidden: no
    type: number
    label: "Product Reviews Count"
    description: "Number of product reviews submitted by the customer"
    sql: ${TABLE}.product_reviews_count ;;
  }
  dimension: referral_source {
    hidden: yes
    label: "Referral Source"
    description: "Source of customer referral"
    type: string
    sql: ${TABLE}.referral_source ;;
  }
  dimension_group: registration {
    hidden: no
    type: time
    label: "Registration"
    description: "Date when the customer registered"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.registration_date ;;
  }
  dimension: social_media_connected {
    hidden: no
    type: yesno
    label: "Social Media Connected"
    description: "Indicates if customer's social media accounts are connected"
    sql: ${TABLE}.social_media_connected ;;
  }
  dimension: state {
    hidden: no
    type: string
    label: "State"
    group_label: "Location"
    description: "State or province of customer's address"
    sql: ${TABLE}.state ;;
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
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: website_visits {
    type: number
    description: "Number of visits to the website"
    sql: ${TABLE}.website_visits ;;
  }
  dimension: wishlist_count {
    type: number
    description: "Number of items in customer's wishlist"
    sql: ${TABLE}.wishlist_count ;;
  }
  measure: total_lifetime_value {
    hidden: no
    label: "Customer Lifetime Value"
    description: "Sum of lifetime value for each customer"
    type: sum
    sql: ${lifetime_value} ;;
    value_format_name: usd
  }
}