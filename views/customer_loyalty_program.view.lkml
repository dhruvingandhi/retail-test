view: customer_loyalty_program {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.CustomerLoyaltyProgram` ;;

  fields_hidden_by_default: yes

  dimension: loyalty_id {
    primary_key: yes
    label: "Loyalty ID"
    description: "Unique identifier for each loyalty program entry"
    type: number
    sql: ${TABLE}.loyalty_id ;;
  }
  dimension: achievements_unlocked {
    type: number
    description: "Number of achievements unlocked"
    sql: ${TABLE}.achievements_unlocked ;;
  }
  dimension: allergies {
    type: string
    description: "Allergies information for personalized offers"
    sql: ${TABLE}.allergies ;;
  }
  dimension_group: anniversary {
    type: time
    description: "Anniversary date for special offers"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.anniversary_date ;;
  }
  dimension: app_installed {
    type: yesno
    description: "Indicates if the loyalty app is installed"
    sql: ${TABLE}.app_installed ;;
  }
  dimension: auto_renewal_status {
    type: yesno
    description: "Status of automatic membership renewal"
    sql: ${TABLE}.auto_renewal_status ;;
  }
  dimension: average_points_per_transaction {
    type: number
    description: "Average points earned per transaction"
    sql: ${TABLE}.average_points_per_transaction ;;
  }
  dimension: average_transaction_value {
    type: number
    description: "Average monetary value of transactions"
    sql: ${TABLE}.average_transaction_value ;;
  }
  dimension_group: birthday {
    type: time
    description: "Customer's birthday for birthday rewards"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthday ;;
  }
  dimension: bonus_points_earned {
    type: number
    description: "Total bonus points earned"
    sql: ${TABLE}.bonus_points_earned ;;
  }
  dimension: bonus_points_reason {
    type: string
    description: "Reasons for bonus points awarded"
    sql: ${TABLE}.bonus_points_reason ;;
  }
  dimension_group: card_expiry {
    type: time
    description: "Expiration date of the loyalty card"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.card_expiry_date ;;
  }
  dimension_group: card_issue {
    type: time
    description: "Date when the loyalty card was issued"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.card_issue_date ;;
  }
  dimension: churn_risk_score {
    hidden: no
    label: "Churn Risk Score"
    description: "Score indicating the risk of customer churn"
    type: number
    sql: ${TABLE}.churn_risk_score ;;
  }
  dimension: communication_preference {
    type: string
    description: "Preferred method of communication (e.g., 'Email', 'SMS', 'Post')"
    sql: ${TABLE}.communication_preference ;;
  }
  dimension: contests_participated {
    type: number
    description: "Number of contests the customer has participated in"
    sql: ${TABLE}.contests_participated ;;
  }
  dimension: contests_won {
    type: number
    description: "Number of contests won"
    sql: ${TABLE}.contests_won ;;
  }
  dimension: created_by {
    type: number
    description: "ID of the user who created this record"
    sql: ${TABLE}.created_by ;;
  }
  dimension: currency_preference {
    type: string
    description: "Preferred currency for rewards and transactions"
    sql: ${TABLE}.currency_preference ;;
  }
  dimension: current_tier {
    type: string
    description: "Current loyalty tier"
    sql: ${TABLE}.current_tier ;;
  }
  dimension: customer_id {
    type: number
    description: "Foreign key referencing the associated customer"
    sql: ${TABLE}.customer_id ;;
  }
  dimension: device_type {
    type: string
    description: "Type of device used for app access"
    sql: ${TABLE}.device_type ;;
  }
  dimension: dietary_restrictions {
    type: string
    description: "Dietary restrictions for food-related rewards"
    sql: ${TABLE}.dietary_restrictions ;;
  }
  dimension_group: downgrade_warning {
    type: time
    description: "Date when a downgrade warning was issued"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.downgrade_warning_date ;;
  }
  dimension: email_subscription_status {
    type: yesno
    description: "Email subscription status"
    sql: ${TABLE}.email_subscription_status ;;
  }
  dimension: emergency_contact_name {
    type: string
    description: "Name of emergency contact"
    sql: ${TABLE}.emergency_contact_name ;;
  }
  dimension: emergency_contact_phone {
    type: string
    description: "Phone number of emergency contact"
    sql: ${TABLE}.emergency_contact_phone ;;
  }
  dimension: engagement_score {
    type: number
    description: "Score indicating the level of customer engagement"
    sql: ${TABLE}.engagement_score ;;
  }
  dimension_group: enrollment {
    type: time
    description: "Date when the customer enrolled in the loyalty program"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.enrollment_date ;;
  }
  dimension: favorite_amenities {
    type: string
    description: "Favorite amenities for hotel stays"
    sql: ${TABLE}.favorite_amenities ;;
  }
  dimension: favorite_brand {
    type: string
    description: "Customer's favorite brand"
    sql: ${TABLE}.favorite_brand ;;
  }
  dimension: favorite_product_category {
    type: string
    description: "Customer's favorite product category"
    sql: ${TABLE}.favorite_product_category ;;
  }
  dimension: feedback_score {
    hidden: no
    label: "Feedback Score"
    description: "Average feedback score given by the customer"
    type: number
    sql: ${TABLE}.feedback_score ;;
  }
  dimension: frequent_flyer_number {
    type: string
    description: "Frequent flyer number for airline partnerships"
    sql: ${TABLE}.frequent_flyer_number ;;
  }
  dimension: gamification_level {
    type: number
    description: "Current level in gamification features"
    sql: ${TABLE}.gamification_level ;;
  }
  dimension: influencer_status {
    type: yesno
    description: "Indicates if the customer is considered an influencer"
    sql: ${TABLE}.influencer_status ;;
  }
  dimension: is_active {
    type: yesno
    description: "Indicates if the loyalty membership is currently active"
    sql: ${TABLE}.is_active ;;
  }
  dimension: language_preference {
    type: string
    description: "Preferred language for communications"
    sql: ${TABLE}.language_preference ;;
  }
  dimension_group: last_achievement {
    type: time
    description: "Date of the last achievement unlocked"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_achievement_date ;;
  }
  dimension_group: last_activity {
    type: time
    description: "Date of the customer's last activity in the program"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_activity_date ;;
  }
  dimension_group: last_app_login {
    type: time
    description: "Date of the last login to the loyalty app"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_app_login_date ;;
  }
  dimension_group: last_contest {
    type: time
    description: "Date of the last contest participation"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_contest_date ;;
  }
  dimension_group: last_downgrade {
    type: time
    description: "Date of the last tier downgrade"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_downgrade_date ;;
  }
  dimension_group: last_payment {
    type: time
    description: "Date of the last payment for membership fees"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_payment_date ;;
  }
  dimension: last_points_earned {
    type: number
    description: "Points earned in the last transaction"
    sql: ${TABLE}.last_points_earned ;;
  }
  dimension: last_points_redeemed {
    type: number
    description: "Points redeemed in the last transaction"
    sql: ${TABLE}.last_points_redeemed ;;
  }
  dimension_group: last_quiz {
    type: time
    description: "Date of the last quiz participation"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_quiz_date ;;
  }
  dimension_group: last_reward_redemption {
    type: time
    description: "Date of the last reward redemption"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_reward_redemption_date ;;
  }
  dimension: last_reward_type {
    type: string
    description: "Type of the last reward redeemed"
    sql: ${TABLE}.last_reward_type ;;
  }
  dimension_group: last_survey {
    type: time
    description: "Date of the last survey participation"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_survey_date ;;
  }
  dimension_group: last_transaction {
    type: time
    description: "Date of the last transaction"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_transaction_date ;;
  }
  dimension_group: last_updated {
    type: time
    description: "Timestamp of the last update to this record"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated ;;
  }
  dimension_group: last_upgrade {
    type: time
    description: "Date of the last tier upgrade"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_upgrade_date ;;
  }
  dimension: lifetime_points {
    type: number
    description: "Total points earned over the customer's lifetime"
    sql: ${TABLE}.lifetime_points ;;
  }
  dimension: lifetime_value {
    type: number
    description: "Calculated lifetime value of the customer"
    sql: ${TABLE}.lifetime_value ;;
  }
  dimension: location_sharing_status {
    type: yesno
    description: "Location sharing preference"
    sql: ${TABLE}.location_sharing_status ;;
  }
  dimension: loyalty_card_number {
    type: string
    description: "Unique loyalty card number"
    sql: ${TABLE}.loyalty_card_number ;;
  }
  dimension: membership_level {
    type: string
    description: "Current membership level (e.g., 'Gold', 'Silver', 'Bronze')"
    sql: ${TABLE}.membership_level ;;
  }
  dimension_group: membership_renewal {
    type: time
    description: "Date when the membership needs to be renewed"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.membership_renewal_date ;;
  }
  dimension: nationality {
    type: string
    description: "Nationality of the customer"
    sql: ${TABLE}.nationality ;;
  }
  dimension_group: next_payment_due {
    type: time
    description: "Due date for the next membership payment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_payment_due_date ;;
  }
  dimension_group: next_reward_eligible {
    type: time
    description: "Date when the customer is eligible for the next reward"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_reward_eligible_date ;;
  }
  dimension: next_tier {
    type: string
    description: "Next loyalty tier the customer can achieve"
    sql: ${TABLE}.next_tier ;;
  }
  dimension: next_tier_points_needed {
    type: number
    description: "Points needed to reach the next membership tier"
    sql: ${TABLE}.next_tier_points_needed ;;
  }
  dimension: nps_score {
    type: number
    description: "Net Promoter Score"
    sql: ${TABLE}.nps_score ;;
  }
  dimension: partner_points_earned {
    type: number
    description: "Points earned through partner programs"
    sql: ${TABLE}.partner_points_earned ;;
  }
  dimension: partner_points_transferred {
    type: number
    description: "Points transferred to partner programs"
    sql: ${TABLE}.partner_points_transferred ;;
  }
  dimension: passport_number {
    type: string
    description: "Passport number for travel-related programs"
    sql: ${TABLE}.passport_number ;;
  }
  dimension: payment_method_id {
    type: number
    description: "ID of the preferred payment method"
    sql: ${TABLE}.payment_method_id ;;
  }
  dimension: personalization_preferences {
    type: string
    description: "Personalization preferences for offers and communications"
    sql: ${TABLE}.personalization_preferences ;;
  }
  dimension: physical_card_status {
    type: yesno
    description: "Status of physical loyalty card"
    sql: ${TABLE}.physical_card_status ;;
  }
  dimension: points_balance {
    type: number
    description: "Current balance of loyalty points"
    sql: ${TABLE}.points_balance ;;
  }
  dimension: points_earned_ytd {
    type: number
    description: "Points earned year-to-date"
    sql: ${TABLE}.points_earned_ytd ;;
  }
  dimension_group: points_expiry {
    type: time
    description: "Date when current points will expire"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.points_expiry_date ;;
  }
  dimension: points_gifted {
    type: number
    description: "Points gifted to other members"
    sql: ${TABLE}.points_gifted ;;
  }
  dimension: points_received_as_gift {
    type: number
    description: "Points received as gifts from other members"
    sql: ${TABLE}.points_received_as_gift ;;
  }
  dimension: points_redeemed_ytd {
    type: number
    description: "Points redeemed year-to-date"
    sql: ${TABLE}.points_redeemed_ytd ;;
  }
  dimension: preferred_airline {
    type: string
    description: "Preferred airline for travel rewards"
    sql: ${TABLE}.preferred_airline ;;
  }
  dimension: preferred_car_rental {
    type: string
    description: "Preferred car rental company"
    sql: ${TABLE}.preferred_car_rental ;;
  }
  dimension: preferred_hotel_chain {
    type: string
    description: "Preferred hotel chain"
    sql: ${TABLE}.preferred_hotel_chain ;;
  }
  dimension: preferred_reward_category {
    type: string
    description: "Customer's preferred category for rewards"
    sql: ${TABLE}.preferred_reward_category ;;
  }
  dimension: preferred_shopping_time {
    type: string
    description: "Customer's preferred shopping time (e.g., 'Morning', 'Evening')"
    sql: ${TABLE}.preferred_shopping_time ;;
  }
  dimension: preferred_store_location {
    type: string
    description: "Customer's preferred store location"
    sql: ${TABLE}.preferred_store_location ;;
  }
  dimension: push_notification_status {
    type: yesno
    description: "Push notification status"
    sql: ${TABLE}.push_notification_status ;;
  }
  dimension: quiz_points_earned {
    type: number
    description: "Points earned from quizzes"
    sql: ${TABLE}.quiz_points_earned ;;
  }
  dimension: referral_count {
    type: number
    description: "Number of referrals made by the customer"
    sql: ${TABLE}.referral_count ;;
  }
  dimension: referral_points_earned {
    type: number
    description: "Points earned through referrals"
    sql: ${TABLE}.referral_points_earned ;;
  }
  dimension: rewards_redeemed {
    type: number
    description: "Number of rewards redeemed"
    sql: ${TABLE}.rewards_redeemed ;;
  }
  dimension: room_preferences {
    type: string
    description: "Preferred room types for hotel stays"
    sql: ${TABLE}.room_preferences ;;
  }
  dimension: sentiment_score {
    type: number
    description: "Score indicating customer sentiment"
    sql: ${TABLE}.sentiment_score ;;
  }
  dimension: sms_subscription_status {
    type: yesno
    description: "SMS subscription status"
    sql: ${TABLE}.sms_subscription_status ;;
  }
  dimension: social_media_connected {
    type: yesno
    description: "Indicates if social media accounts are connected"
    sql: ${TABLE}.social_media_connected ;;
  }
  dimension: special_accommodations {
    type: string
    description: "Any special accommodations required"
    sql: ${TABLE}.special_accommodations ;;
  }
  dimension: survey_participation_count {
    type: number
    description: "Number of surveys participated in"
    sql: ${TABLE}.survey_participation_count ;;
  }
  dimension_group: tier_expiry {
    type: time
    description: "Date when the current tier status expires"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.tier_expiry_date ;;
  }
  dimension_group: tier_qualification {
    type: time
    description: "Date when the customer qualified for their current tier"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.tier_qualification_date ;;
  }
  dimension: time_zone {
    type: string
    description: "Customer's time zone"
    sql: ${TABLE}.time_zone ;;
  }
  dimension: total_downgrades {
    type: number
    description: "Total number of tier downgrades"
    sql: ${TABLE}.total_downgrades ;;
  }
  dimension: total_reward_value {
    type: number
    description: "Total monetary value of redeemed rewards"
    sql: ${TABLE}.total_reward_value ;;
  }
  dimension: total_spend_amount {
    type: number
    description: "Total amount spent by the customer"
    sql: ${TABLE}.total_spend_amount ;;
  }
  dimension: total_transactions {
    type: number
    description: "Total number of transactions made"
    sql: ${TABLE}.total_transactions ;;
  }
  dimension: total_upgrades {
    type: number
    description: "Total number of tier upgrades"
    sql: ${TABLE}.total_upgrades ;;
  }
  dimension: travel_preferences {
    type: string
    description: "Travel preferences for personalized offers"
    sql: ${TABLE}.travel_preferences ;;
  }
  dimension: updated_by {
    type: number
    description: "ID of the user who last updated this record"
    sql: ${TABLE}.updated_by ;;
  }
  dimension_group: upgrade_eligibility {
    type: time
    description: "Date when the customer becomes eligible for an upgrade"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.upgrade_eligibility_date ;;
  }
  dimension: vip_status {
    type: yesno
    description: "Indicates if the customer has VIP status"
    sql: ${TABLE}.vip_status ;;
  }
  dimension: virtual_card_status {
    type: yesno
    description: "Status of virtual loyalty card"
    sql: ${TABLE}.virtual_card_status ;;
  }
}