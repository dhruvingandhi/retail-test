include: "/views/customers.view.lkml"
include: "/views/customer_loyalty_program.view.lkml"
include: "/views/customer_journey_analytics.view.lkml"
include: "/views/customer_profile.view.lkml"
include: "/views/customer_segments.view.lkml"
include: "/views/marketing_campaign_analytics.view.lkml"
include: "/views/promotions.view.lkml"
include: "/views/sales_transaction.view.lkml"

explore: customer_journey_analytics {
  label: "Customer Journey Analytics"
  description: "This marketing explore gives you insights into the retail customer journey including channel performance, promotions, customer segments, conversions, loyalty points and churn risk."
  query: discount_type_conversions {
    label: "Promotion Effectiveness by Segment"
    description: "Which discount types deliver the highest conversion rate, broken down by customer segment?"
    dimensions: [customer_segments.segment_name, promotions.discount_type]
    measures: [conversion_rate]
  }
  query: channel_conversions {
    label: "Channel Performance"
    description: "How do conversion rates and average conversion values vary across channels?"
    dimensions: [channel]
    measures: [average_conversion_value, conversion_rate]
  }
  query: loyalty_points {
    label: "Loyalty Points Impact"
    description: "What is the relationship between loyalty points earned and subsequent conversion frequency & value?"
    dimensions: [loyalty_points_earned]
    measures: [average_conversion_value, conversion_rate]
  }
  query: high_risk_segment {
    label: "Touchpoints to Conversion"
    description: "What’s the average number of touchpoints to conversion and days since last purchase?"
    measures: [average_days_since_last_purchase, average_touchpoints_to_conversion]
  }
  query: at_risk_segments {
    label: "Churn Risk Early Warning"
    description: "Which segments have the highest churn risk scores?"
    dimensions: [customer_segments.segment_name]
    measures: [average_churn_risk_score]
  }
  query: conversions {
    label: "Top Performing Touchpoints"
    description: "Which landing pages yield the best lift in conversion rate and average order value?"
    dimensions: [landing_page]
    measures: [average_conversion_value, conversion_rate]
  }
  join: customer_profile {
    view_label: "Customer Profile"
    sql_on: ${customer_journey_analytics.customer_id} = ${customer_profile.customer_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: customer_segments {
    view_label: "Customer Segments"
    ## Ideally add segment_id to customer_profile table for a cleaner join
    sql_on: ${customer_profile.customer_segment} = ${customer_segments.segment_name} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: promotions {
    view_label: "Promotions"
    sql_on: ${customer_journey_analytics.promotion_id} = ${promotions.promotion_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: customers {
    view_label: "Customers"
    sql_on: ${customer_journey_analytics.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
    type: left_outer
    fields: [customer_id]
  }
  join: marketing_campaign_analytics {
    view_label: "Marketing Campaing Analytics"
    sql_on: ${customers.campaign_id} = ${marketing_campaign_analytics.campaign_id} ;;
    relationship: many_to_one
    type: left_outer
  }
}
