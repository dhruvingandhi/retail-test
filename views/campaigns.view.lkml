view: campaigns {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Campaigns` ;;
  drill_fields: [campaign_id]

  dimension: campaign_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each campaign"
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: actual_spend {
    type: number
    description: "Actual amount spent on the campaign"
    sql: ${TABLE}.actual_spend ;;
  }
  dimension: ad_copy {
    type: string
    description: "Text content of advertisements used in the campaign"
    sql: ${TABLE}.ad_copy ;;
  }
  dimension: affiliate_commission {
    type: number
    description: "Commission paid to affiliate partners"
    sql: ${TABLE}.affiliate_commission ;;
  }
  dimension: affiliate_partners {
    type: string
    description: "List of affiliate partners involved"
    sql: ${TABLE}.affiliate_partners ;;
  }
  dimension: age_range_targeting {
    type: string
    description: "Age ranges targeted"
    sql: ${TABLE}.age_range_targeting ;;
  }
  dimension: agency_fee {
    type: number
    description: "Fee paid to external agency"
    sql: ${TABLE}.agency_fee ;;
  }
  dimension: attrition_rate {
    type: number
    description: "Rate at which customers or leads are lost post-campaign"
    sql: ${TABLE}.attrition_rate ;;
  }
  dimension: bounce_rate {
    type: number
    description: "Percentage of visitors who navigate away after viewing only one page"
    sql: ${TABLE}.bounce_rate ;;
  }
  dimension: budget {
    type: number
    description: "Allocated budget for the campaign"
    sql: ${TABLE}.budget ;;
  }
  dimension: campaign_insights {
    type: string
    description: "Key insights and learnings from the campaign"
    sql: ${TABLE}.campaign_insights ;;
  }
  dimension: campaign_manager {
    type: string
    description: "Name of the person managing the campaign"
    sql: ${TABLE}.campaign_manager ;;
  }
  dimension: campaign_name {
    type: string
    description: "Name of the marketing campaign"
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_status {
    type: string
    description: "Current status of the campaign (e.g., 'Active', 'Completed', 'Paused')"
    sql: ${TABLE}.campaign_status ;;
  }
  dimension: campaign_type {
    type: string
    description: "Type of campaign (e.g., 'Brand Awareness', 'Lead Generation', 'Sales')"
    sql: ${TABLE}.campaign_type ;;
  }
  dimension: churn_rate {
    type: number
    description: "Rate at which customers stop engaging after the campaign"
    sql: ${TABLE}.churn_rate ;;
  }
  dimension: click_through_rate {
    type: number
    description: "Percentage of clicks on campaign links"
    sql: ${TABLE}.click_through_rate ;;
  }
  dimension: clicks {
    type: number
    description: "Number of clicks received"
    sql: ${TABLE}.clicks ;;
  }
  dimension: conversion_rate {
    type: number
    description: "Percentage of conversions from campaign traffic"
    sql: ${TABLE}.conversion_rate ;;
  }
  dimension: conversions {
    type: number
    description: "Number of conversions achieved"
    sql: ${TABLE}.conversions ;;
  }
  dimension: cost_per_acquisition {
    type: number
    description: "Average cost per acquisition"
    sql: ${TABLE}.cost_per_acquisition ;;
  }
  dimension: cost_per_click {
    type: number
    description: "Average cost per click"
    sql: ${TABLE}.cost_per_click ;;
  }
  dimension: cost_per_lead {
    type: number
    description: "Average cost per lead generated"
    sql: ${TABLE}.cost_per_lead ;;
  }
  dimension: cost_per_thousand_impressions {
    type: number
    description: "Cost per 1000 impressions (CPM)"
    sql: ${TABLE}.cost_per_thousand_impressions ;;
  }
  dimension: creative_material {
    type: string
    description: "Description or links to creative materials used"
    sql: ${TABLE}.creative_material ;;
  }
  dimension: creative_spend {
    type: number
    description: "Amount spent on creative development"
    sql: ${TABLE}.creative_spend ;;
  }
  dimension: crm_list_growth {
    type: number
    description: "Growth in CRM contact list"
    sql: ${TABLE}.crm_list_growth ;;
  }
  dimension: customer_acquisition_cost {
    type: number
    description: "Cost per acquired customer"
    sql: ${TABLE}.customer_acquisition_cost ;;
  }
  dimension: customer_lifetime_value {
    type: number
    description: "Estimated lifetime value of customers acquired"
    sql: ${TABLE}.customer_lifetime_value ;;
  }
  dimension: customer_segment {
    type: string
    description: "Specific customer segment targeted"
    sql: ${TABLE}.customer_segment ;;
  }
  dimension: device_targeting {
    type: string
    description: "Devices targeted (e.g., 'Mobile', 'Desktop', 'Tablet')"
    sql: ${TABLE}.device_targeting ;;
  }
  dimension: email_body {
    type: string
    description: "Content of email used in the campaign"
    sql: ${TABLE}.email_body ;;
  }
  dimension: email_open_rate {
    type: number
    description: "Percentage of emails opened (for email campaigns)"
    sql: ${TABLE}.email_open_rate ;;
  }
  dimension: email_subject {
    type: string
    description: "Subject line used in email campaigns"
    sql: ${TABLE}.email_subject ;;
  }
  dimension: email_subscribers_gained {
    type: number
    description: "Number of new email subscribers gained"
    sql: ${TABLE}.email_subscribers_gained ;;
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
    description: "Rate of audience engagement with the campaign"
    sql: ${TABLE}.engagement_rate ;;
  }
  dimension: external_agency_involved {
    type: string
    description: "Name of external agency involved (if any)"
    sql: ${TABLE}.external_agency_involved ;;
  }
  dimension: gender_targeting {
    type: string
    description: "Gender targeted (if applicable)"
    sql: ${TABLE}.gender_targeting ;;
  }
  dimension: geographic_targeting {
    type: string
    description: "Geographic areas targeted by the campaign"
    sql: ${TABLE}.geographic_targeting ;;
  }
  dimension: impressions {
    type: number
    description: "Number of times the campaign was displayed"
    sql: ${TABLE}.impressions ;;
  }
  dimension: influencer_spend {
    type: number
    description: "Amount spent on influencer partnerships"
    sql: ${TABLE}.influencer_spend ;;
  }
  dimension: interest_based_targeting {
    type: string
    description: "Interests targeted in the campaign"
    sql: ${TABLE}.interest_based_targeting ;;
  }
  dimension: landing_page_url {
    type: string
    description: "URL of the campaign landing page"
    sql: ${TABLE}.landing_page_url ;;
  }
  dimension: lead_generation {
    type: number
    description: "Number of leads generated by the campaign"
    sql: ${TABLE}.lead_generation ;;
  }
  dimension: marketing_channel {
    type: string
    description: "Primary marketing channel used (e.g., 'Social Media', 'Email', 'PPC')"
    sql: ${TABLE}.marketing_channel ;;
  }
  dimension: media_spend {
    type: number
    description: "Amount spent on media placements"
    sql: ${TABLE}.media_spend ;;
  }
  dimension: net_promoter_score {
    type: number
    description: "Net Promoter Score for the campaign"
    sql: ${TABLE}.net_promoter_score ;;
  }
  dimension: organic_search_increase {
    type: number
    description: "Percentage increase in organic search traffic"
    sql: ${TABLE}.organic_search_increase ;;
  }
  dimension: paid_search_increase {
    type: number
    description: "Percentage increase in paid search traffic"
    sql: ${TABLE}.paid_search_increase ;;
  }
  dimension: post_campaign_customer_feedback {
    type: string
    description: "Feedback received from customers after the campaign"
    sql: ${TABLE}.post_campaign_customer_feedback ;;
  }
  dimension: post_campaign_survey_score {
    type: number
    description: "Score from post-campaign customer surveys"
    sql: ${TABLE}.post_campaign_survey_score ;;
  }
  dimension: post_campaign_website_traffic {
    type: number
    description: "Increase in website traffic post-campaign"
    sql: ${TABLE}.post_campaign_website_traffic ;;
  }
  dimension: promotion_code_used {
    type: string
    description: "Promotion code associated with the campaign"
    sql: ${TABLE}.promotion_code_used ;;
  }
  dimension: promotion_discount {
    type: number
    description: "Discount amount or percentage for the promotion"
    sql: ${TABLE}.promotion_discount ;;
  }
  dimension: push_notification_message {
    type: string
    description: "Content of push notifications used"
    sql: ${TABLE}.push_notification_message ;;
  }
  dimension: referral_rate {
    type: number
    description: "Rate at which customers refer others"
    sql: ${TABLE}.referral_rate ;;
  }
  dimension: return_on_investment {
    type: number
    description: "ROI of the campaign"
    sql: ${TABLE}.return_on_investment ;;
  }
  dimension: revenue_generated {
    type: number
    description: "Total revenue generated from the campaign"
    sql: ${TABLE}.revenue_generated ;;
  }
  dimension: sentiment_analysis {
    type: string
    description: "Results of sentiment analysis on campaign feedback"
    sql: ${TABLE}.sentiment_analysis ;;
  }
  dimension: sms_message {
    type: string
    description: "Content of SMS messages used in the campaign"
    sql: ${TABLE}.sms_message ;;
  }
  dimension: social_media_channels {
    type: string
    description: "List of social media platforms used for the campaign"
    sql: ${TABLE}.social_media_channels ;;
  }
  dimension: social_media_followers_gained {
    type: number
    description: "Number of new social media followers gained"
    sql: ${TABLE}.social_media_followers_gained ;;
  }
  dimension_group: start {
    type: time
    description: "Start date of the campaign"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: target_audience {
    type: string
    description: "Description of the target audience for the campaign"
    sql: ${TABLE}.target_audience ;;
  }
  dimension: team_members_involved {
    type: string
    description: "List of team members involved in the campaign"
    sql: ${TABLE}.team_members_involved ;;
  }
  dimension: time_on_page {
    type: number
    description: "Average time spent on the landing page (in minutes)"
    sql: ${TABLE}.time_on_page ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_id, campaign_name, customers.count, marketing_campaigns.count, marketing_campaign_analytics.count]
  }
}