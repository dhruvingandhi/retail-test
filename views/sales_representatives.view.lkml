view: sales_representatives {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Sales_Representatives` ;;

  dimension: annual_bonus {
    type: number
    description: "Annual bonus amount"
    sql: ${TABLE}.annual_bonus ;;
  }
  dimension: annual_sales_achievement {
    type: number
    description: "Actual annual sales achieved"
    sql: ${TABLE}.annual_sales_achievement ;;
  }
  dimension: annual_target {
    type: number
    description: "Annual sales target"
    sql: ${TABLE}.annual_target ;;
  }
  dimension: attendance_record {
    type: string
    description: "Record of attendance and punctuality"
    sql: ${TABLE}.attendance_record ;;
  }
  dimension: average_response_time {
    type: number
    description: "Average time to respond to customer inquiries (in hours)"
    sql: ${TABLE}.average_response_time ;;
  }
  dimension: average_sales_amount {
    type: number
    description: "Average value per sale"
    sql: ${TABLE}.average_sales_amount ;;
  }
  dimension_group: bonus {
    type: time
    description: "Date of the last bonus payment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.bonus_date ;;
  }
  dimension: bonus_earned {
    type: number
    description: "Total bonus earned"
    sql: ${TABLE}.bonus_earned ;;
  }
  dimension: car_fuel_allowance {
    type: number
    description: "Fuel allowance for the company car"
    sql: ${TABLE}.car_fuel_allowance ;;
  }
  dimension: car_make {
    type: string
    description: "Make of the assigned company car"
    sql: ${TABLE}.car_make ;;
  }
  dimension: car_model {
    type: string
    description: "Model of the assigned company car"
    sql: ${TABLE}.car_model ;;
  }
  dimension: car_registration_number {
    type: string
    description: "Registration number of the assigned company car"
    sql: ${TABLE}.car_registration_number ;;
  }
  dimension: certifications {
    type: string
    description: "List of certifications held by the representative"
    sql: ${TABLE}.certifications ;;
  }
  dimension: client_list {
    type: string
    description: "List of clients assigned to the representative"
    sql: ${TABLE}.client_list ;;
  }
  dimension: client_referral_count {
    type: number
    description: "Number of new clients referred by this representative"
    sql: ${TABLE}.client_referral_count ;;
  }
  dimension: commission_rate {
    type: number
    description: "Commission rate for the sales representative (percentage)"
    sql: ${TABLE}.commission_rate ;;
  }
  dimension: company_car_assigned {
    type: yesno
    description: "Indicates if a company car has been assigned"
    sql: ${TABLE}.company_car_assigned ;;
  }
  dimension: company_laptop_assigned {
    type: yesno
    description: "Indicates if a company laptop has been assigned"
    sql: ${TABLE}.company_laptop_assigned ;;
  }
  dimension: company_phone_assigned {
    type: yesno
    description: "Indicates if a company phone has been assigned"
    sql: ${TABLE}.company_phone_assigned ;;
  }
  dimension: complaints_resolved {
    type: number
    description: "Number of resolved customer complaints"
    sql: ${TABLE}.complaints_resolved ;;
  }
  dimension_group: contract_end {
    type: time
    description: "End date of the contract (for contractors)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_end_date ;;
  }
  dimension_group: contract_start {
    type: time
    description: "Start date of the contract (for contractors)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.contract_start_date ;;
  }
  dimension: customer_rating {
    type: number
    description: "Average rating given by customers"
    sql: ${TABLE}.customer_rating ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Average customer satisfaction score"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension: deal_closure_rate {
    type: number
    description: "Percentage of proposals that result in closed deals"
    sql: ${TABLE}.deal_closure_rate ;;
  }
  dimension: education_level {
    type: string
    description: "Highest level of education achieved"
    sql: ${TABLE}.education_level ;;
  }
  dimension: electric_car {
    type: yesno
    description: "Indicates if the assigned car is electric"
    sql: ${TABLE}.electric_car ;;
  }
  dimension: email {
    type: string
    description: "Email address of the sales representative"
    sql: ${TABLE}.email ;;
  }
  dimension: emergency_contact_name {
    type: string
    description: "Name of emergency contact"
    sql: ${TABLE}.emergency_contact_name ;;
  }
  dimension: emergency_contact_number {
    type: string
    description: "Phone number of emergency contact"
    sql: ${TABLE}.emergency_contact_number ;;
  }
  dimension: emergency_contact_relationship {
    type: string
    description: "Relationship with the emergency contact"
    sql: ${TABLE}.emergency_contact_relationship ;;
  }
  dimension: employment_status {
    type: string
    description: "Current employment status (e.g., 'Active', 'On Leave', 'Terminated')"
    sql: ${TABLE}.employment_status ;;
  }
  dimension: equity_awards {
    type: number
    description: "Value of equity awards granted"
    sql: ${TABLE}.equity_awards ;;
  }
  dimension: feedback_comments {
    type: string
    description: "Compilation of feedback comments received"
    sql: ${TABLE}.feedback_comments ;;
  }
  dimension: feedback_rating {
    type: number
    description: "Rating based on customer feedback"
    sql: ${TABLE}.feedback_rating ;;
  }
  dimension: first_name {
    type: string
    description: "First name of the sales representative"
    sql: ${TABLE}.first_name ;;
  }
  dimension: highest_sale {
    type: number
    description: "Value of the highest single sale made"
    sql: ${TABLE}.highest_sale ;;
  }
  dimension_group: hire {
    type: time
    description: "Date when the sales representative was hired"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hire_date ;;
  }
  dimension: is_active {
    type: yesno
    description: "Indicates if the sales representative is currently active"
    sql: ${TABLE}.is_active ;;
  }
  dimension: is_contractor {
    type: yesno
    description: "Indicates if the representative is a contractor"
    sql: ${TABLE}.is_contractor ;;
  }
  dimension: is_deal_closer {
    type: yesno
    description: "Indicates if the representative is particularly skilled at closing deals"
    sql: ${TABLE}.is_deal_closer ;;
  }
  dimension: is_full_time {
    type: yesno
    description: "Indicates if the representative is a full-time employee"
    sql: ${TABLE}.is_full_time ;;
  }
  dimension: languages_spoken {
    type: string
    description: "Languages spoken by the representative"
    sql: ${TABLE}.languages_spoken ;;
  }
  dimension: laptop_make {
    type: string
    description: "Make of the assigned laptop"
    sql: ${TABLE}.laptop_make ;;
  }
  dimension: laptop_model {
    type: string
    description: "Model of the assigned laptop"
    sql: ${TABLE}.laptop_model ;;
  }
  dimension: last_name {
    type: string
    description: "Last name of the sales representative"
    sql: ${TABLE}.last_name ;;
  }
  dimension: last_review_score {
    type: number
    description: "Score from the last performance review"
    sql: ${TABLE}.last_review_score ;;
  }
  dimension: leave_taken {
    type: number
    description: "Number of leave days taken"
    sql: ${TABLE}.leave_taken ;;
  }
  dimension: linkedin_profile {
    type: string
    description: "LinkedIn profile URL"
    sql: ${TABLE}.linkedin_profile ;;
  }
  dimension: lowest_sale {
    type: number
    description: "Value of the lowest single sale made"
    sql: ${TABLE}.lowest_sale ;;
  }
  dimension: manager_id {
    type: number
    description: "ID of the manager supervising this sales representative"
    sql: ${TABLE}.manager_id ;;
  }
  dimension: medical_insurance_coverage {
    type: string
    description: "Details of medical insurance coverage"
    sql: ${TABLE}.medical_insurance_coverage ;;
  }
  dimension: mentee_assigned {
    type: string
    description: "Name of the mentee assigned to this representative"
    sql: ${TABLE}.mentee_assigned ;;
  }
  dimension: mentor_assigned {
    type: string
    description: "Name of the mentor assigned to this representative"
    sql: ${TABLE}.mentor_assigned ;;
  }
  dimension: mentorship_program {
    type: string
    description: "Details of any mentorship program participation"
    sql: ${TABLE}.mentorship_program ;;
  }
  dimension: monthly_bonus {
    type: number
    description: "Monthly bonus amount"
    sql: ${TABLE}.monthly_bonus ;;
  }
  dimension: monthly_target {
    type: number
    description: "Monthly sales target"
    sql: ${TABLE}.monthly_target ;;
  }
  dimension: number_of_clients {
    type: number
    description: "Number of clients managed by the representative"
    sql: ${TABLE}.number_of_clients ;;
  }
  dimension: number_of_complaints {
    type: number
    description: "Number of customer complaints received"
    sql: ${TABLE}.number_of_complaints ;;
  }
  dimension: number_of_deals_closed {
    type: number
    description: "Number of deals successfully closed"
    sql: ${TABLE}.number_of_deals_closed ;;
  }
  dimension: number_of_meetings_attended {
    type: number
    description: "Number of sales meetings attended"
    sql: ${TABLE}.number_of_meetings_attended ;;
  }
  dimension: number_of_proposals_submitted {
    type: number
    description: "Number of sales proposals submitted"
    sql: ${TABLE}.number_of_proposals_submitted ;;
  }
  dimension: number_of_sales {
    type: number
    description: "Total number of sales transactions"
    sql: ${TABLE}.number_of_sales ;;
  }
  dimension: overtime_hours {
    type: number
    description: "Number of overtime hours worked"
    sql: ${TABLE}.overtime_hours ;;
  }
  dimension: pay_grade {
    type: string
    description: "Current pay grade"
    sql: ${TABLE}.pay_grade ;;
  }
  dimension: pay_rate {
    type: number
    description: "Current pay rate (e.g., hourly or annual salary)"
    sql: ${TABLE}.pay_rate ;;
  }
  dimension: performance_rating {
    type: number
    description: "Overall performance rating (e.g., scale of 1-5)"
    sql: ${TABLE}.performance_rating ;;
  }
  dimension_group: performance_review {
    type: time
    description: "Date of the last performance review"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.performance_review_date ;;
  }
  dimension: phone_make {
    type: string
    description: "Make of the assigned company phone"
    sql: ${TABLE}.phone_make ;;
  }
  dimension: phone_model {
    type: string
    description: "Model of the assigned company phone"
    sql: ${TABLE}.phone_model ;;
  }
  dimension: phone_number {
    type: string
    description: "Contact phone number"
    sql: ${TABLE}.phone_number ;;
  }
  dimension_group: probation_period_end {
    type: time
    description: "End date of the probation period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.probation_period_end ;;
  }
  dimension_group: promotion {
    type: time
    description: "Date of last promotion"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.promotion_date ;;
  }
  dimension: promotion_title {
    type: string
    description: "Title received in the last promotion"
    sql: ${TABLE}.promotion_title ;;
  }
  dimension: quarterly_target {
    type: number
    description: "Quarterly sales target"
    sql: ${TABLE}.quarterly_target ;;
  }
  dimension: referral_bonus_earned {
    type: number
    description: "Total bonus earned from referrals"
    sql: ${TABLE}.referral_bonus_earned ;;
  }
  dimension: region {
    type: string
    description: "Geographic region assigned to the sales representative"
    sql: ${TABLE}.region ;;
  }
  dimension: remote_working_allowed {
    type: yesno
    description: "Indicates if remote working is allowed"
    sql: ${TABLE}.remote_working_allowed ;;
  }
  dimension_group: resignation {
    type: time
    description: "Date of resignation (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.resignation_date ;;
  }
  dimension: return_rate {
    type: number
    description: "Rate of product returns for this representative's sales"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: sales_achieved {
    type: number
    description: "Actual sales achieved by the representative"
    sql: ${TABLE}.sales_achieved ;;
  }
  dimension: sales_campaigns_participated_in {
    type: string
    description: "List of sales campaigns the representative has participated in"
    sql: ${TABLE}.sales_campaigns_participated_in ;;
  }
  dimension: sales_rep_feedback_received {
    type: string
    description: "Feedback received from managers or peers"
    sql: ${TABLE}.sales_rep_feedback_received ;;
  }
  dimension: sales_rep_id {
    type: number
    description: "Unique identifier for each sales representative"
    sql: ${TABLE}.sales_rep_id ;;
  }
  dimension: sales_rep_notes {
    type: string
    description: "Additional notes about the sales representative"
    sql: ${TABLE}.sales_rep_notes ;;
  }
  dimension: sales_target {
    type: number
    description: "Sales target assigned to the representative"
    sql: ${TABLE}.sales_target ;;
  }
  dimension: sales_territory_id {
    type: number
    description: "ID of the specific sales territory assigned"
    sql: ${TABLE}.sales_territory_id ;;
  }
  dimension: social_media_links {
    type: string
    description: "Links to the representative's professional social media profiles"
    sql: ${TABLE}.social_media_links ;;
  }
  dimension: stock_options_granted {
    type: yesno
    description: "Indicates if stock options have been granted"
    sql: ${TABLE}.stock_options_granted ;;
  }
  dimension: team_id {
    type: number
    description: "ID of the sales team the representative belongs to"
    sql: ${TABLE}.team_id ;;
  }
  dimension_group: termination {
    type: time
    description: "Date of termination (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.termination_date ;;
  }
  dimension: termination_reason {
    type: string
    description: "Reason for termination (if applicable)"
    sql: ${TABLE}.termination_reason ;;
  }
  dimension: territory {
    type: string
    description: "Specific sales territory within the region"
    sql: ${TABLE}.territory ;;
  }
  dimension: total_commission_earned {
    type: number
    description: "Total commission earned to date"
    sql: ${TABLE}.total_commission_earned ;;
  }
  dimension: total_sales_amount {
    type: number
    description: "Total monetary value of all sales"
    sql: ${TABLE}.total_sales_amount ;;
  }
  dimension: training_completed {
    type: yesno
    description: "Indicates if required training has been completed"
    sql: ${TABLE}.training_completed ;;
  }
  dimension: training_courses_attended {
    type: string
    description: "List of training courses attended"
    sql: ${TABLE}.training_courses_attended ;;
  }
  dimension: travel_expenses_claimed {
    type: number
    description: "Total travel expenses claimed"
    sql: ${TABLE}.travel_expenses_claimed ;;
  }
  dimension: travel_expenses_reimbursed {
    type: number
    description: "Total travel expenses reimbursed"
    sql: ${TABLE}.travel_expenses_reimbursed ;;
  }
  dimension: vacation_days {
    type: number
    description: "Number of vacation days taken"
    sql: ${TABLE}.vacation_days ;;
  }
  measure: count {
    type: count
    drill_fields: [emergency_contact_name, last_name, first_name]
  }
}