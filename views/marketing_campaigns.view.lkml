view: marketing_campaigns {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.MarketingCampaigns` ;;

  dimension: actual_cost {
    type: number
    description: "Actual cost incurred for the campaign"
    sql: ${TABLE}.actual_cost ;;
  }
  dimension_group: approval {
    type: time
    description: "Date of campaign approval"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.approval_date ;;
  }
  dimension: approval_status {
    type: string
    description: "Approval status of the campaign"
    sql: ${TABLE}.approval_status ;;
  }
  dimension: approved_by {
    type: number
    description: "ID of the user who approved the campaign"
    sql: ${TABLE}.approved_by ;;
  }
  dimension: asset_urls {
    type: string
    description: "URLs of creative assets used in the campaign"
    sql: ${TABLE}.asset_urls ;;
  }
  dimension: average_session_duration {
    type: string
    description: "Average duration of user sessions"
    sql: ${TABLE}.average_session_duration ;;
  }
  dimension: bounce_rate {
    type: number
    description: "Bounce rate as a percentage"
    sql: ${TABLE}.bounce_rate ;;
  }
  dimension: brand_awareness_lift {
    type: number
    description: "Increase in brand awareness as a percentage"
    sql: ${TABLE}.brand_awareness_lift ;;
  }
  dimension: budget {
    type: number
    description: "Allocated budget for the campaign"
    sql: ${TABLE}.budget ;;
  }
  dimension: campaign_id {
    type: number
    description: "Unique identifier for each marketing campaign"
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_manager {
    type: number
    description: "ID of the campaign manager"
    sql: ${TABLE}.campaign_manager ;;
  }
  dimension: campaign_name {
    type: string
    description: "Name of the marketing campaign"
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_type {
    type: string
    description: "Type of campaign (e.g., 'Email', 'Social Media', 'PPC')"
    sql: ${TABLE}.campaign_type ;;
  }
  dimension: channel {
    type: string
    description: "Marketing channel used (e.g., 'Facebook', 'Google Ads', 'Email')"
    sql: ${TABLE}.channel ;;
  }
  dimension: conversion_rate {
    type: number
    description: "Conversion rate as a percentage"
    sql: ${TABLE}.conversion_rate ;;
  }
  dimension: cost_per_click {
    type: number
    description: "Average cost per click"
    sql: ${TABLE}.cost_per_click ;;
  }
  dimension: cost_per_conversion {
    type: number
    description: "Average cost per conversion"
    sql: ${TABLE}.cost_per_conversion ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of campaign creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of the user who created the campaign"
    sql: ${TABLE}.created_by ;;
  }
  dimension: creative_brief {
    type: string
    description: "Creative brief for the campaign"
    sql: ${TABLE}.creative_brief ;;
  }
  dimension: customer_acquisition_cost {
    type: number
    description: "Cost of acquiring a new customer through this campaign"
    sql: ${TABLE}.customer_acquisition_cost ;;
  }
  dimension: description {
    type: string
    description: "Detailed description of the campaign"
    sql: ${TABLE}.description ;;
  }
  dimension: discount_type {
    type: string
    description: "Type of discount offered (e.g., 'Percentage', 'Fixed Amount')"
    sql: ${TABLE}.discount_type ;;
  }
  dimension: discount_value {
    type: number
    description: "Value of the discount"
    sql: ${TABLE}.discount_value ;;
  }
  dimension_group: end {
    type: time
    description: "End date of the campaign"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: engagement_rate {
    type: number
    description: "Engagement rate as a percentage"
    sql: ${TABLE}.engagement_rate ;;
  }
  dimension: goal_value {
    type: number
    description: "Target value for the success metric"
    sql: ${TABLE}.goal_value ;;
  }
  dimension: key_messages {
    type: string
    description: "Key messages to be communicated in the campaign"
    sql: ${TABLE}.key_messages ;;
  }
  dimension: lessons_learned {
    type: string
    description: "Insights and lessons learned from the campaign"
    sql: ${TABLE}.lessons_learned ;;
  }
  dimension: lifetime_value_to_cac_ratio {
    type: number
    description: "Ratio of customer lifetime value to acquisition cost"
    sql: ${TABLE}.lifetime_value_to_cac_ratio ;;
  }
  dimension: market_share_impact {
    type: number
    description: "Impact on market share as a percentage"
    sql: ${TABLE}.market_share_impact ;;
  }
  dimension: net_promoter_score {
    type: number
    description: "Net Promoter Score for the campaign"
    sql: ${TABLE}.net_promoter_score ;;
  }
  dimension: post_campaign_survey_results {
    type: string
    description: "Results from post-campaign surveys"
    sql: ${TABLE}.post_campaign_survey_results ;;
  }
  dimension: primary_objective {
    type: string
    description: "Primary objective of the campaign"
    sql: ${TABLE}.primary_objective ;;
  }
  dimension: product_category_id {
    type: number
    description: "Foreign key referencing the product category targeted"
    sql: ${TABLE}.product_category_id ;;
  }
  dimension: revenue_generated {
    type: number
    description: "Total revenue generated from the campaign"
    sql: ${TABLE}.revenue_generated ;;
  }
  dimension: roas {
    type: number
    description: "Return on Ad Spend"
    sql: ${TABLE}.ROAS ;;
  }
  dimension: roi {
    type: number
    description: "Return on Investment percentage"
    sql: ${TABLE}.ROI ;;
  }
  dimension: secondary_objective {
    type: string
    description: "Secondary objective of the campaign"
    sql: ${TABLE}.secondary_objective ;;
  }
  dimension: sentiment_analysis_score {
    type: number
    description: "Score from sentiment analysis of campaign feedback"
    sql: ${TABLE}.sentiment_analysis_score ;;
  }
  dimension_group: start {
    type: time
    description: "Start date of the campaign"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: status {
    type: string
    description: "Current status of the campaign (e.g., 'Planned', 'Active', 'Completed')"
    sql: ${TABLE}.status ;;
  }
  dimension: success_metric {
    type: string
    description: "Primary metric for measuring campaign success"
    sql: ${TABLE}.success_metric ;;
  }
  dimension: target_audience {
    type: string
    description: "Target audience for the campaign"
    sql: ${TABLE}.target_audience ;;
  }
  dimension: target_demographics {
    type: string
    description: "Detailed description of target demographics"
    sql: ${TABLE}.target_demographics ;;
  }
  dimension: target_region {
    type: string
    description: "Geographic region targeted by the campaign"
    sql: ${TABLE}.target_region ;;
  }
  dimension: total_clicks {
    type: number
    description: "Total number of clicks received"
    sql: ${TABLE}.total_clicks ;;
  }
  dimension: total_conversions {
    type: number
    description: "Total number of conversions achieved"
    sql: ${TABLE}.total_conversions ;;
  }
  dimension: total_impressions {
    type: number
    description: "Total number of impressions generated"
    sql: ${TABLE}.total_impressions ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    description: "ID of the user who last updated the campaign"
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, campaigns.campaign_id, campaigns.campaign_name]
  }
}