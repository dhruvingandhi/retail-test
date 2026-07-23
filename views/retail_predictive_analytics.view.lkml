view: retail_predictive_analytics {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.RetailPredictiveAnalytics` ;;

  dimension: average_transaction_value_forecast {
    type: number
    description: "Predicted average transaction value"
    sql: ${TABLE}.average_transaction_value_forecast ;;
  }
  dimension: brand_equity_score_forecast {
    type: number
    description: "Predicted brand equity score"
    sql: ${TABLE}.brand_equity_score_forecast ;;
  }
  dimension: campaign_response_probability {
    type: number
    description: "Predicted probability of positive response to marketing campaigns"
    sql: ${TABLE}.campaign_response_probability ;;
  }
  dimension: cash_flow_forecast {
    type: number
    description: "Predicted cash flow"
    sql: ${TABLE}.cash_flow_forecast ;;
  }
  dimension: category_id {
    type: number
    description: "ID of the product category (NULL for product or store-level predictions) (Foreign key to Categories table)"
    sql: ${TABLE}.category_id ;;
  }
  dimension: churn_risk_score {
    type: number
    description: "Predicted risk of customer churn"
    sql: ${TABLE}.churn_risk_score ;;
  }
  dimension: competitor_price_forecast {
    type: number
    description: "Forecasted competitor pricing"
    sql: ${TABLE}.competitor_price_forecast ;;
  }
  dimension: confidence_score {
    type: number
    description: "Confidence score of the prediction"
    sql: ${TABLE}.confidence_score ;;
  }
  dimension: conversion_rate_forecast {
    type: number
    description: "Forecasted conversion rate"
    sql: ${TABLE}.conversion_rate_forecast ;;
  }
  dimension: customer_acquisition_cost_forecast {
    type: number
    description: "Forecasted cost to acquire new customers"
    sql: ${TABLE}.customer_acquisition_cost_forecast ;;
  }
  dimension: customer_lifetime_value_forecast {
    type: number
    description: "Forecasted customer lifetime value"
    sql: ${TABLE}.customer_lifetime_value_forecast ;;
  }
  dimension: customer_retention_rate_forecast {
    type: number
    description: "Predicted customer retention rate"
    sql: ${TABLE}.customer_retention_rate_forecast ;;
  }
  dimension: customer_segment_growth_forecast {
    type: string
    description: "Forecasted growth rates for different customer segments"
    sql: ${TABLE}.customer_segment_growth_forecast ;;
  }
  dimension: demand_forecast {
    type: number
    description: "Predicted demand in units"
    sql: ${TABLE}.demand_forecast ;;
  }
  dimension: employee_turnover_risk {
    type: number
    description: "Predicted risk of employee turnover"
    sql: ${TABLE}.employee_turnover_risk ;;
  }
  dimension: foot_traffic_forecast {
    type: number
    description: "Predicted foot traffic in physical stores"
    sql: ${TABLE}.foot_traffic_forecast ;;
  }
  dimension_group: forecast {
    type: time
    description: "Date for which the prediction is made"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.forecast_date ;;
  }
  dimension: forecast_horizon {
    type: string
    description: "Time frame of the forecast (e.g., 'Daily', 'Weekly', 'Monthly')"
    sql: ${TABLE}.forecast_horizon ;;
  }
  dimension: market_share_forecast {
    type: number
    description: "Predicted market share"
    sql: ${TABLE}.market_share_forecast ;;
  }
  dimension: model_version {
    type: string
    description: "Version of the predictive model used"
    sql: ${TABLE}.model_version ;;
  }
  dimension: net_promoter_score_forecast {
    type: number
    description: "Forecasted Net Promoter Score"
    sql: ${TABLE}.net_promoter_score_forecast ;;
  }
  dimension: next_purchase_amount {
    type: number
    description: "Predicted amount of next purchase"
    sql: ${TABLE}.next_purchase_amount ;;
  }
  dimension_group: next_purchase {
    type: time
    description: "Predicted date of next purchase (for customer-level predictions)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_purchase_date ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes or context for the predictions"
    sql: ${TABLE}.notes ;;
  }
  dimension: online_vs_instore_sales_ratio_forecast {
    type: number
    description: "Predicted ratio of online to in-store sales"
    sql: ${TABLE}.online_vs_instore_sales_ratio_forecast ;;
  }
  dimension: optimal_inventory_level {
    type: number
    description: "Predicted optimal inventory level"
    sql: ${TABLE}.optimal_inventory_level ;;
  }
  dimension: optimal_price {
    type: number
    description: "Predicted optimal price point"
    sql: ${TABLE}.optimal_price ;;
  }
  dimension: overstock_probability {
    type: number
    description: "Probability of overstock occurring"
    sql: ${TABLE}.overstock_probability ;;
  }
  dimension: predicted_margin {
    type: number
    description: "Predicted profit margin as a percentage"
    sql: ${TABLE}.predicted_margin ;;
  }
  dimension: prediction_id {
    type: number
    description: "Unique identifier for each prediction record"
    sql: ${TABLE}.prediction_id ;;
  }
  dimension_group: prediction_timestamp {
    type: time
    description: "Timestamp when the prediction was generated"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.prediction_timestamp ;;
  }
  dimension: price_elasticity {
    type: number
    description: "Predicted price elasticity of demand"
    sql: ${TABLE}.price_elasticity ;;
  }
  dimension: product_affinity_scores {
    type: string
    description: "Predicted product affinity scores (which products are often bought together)"
    sql: ${TABLE}.product_affinity_scores ;;
  }
  dimension: product_id {
    type: number
    description: "ID of the product (NULL for category or store-level predictions) (Foreign key to Products table)"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: promotion_effectiveness_score {
    type: number
    description: "Predicted effectiveness of promotions"
    sql: ${TABLE}.promotion_effectiveness_score ;;
  }
  dimension: recommended_products {
    type: string
    description: "List of recommended products based on predictive analysis"
    sql: ${TABLE}.recommended_products ;;
  }
  dimension: recommended_reorder_quantity {
    type: number
    description: "Recommended quantity to reorder"
    sql: ${TABLE}.recommended_reorder_quantity ;;
  }
  dimension: return_rate_forecast {
    type: number
    description: "Predicted product return rate"
    sql: ${TABLE}.return_rate_forecast ;;
  }
  dimension: sales_forecast {
    type: number
    description: "Predicted sales amount"
    sql: ${TABLE}.sales_forecast ;;
  }
  dimension: sales_forecast_lower_bound {
    type: number
    description: "Lower bound of the sales forecast (for confidence interval)"
    sql: ${TABLE}.sales_forecast_lower_bound ;;
  }
  dimension: sales_forecast_upper_bound {
    type: number
    description: "Upper bound of the sales forecast (for confidence interval)"
    sql: ${TABLE}.sales_forecast_upper_bound ;;
  }
  dimension: seasonality_index {
    type: number
    description: "Predicted seasonality impact"
    sql: ${TABLE}.seasonality_index ;;
  }
  dimension: social_media_sentiment_forecast {
    type: number
    description: "Forecasted social media sentiment"
    sql: ${TABLE}.social_media_sentiment_forecast ;;
  }
  dimension: stock_market_impact_forecast {
    type: number
    description: "Predicted impact of stock market trends on sales"
    sql: ${TABLE}.stock_market_impact_forecast ;;
  }
  dimension: stock_out_probability {
    type: number
    description: "Probability of stock-out occurring"
    sql: ${TABLE}.stock_out_probability ;;
  }
  dimension: store_id {
    type: number
    description: "ID of the store (NULL for company-wide predictions) (Foreign key to Stores table)"
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }
  dimension: supplier_reliability_score {
    type: number
    description: "Predicted reliability score for suppliers"
    sql: ${TABLE}.supplier_reliability_score ;;
  }
  dimension: trend_forecast {
    type: string
    description: "Textual description of predicted trends"
    sql: ${TABLE}.trend_forecast ;;
  }
  dimension: weather_impact_forecast {
    type: number
    description: "Predicted impact of weather on sales"
    sql: ${TABLE}.weather_impact_forecast ;;
  }
  measure: count {
    type: count
    drill_fields: [products.product_id, products.product_name, stores.store_id, stores.store_name]
  }
}