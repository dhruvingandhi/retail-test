view: customer_journey_analytics {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.CustomerJourneyAnalytics` ;;

  fields_hidden_by_default: yes

  dimension: journey_id {
    primary_key: yes
    label: "Journey ID"
    description: "Unique identifier for each customer journey interaction"
    type: number
    sql: ${TABLE}.journey_id ;;
  }
  dimension: ab_test_variant {
    type: string
    description: "A/B test variant experienced by the customer"
    sql: ${TABLE}.ab_test_variant ;;
  }
  dimension: browser {
    type: string
    description: "Web browser used (if applicable)"
    sql: ${TABLE}.browser ;;
  }
  dimension: cart_abandonment {
    type: yesno
    description: "Indicates if the cart was abandoned"
    sql: ${TABLE}.cart_abandonment ;;
  }
  dimension: cart_additions {
    type: number
    description: "Number of items added to cart"
    sql: ${TABLE}.cart_additions ;;
  }
  dimension: cart_removals {
    type: number
    description: "Number of items removed from cart"
    sql: ${TABLE}.cart_removals ;;
  }
  dimension: category_views {
    type: string
    description: "List of categories viewed"
    sql: ${TABLE}.category_views ;;
  }
  dimension: channel {
    hidden: no
    label: "Channel"
    description: "Channel of interaction (e.g., 'Web', 'Mobile App', 'In-store')"
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: chat_interactions {
    type: string
    description: "Details of chat interactions"
    sql: ${TABLE}.chat_interactions ;;
  }
  dimension: churn_risk_score {
    label: "Churn Risk Score"
    description: "Calculated risk of customer churn"
    type: number
    sql: ${TABLE}.churn_risk_score ;;
  }
  dimension: click_through_rate {
    type: number
    description: "Click-through rate for email or ad interactions"
    sql: ${TABLE}.click_through_rate ;;
  }
  dimension: conversion_type {
    hidden: no
    label: "Conversion Type"
    description: "Type of conversion if any (e.g., 'Purchase', 'Sign-up')"
    type: string
    sql: ${TABLE}.conversion_type ;;
  }
  dimension: conversion_value {
    label: "Conversion Value"
    type: number
    description: "Monetary value of the conversion (if applicable)"
    sql: ${TABLE}.conversion_value ;;
  }
  dimension: coupon_used {
    type: string
    description: "Coupon code used (if any)"
    sql: ${TABLE}.coupon_used ;;
  }
  dimension_group: created {
    hidden: no
    label: "Created"
    description: "Timestamp when the record was created"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer (Foreign key to CustomerProfile table)"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_lifetime_value {
    hidden: yes
    label: "Customer Lifetime Value"
    description: "Calculated lifetime value of the customer"
    type: number
    sql: ${TABLE}.customer_lifetime_value ;;
  }
  dimension: days_since_last_purchase {
    label: "Days Since Last Purchase"
    description: "Days elapsed since the customer's last purchase"
    type: number
    sql: ${TABLE}.days_since_last_purchase ;;
  }
  dimension: device_type {
    type: string
    description: "Type of device used (e.g., 'Desktop', 'Smartphone', 'Tablet')"
    sql: ${TABLE}.device_type ;;
  }
  dimension: email_interactions {
    type: string
    description: "Type of email interaction (e.g., 'Opened', 'Clicked')"
    sql: ${TABLE}.email_interactions ;;
  }
  dimension: exit_page {
    type: string
    description: "Last page visited before leaving the site"
    sql: ${TABLE}.exit_page ;;
  }
  dimension: feedback_score {
    hidden: no
    label: "Feedback Score"
    description: "Customer feedback score (if provided)"
    type: number
    sql: ${TABLE}.feedback_score ;;
  }
  dimension: geo_location {
    type: string
    description: "Geographic location of the customer during interaction"
    sql: ${TABLE}.geo_location ;;
  }
  dimension_group: interaction {
    type: time
    description: "Date and time of the interaction"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.interaction_date ;;
  }
  dimension: ip_address {
    type: string
    description: "IP address of the customer during interaction"
    sql: ${TABLE}.ip_address ;;
  }

  dimension: journey_stage {
    type: string
    description: "Current stage in the customer journey"
    sql: ${TABLE}.journey_stage ;;
  }
  dimension: landing_page {
    hidden: no
    label: "Landing Page"
    description: "First page visited in the session"
    type: string
    sql: ${TABLE}.landing_page ;;

  }
  dimension: loyalty_points_earned {
    label: "Loyalty Points Earned"
    description: "Loyalty points earned from the interaction"
    type: number
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_redeemed {
    label: "Loyalty Points Redeemed"
    description: "Loyalty points redeemed during the interaction"
    type: number
    sql: ${TABLE}.loyalty_points_redeemed ;;
  }
  dimension: next_best_action {
    type: string
    description: "Suggested next best action for the customer"
    sql: ${TABLE}.next_best_action ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes or observations"
    sql: ${TABLE}.notes ;;
  }
  dimension: nps_score {
    type: number
    description: "Net Promoter Score (if collected)"
    sql: ${TABLE}.nps_score ;;
  }
  dimension: os_platform {
    type: string
    description: "Operating system of the device"
    sql: ${TABLE}.os_platform ;;
  }
  dimension: page_views {
    label: "Page Views"
    description: "Number of pages viewed during the session"
    type: number
    sql: ${TABLE}.page_views ;;
  }
  dimension: personalization_variant {
    type: string
    description: "Personalization variant shown to the customer"
    sql: ${TABLE}.personalization_variant ;;
  }
  dimension: product_views {
    type: string
    description: "List of products viewed"
    sql: ${TABLE}.product_views ;;
  }
  dimension: promotion_id {
    type: number
    description: "ID of any promotion applied (Foreign key to Promotions table)"
    sql: ${TABLE}.promotion_id ;;
  }
  dimension: referral_source {
    hidden: no
    label: "Referral Source"
    description: "Source that referred the customer (e.g., 'Google', 'Facebook Ad')"
    type: string
    sql: ${TABLE}.referral_source ;;
  }
  dimension: scroll_depth {
    type: number
    description: "Percentage of page scrolled (for web interactions)"
    sql: ${TABLE}.scroll_depth ;;
  }
  dimension: search_terms {
    type: string
    description: "Search terms used by the customer"
    sql: ${TABLE}.search_terms ;;
  }
  dimension: segmentation_label {
    type: string
    description: "Customer segment label"
    sql: ${TABLE}.segmentation_label ;;
  }
  dimension: sentiment_analysis {
    type: string
    description: "Result of sentiment analysis (e.g., 'Positive', 'Negative')"
    sql: ${TABLE}.sentiment_analysis ;;
  }
  dimension: session_id {
    type: string
    description: "Unique identifier for the customer's session"
    sql: ${TABLE}.session_id ;;
  }
  dimension: support_ticket_id {
    type: string
    description: "ID of any associated support ticket"
    sql: ${TABLE}.support_ticket_id ;;
  }
  dimension: time_spent {
    hidden: no
    label: "Time Spent"
    description: "Time spent during the interaction (in seconds)"
    type: number
    sql: ${TABLE}.time_spent ;;
  }
  dimension: touchpoint_type {
    type: string
    description: "Type of interaction (e.g., 'Website Visit', 'Email Open', 'Purchase')"
    sql: ${TABLE}.touchpoint_type ;;
  }
  dimension: touchpoints_to_conversion {
    hidden: no
    label: "Touchpoints to Conversion"
    description: "Number of touchpoints before conversion"
    type: number
    sql: ${TABLE}.touchpoints_to_conversion ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: wishlist_additions {
    type: number
    description: "Number of items added to wishlist"
    sql: ${TABLE}.wishlist_additions ;;
  }
  measure: average_churn_risk_score {
    hidden: no
    label: "Churn Risk Score"
    description: "The average churn risk score"
    type: average
    sql: ${churn_risk_score} ;;
    value_format_name: decimal_1
  }
  measure: average_conversion_value {
    hidden: no
    label: "Average Conversion Value"
    description: "The average monetary value of conversion events"
    type: average
    sql: ${conversion_value} ;;
    value_format_name: usd
  }
  measure: average_days_since_last_purchase {
    hidden: no
    label: "Average Days Since Last Purchase"
    description: "The average number of days since the last purchase"
    type: average
    sql: ${days_since_last_purchase} ;;
    value_format_name: decimal_1
  }
  measure: average_touchpoints_to_conversion {
    hidden: no
    label: "Average Touchpoints to Conversion"
    description: "The average number of interactions it takes for a customer to convert"
    type: average
    sql: ${touchpoints_to_conversion} ;;
  }
  measure: conversion_rate {
    hidden: no
    label: "Conversion Rate"
    description: "The percentage of customer journeys that resulted in a conversion"
    type: number
    sql: SAFE_DIVIDE(${total_conversions},${total_journeys}) ;;
    value_format_name: percent_2
  }
  measure: total_conversions {
    hidden: no
    label: "Total Number of Conversions"
    description: "The total count of unique customer journeys that ended in a conversion event"
    type: count_distinct
    sql: ${journey_id} ;;
    filters: [conversion_type: "-NULL"]
  }
  measure: total_customers {
    hidden: no
    label: "Total Number of Customers"
    description: "The total number of customers"
    type: count_distinct
    sql: ${customer_id} ;;
  }
  measure: total_journeys {
    hidden: no
    label: "Total Number of Journeys"
    description: "The total count of unique customer journeys"
    type: count_distinct
    sql: ${journey_id} ;;
  }
  measure: total_loyalty_points_earned {
    hidden: no
    label: "Total Loyalty Points Earned"
    description: "The total number of loyalty points earned by customers"
    type: sum
    sql: ${loyalty_points_earned} ;;
  }
  measure: total_loyalty_points_redeemed {
    hidden: no
    label: "Total Loyalty Points Redeemed"
    description: "The total number of loyalty points redeemed by customers"
    type: sum
    sql: ${loyalty_points_redeemed};;
  }
  measure: total_page_views {
    hidden: no
    label: "Total Page Views"
    description: "The total number of pages viewed during the session"
    type: sum
    sql: ${page_views} ;;
  }
}