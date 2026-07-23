view: sales_channels {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.SalesChannels` ;;

  dimension: access_token {
    type: string
    description: "Access token for API authentication"
    sql: ${TABLE}.access_token ;;
  }
  dimension: active {
    type: yesno
    description: "Indicates if the sales channel is currently active"
    sql: ${TABLE}.active ;;
  }
  dimension: affiliate_commission_rate {
    type: number
    description: "Commission rate for affiliate marketing (in percentage)"
    sql: ${TABLE}.affiliate_commission_rate ;;
  }
  dimension: affiliate_marketing_program {
    type: yesno
    description: "Indicates if an affiliate marketing program is available"
    sql: ${TABLE}.affiliate_marketing_program ;;
  }
  dimension: analytics_integration {
    type: yesno
    description: "Indicates if analytics tools are integrated"
    sql: ${TABLE}.analytics_integration ;;
  }
  dimension: api_endpoint_url {
    type: string
    description: "URL of the API endpoint"
    sql: ${TABLE}.api_endpoint_url ;;
  }
  dimension: api_integration {
    type: yesno
    description: "Indicates if the sales channel has API integration"
    sql: ${TABLE}.api_integration ;;
  }
  dimension: api_key {
    type: string
    description: "API key for accessing the sales channel's API"
    sql: ${TABLE}.api_key ;;
  }
  dimension: average_monthly_sales {
    type: number
    description: "Average monthly sales amount"
    sql: ${TABLE}.average_monthly_sales ;;
  }
  dimension: average_review_score {
    type: number
    description: "Average customer review score"
    sql: ${TABLE}.average_review_score ;;
  }
  dimension: campaign_tracking {
    type: yesno
    description: "Indicates if marketing campaign tracking is available"
    sql: ${TABLE}.campaign_tracking ;;
  }
  dimension: channel_id {
    type: number
    description: "Unique identifier for each sales channel"
    sql: ${TABLE}.channel_id ;;
  }
  dimension: channel_name {
    type: string
    description: "Name of the sales channel (e.g., 'E-commerce', 'In-store', 'Third-party platform')"
    sql: ${TABLE}.channel_name ;;
  }
  dimension: channel_type {
    type: string
    description: "Type of the sales channel (e.g., 'Online', 'Offline', 'Marketplace')"
    sql: ${TABLE}.channel_type ;;
  }
  dimension: commission_rate {
    type: number
    description: "Commission rate charged by third-party platforms (in percentage)"
    sql: ${TABLE}.commission_rate ;;
  }
  dimension: configuration_settings {
    type: string
    description: "JSON or Text format for specific configurations of the sales channel"
    sql: ${TABLE}.configuration_settings ;;
  }
  dimension: currency_supported {
    type: string
    description: "Currency used for transactions (e.g., 'USD', 'EUR')"
    sql: ${TABLE}.currency_supported ;;
  }
  dimension: custom_pricing_rules {
    type: yesno
    description: "Indicates if custom pricing rules can be set"
    sql: ${TABLE}.custom_pricing_rules ;;
  }
  dimension: customer_data_tracking {
    type: yesno
    description: "Indicates if customer data tracking is enabled"
    sql: ${TABLE}.customer_data_tracking ;;
  }
  dimension: customer_loyalty_program {
    type: yesno
    description: "Indicates if a customer loyalty program is offered"
    sql: ${TABLE}.customer_loyalty_program ;;
  }
  dimension: customer_reviews_enabled {
    type: yesno
    description: "Indicates if customer reviews are enabled"
    sql: ${TABLE}.customer_reviews_enabled ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Customer satisfaction score for the sales channel"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension: data_privacy_compliance {
    type: yesno
    description: "Indicates compliance with data privacy regulations"
    sql: ${TABLE}.data_privacy_compliance ;;
  }
  dimension: dispute_resolution_service {
    type: yesno
    description: "Indicates if dispute resolution services are available"
    sql: ${TABLE}.dispute_resolution_service ;;
  }
  dimension: email_marketing_integration {
    type: yesno
    description: "Indicates if email marketing is integrated"
    sql: ${TABLE}.email_marketing_integration ;;
  }
  dimension: fraud_detection {
    type: yesno
    description: "Indicates if fraud detection measures are in place"
    sql: ${TABLE}.fraud_detection ;;
  }
  dimension: fraud_prevention_policy {
    type: string
    description: "Description of the fraud prevention policy"
    sql: ${TABLE}.fraud_prevention_policy ;;
  }
  dimension: gdpr_compliance {
    type: yesno
    description: "Indicates compliance with GDPR"
    sql: ${TABLE}.gdpr_compliance ;;
  }
  dimension_group: last_payout {
    type: time
    description: "Date of the last payout received"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_payout_date ;;
  }
  dimension: lead_time {
    type: number
    description: "Time from order placement to fulfillment (in days)"
    sql: ${TABLE}.lead_time ;;
  }
  dimension: listing_fee {
    type: number
    description: "Fee for listing products (applicable for marketplaces like eBay)"
    sql: ${TABLE}.listing_fee ;;
  }
  dimension: manager_contact_email {
    type: string
    description: "Contact email of the sales channel manager"
    sql: ${TABLE}.manager_contact_email ;;
  }
  dimension: manager_contact_phone {
    type: string
    description: "Contact phone number of the sales channel manager"
    sql: ${TABLE}.manager_contact_phone ;;
  }
  dimension: marketplace_category {
    type: string
    description: "Category of products sold (e.g., 'Electronics', 'Fashion')"
    sql: ${TABLE}.marketplace_category ;;
  }
  dimension: multi_currency_support {
    type: yesno
    description: "Indicates if multiple currencies are supported"
    sql: ${TABLE}.multi_currency_support ;;
  }
  dimension: multi_language_support {
    type: yesno
    description: "Indicates if multiple languages are supported"
    sql: ${TABLE}.multi_language_support ;;
  }
  dimension_group: next_payout {
    type: time
    description: "Expected date of the next payout"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_payout_date ;;
  }
  dimension: order_tracking_enabled {
    type: yesno
    description: "Indicates if order tracking is available"
    sql: ${TABLE}.order_tracking_enabled ;;
  }
  dimension: payment_gateway {
    type: string
    description: "Name of the payment gateway used"
    sql: ${TABLE}.payment_gateway ;;
  }
  dimension: payment_processing_time {
    type: number
    description: "Time taken to process payments (in days)"
    sql: ${TABLE}.payment_processing_time ;;
  }
  dimension: payout_frequency {
    type: string
    description: "Frequency of payouts (e.g., 'Daily', 'Weekly', 'Monthly')"
    sql: ${TABLE}.payout_frequency ;;
  }
  dimension: payout_method {
    type: string
    description: "Method used for payouts (e.g., 'Bank Transfer', 'PayPal')"
    sql: ${TABLE}.payout_method ;;
  }
  dimension: payout_threshold {
    type: number
    description: "Minimum amount required for payout"
    sql: ${TABLE}.payout_threshold ;;
  }
  dimension: platform_name {
    type: string
    description: "Name of the third-party platform, if applicable (e.g., 'Amazon', 'eBay', 'Shopify')"
    sql: ${TABLE}.platform_name ;;
  }
  dimension: pricing_strategy {
    type: string
    description: "Pricing strategy used (e.g., 'Fixed', 'Dynamic', 'Discounted')"
    sql: ${TABLE}.pricing_strategy ;;
  }
  dimension: product_listing_count {
    type: number
    description: "Number of products listed on the sales channel"
    sql: ${TABLE}.product_listing_count ;;
  }
  dimension: promotional_tools_available {
    type: yesno
    description: "Indicates if promotional tools are available"
    sql: ${TABLE}.promotional_tools_available ;;
  }
  dimension: refund_policy {
    type: string
    description: "Description of the refund policy"
    sql: ${TABLE}.refund_policy ;;
  }
  dimension: report_frequency {
    type: string
    description: "Frequency of report generation (e.g., 'Daily', 'Weekly', 'Monthly')"
    sql: ${TABLE}.report_frequency ;;
  }
  dimension: return_handling_time {
    type: number
    description: "Time taken to process returns (in days)"
    sql: ${TABLE}.return_handling_time ;;
  }
  dimension: return_management_system {
    type: yesno
    description: "Indicates if a return management system is in place"
    sql: ${TABLE}.return_management_system ;;
  }
  dimension: return_policy {
    type: string
    description: "Description of the return policy"
    sql: ${TABLE}.return_policy ;;
  }
  dimension: review_moderation_policy {
    type: string
    description: "Description of the review moderation policy"
    sql: ${TABLE}.review_moderation_policy ;;
  }
  dimension: sales_channel_code {
    type: string
    description: "Internal code used to identify the sales channel"
    sql: ${TABLE}.sales_channel_code ;;
  }
  dimension: sales_channel_manager {
    type: string
    description: "Name of the person managing the sales channel"
    sql: ${TABLE}.sales_channel_manager ;;
  }
  dimension: sales_channel_notes {
    type: string
    description: "Additional notes or comments about the sales channel"
    sql: ${TABLE}.sales_channel_notes ;;
  }
  dimension: sales_channel_performance_score {
    type: number
    description: "Overall performance score of the sales channel"
    sql: ${TABLE}.sales_channel_performance_score ;;
  }
  dimension: sales_growth_rate {
    type: number
    description: "Sales growth rate (in percentage)"
    sql: ${TABLE}.sales_growth_rate ;;
  }
  dimension: sales_report_generation {
    type: yesno
    description: "Indicates if sales reports can be generated"
    sql: ${TABLE}.sales_report_generation ;;
  }
  dimension: seller_protection_plan {
    type: yesno
    description: "Indicates if a seller protection plan is offered"
    sql: ${TABLE}.seller_protection_plan ;;
  }
  dimension: setup_fee {
    type: number
    description: "One-time setup fee for the sales channel"
    sql: ${TABLE}.setup_fee ;;
  }
  dimension: shipping_discount {
    type: number
    description: "Discount offered for shipping through the platform (in percentage)"
    sql: ${TABLE}.shipping_discount ;;
  }
  dimension: shipping_fee {
    type: number
    description: "Standard shipping fee"
    sql: ${TABLE}.shipping_fee ;;
  }
  dimension: shipping_integration {
    type: yesno
    description: "Indicates if shipping services are integrated"
    sql: ${TABLE}.shipping_integration ;;
  }
  dimension: shipping_provider {
    type: string
    description: "Name of the shipping provider"
    sql: ${TABLE}.shipping_provider ;;
  }
  dimension: social_media_integration {
    type: yesno
    description: "Indicates if social media platforms are integrated"
    sql: ${TABLE}.social_media_integration ;;
  }
  dimension: subscription_fee {
    type: number
    description: "Recurring subscription fee (e.g., monthly or yearly)"
    sql: ${TABLE}.subscription_fee ;;
  }
  dimension: support_contact {
    type: string
    description: "Name of the support contact person"
    sql: ${TABLE}.support_contact ;;
  }
  dimension: support_email {
    type: string
    description: "Support email address"
    sql: ${TABLE}.support_email ;;
  }
  dimension: support_phone {
    type: string
    description: "Support phone number"
    sql: ${TABLE}.support_phone ;;
  }
  dimension: tax_handling_fee {
    type: number
    description: "Fee for tax handling services"
    sql: ${TABLE}.tax_handling_fee ;;
  }
  dimension: tax_integration {
    type: yesno
    description: "Indicates if tax calculation is integrated"
    sql: ${TABLE}.tax_integration ;;
  }
  dimension: transaction_fee {
    type: number
    description: "Fee charged per transaction"
    sql: ${TABLE}.transaction_fee ;;
  }
  dimension: website_url {
    type: string
    description: "URL of the sales channel's website"
    sql: ${TABLE}.website_url ;;
  }
  measure: count {
    type: count
    drill_fields: [platform_name, channel_name]
  }
}