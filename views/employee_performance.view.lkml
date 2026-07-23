view: employee_performance {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.EmployeePerformance` ;;

  dimension: action_items {
    type: string
    description: "Action items for improvement"
    sql: ${TABLE}.action_items ;;
  }
  dimension: actual_sales {
    type: number
    description: "Actual sales achieved by the employee"
    sql: ${TABLE}.actual_sales ;;
  }
  dimension: adaptability_rating {
    type: number
    description: "Rating for adaptability (1-10)"
    sql: ${TABLE}.adaptability_rating ;;
  }
  dimension: areas_for_improvement {
    type: string
    description: "Areas identified for improvement"
    sql: ${TABLE}.areas_for_improvement ;;
  }
  dimension: attendance_rate {
    type: number
    description: "Employee's attendance rate as a percentage"
    sql: ${TABLE}.attendance_rate ;;
  }
  dimension: average_response_time {
    type: number
    description: "Average response time to customer inquiries"
    sql: ${TABLE}.average_response_time ;;
  }
  dimension: awards_received {
    type: number
    description: "Number of awards or recognitions received"
    sql: ${TABLE}.awards_received ;;
  }
  dimension: brand_ambassador_score {
    type: number
    description: "Score as a brand ambassador (0-5)"
    sql: ${TABLE}.brand_ambassador_score ;;
  }
  dimension: budget_adherence_rate {
    type: number
    description: "Rate of adherence to budget"
    sql: ${TABLE}.budget_adherence_rate ;;
  }
  dimension: career_development_plan_status {
    type: string
    description: "Status of career development plan"
    sql: ${TABLE}.career_development_plan_status ;;
  }
  dimension: certifications_earned {
    type: number
    description: "Number of new certifications earned"
    sql: ${TABLE}.certifications_earned ;;
  }
  dimension: client_feedback_score {
    type: number
    description: "Average score from client feedback (0-5)"
    sql: ${TABLE}.client_feedback_score ;;
  }
  dimension: comments {
    type: string
    description: "Additional comments on the performance"
    sql: ${TABLE}.comments ;;
  }
  dimension: communication_rating {
    type: number
    description: "Rating for communication skills (1-10)"
    sql: ${TABLE}.communication_rating ;;
  }
  dimension: compliance_violations {
    type: number
    description: "Number of compliance violations"
    sql: ${TABLE}.compliance_violations ;;
  }
  dimension: conflict_resolution_rating {
    type: number
    description: "Rating for conflict resolution skills (1-10)"
    sql: ${TABLE}.conflict_resolution_rating ;;
  }
  dimension: cost_saving_initiatives {
    type: number
    description: "Number of cost-saving initiatives proposed"
    sql: ${TABLE}.cost_saving_initiatives ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp of record creation"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    description: "ID of employee who created the record"
    sql: ${TABLE}.created_by ;;
  }
  dimension: creativity_rating {
    type: number
    description: "Rating for creativity (1-10)"
    sql: ${TABLE}.creativity_rating ;;
  }
  dimension: cross_department_collaboration_score {
    type: number
    description: "Score for cross-department collaboration (0-5)"
    sql: ${TABLE}.cross_department_collaboration_score ;;
  }
  dimension: cultural_fit_rating {
    type: number
    description: "Rating for cultural fit (1-10)"
    sql: ${TABLE}.cultural_fit_rating ;;
  }
  dimension: customer_impact_score {
    type: number
    description: "Score of impact on customer satisfaction (0-5)"
    sql: ${TABLE}.customer_impact_score ;;
  }
  dimension: customer_retention_rate {
    type: number
    description: "Customer retention rate achieved"
    sql: ${TABLE}.customer_retention_rate ;;
  }
  dimension: customer_satisfaction_score {
    type: number
    description: "Score reflecting customer satisfaction (0-5)"
    sql: ${TABLE}.customer_satisfaction_score ;;
  }
  dimension: data_entry_error_rate {
    type: number
    description: "Rate of errors in data entry"
    sql: ${TABLE}.data_entry_error_rate ;;
  }
  dimension: deadlines_met_percentage {
    type: number
    description: "Percentage of deadlines met"
    sql: ${TABLE}.deadlines_met_percentage ;;
  }
  dimension: decision_making_rating {
    type: number
    description: "Rating for decision-making skills (1-10)"
    sql: ${TABLE}.decision_making_rating ;;
  }
  dimension: diversity_and_inclusion_rating {
    type: number
    description: "Rating for promoting diversity and inclusion (1-10)"
    sql: ${TABLE}.diversity_and_inclusion_rating ;;
  }
  dimension: efficiency_rating {
    type: number
    description: "Rating for efficiency (1-10)"
    sql: ${TABLE}.efficiency_rating ;;
  }
  dimension: employee_id {
    type: number
    description: "ID of the employee being evaluated"
    # hidden: yes
    sql: ${TABLE}.employee_id ;;
  }
  dimension: ethics_and_integrity_rating {
    type: number
    description: "Rating for ethics and integrity (1-10)"
    sql: ${TABLE}.ethics_and_integrity_rating ;;
  }
  dimension: feedback_given_to_others_count {
    type: number
    description: "Count of feedback instances given to others"
    sql: ${TABLE}.feedback_given_to_others_count ;;
  }
  dimension: feedback_received_count {
    type: number
    description: "Count of feedback instances received"
    sql: ${TABLE}.feedback_received_count ;;
  }
  dimension: first_call_resolution_rate {
    type: number
    description: "Rate of issues resolved on first contact"
    sql: ${TABLE}.first_call_resolution_rate ;;
  }
  dimension: goal_achievement_rate {
    type: number
    description: "Percentage of goals achieved"
    sql: ${TABLE}.goal_achievement_rate ;;
  }
  dimension: goal_setting_participation_rate {
    type: number
    description: "Rate of participation in goal setting"
    sql: ${TABLE}.goal_setting_participation_rate ;;
  }
  dimension: high_potential_program_status {
    type: string
    description: "Status in high potential employee program"
    sql: ${TABLE}.high_potential_program_status ;;
  }
  dimension: initiative_rating {
    type: number
    description: "Rating for taking initiative (1-10)"
    sql: ${TABLE}.initiative_rating ;;
  }
  dimension: innovation_index {
    type: number
    description: "Index of innovation contribution (0-5)"
    sql: ${TABLE}.innovation_index ;;
  }
  dimension: innovation_rating {
    type: number
    description: "Rating for innovation (1-10)"
    sql: ${TABLE}.innovation_rating ;;
  }
  dimension: internal_mobility_index {
    type: number
    description: "Index of internal job mobility (0-5)"
    sql: ${TABLE}.internal_mobility_index ;;
  }
  dimension: job_satisfaction_score {
    type: number
    description: "Employee's job satisfaction score (0-5)"
    sql: ${TABLE}.job_satisfaction_score ;;
  }
  dimension: kpi_achievement_rate {
    type: number
    description: "Percentage of KPIs achieved"
    sql: ${TABLE}.kpi_achievement_rate ;;
  }
  dimension: language_proficiency_scores {
    type: string
    description: "JSON or comma-separated list of language proficiency scores"
    sql: ${TABLE}.language_proficiency_scores ;;
  }
  dimension_group: last_promotion {
    type: time
    description: "Date of last promotion"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_promotion_date ;;
  }
  dimension_group: last_raise {
    type: time
    description: "Date of last salary raise"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_raise_date ;;
  }
  dimension: leadership_rating {
    type: number
    description: "Rating for leadership skills (1-10)"
    sql: ${TABLE}.leadership_rating ;;
  }
  dimension: manager_assessment_score {
    type: number
    description: "Score from manager's assessment (0-5)"
    sql: ${TABLE}.manager_assessment_score ;;
  }
  dimension: mentoring_hours {
    type: number
    description: "Hours spent mentoring others"
    sql: ${TABLE}.mentoring_hours ;;
  }
  dimension: mentorship_program_participation {
    type: yesno
    description: "Indicates participation in mentorship program"
    sql: ${TABLE}.mentorship_program_participation ;;
  }
  dimension: networking_events_attended {
    type: number
    description: "Number of networking events attended"
    sql: ${TABLE}.networking_events_attended ;;
  }
  dimension: number_of_complaints {
    type: number
    description: "Number of customer complaints received"
    sql: ${TABLE}.number_of_complaints ;;
  }
  dimension: number_of_compliments {
    type: number
    description: "Number of customer compliments received"
    sql: ${TABLE}.number_of_compliments ;;
  }
  dimension: overall_rating {
    type: number
    description: "Overall performance rating (0-5)"
    sql: ${TABLE}.overall_rating ;;
  }
  dimension: overtime_hours {
    type: number
    description: "Number of overtime hours worked"
    sql: ${TABLE}.overtime_hours ;;
  }
  dimension: peer_recognition_count {
    type: number
    description: "Number of recognitions from peers"
    sql: ${TABLE}.peer_recognition_count ;;
  }
  dimension: peer_review_score {
    type: number
    description: "Average score from peer reviews (0-5)"
    sql: ${TABLE}.peer_review_score ;;
  }
  dimension: performance_id {
    type: number
    description: "Unique identifier for each performance record"
    sql: ${TABLE}.performance_id ;;
  }
  dimension: performance_improvement_plan_status {
    type: string
    description: "Status of performance improvement plan"
    sql: ${TABLE}.performance_improvement_plan_status ;;
  }
  dimension: presentations_given {
    type: number
    description: "Number of presentations given"
    sql: ${TABLE}.presentations_given ;;
  }
  dimension: previous_review_follow_up_status {
    type: string
    description: "Status of follow-up from previous review"
    sql: ${TABLE}.previous_review_follow_up_status ;;
  }
  dimension: problem_solving_rating {
    type: number
    description: "Rating for problem-solving skills (1-10)"
    sql: ${TABLE}.problem_solving_rating ;;
  }
  dimension: process_improvements_implemented {
    type: number
    description: "Number of process improvements implemented"
    sql: ${TABLE}.process_improvements_implemented ;;
  }
  dimension: process_improvements_suggested {
    type: number
    description: "Number of process improvements suggested"
    sql: ${TABLE}.process_improvements_suggested ;;
  }
  dimension: productivity_score {
    type: number
    description: "Overall productivity score (0-5)"
    sql: ${TABLE}.productivity_score ;;
  }
  dimension: professional_development_goals {
    type: string
    description: "Description of professional development goals"
    sql: ${TABLE}.professional_development_goals ;;
  }
  dimension: project_management_rating {
    type: number
    description: "Rating for project management skills (1-10)"
    sql: ${TABLE}.project_management_rating ;;
  }
  dimension: projects_completed {
    type: number
    description: "Number of projects completed"
    sql: ${TABLE}.projects_completed ;;
  }
  dimension: projects_in_progress {
    type: number
    description: "Number of ongoing projects"
    sql: ${TABLE}.projects_in_progress ;;
  }
  dimension: promotion_readiness_rating {
    type: number
    description: "Rating for readiness for promotion (1-10)"
    sql: ${TABLE}.promotion_readiness_rating ;;
  }
  dimension: quality_of_work_rating {
    type: number
    description: "Rating for quality of work (1-10)"
    sql: ${TABLE}.quality_of_work_rating ;;
  }
  dimension: quantity_of_work_rating {
    type: number
    description: "Rating for quantity of work (1-10)"
    sql: ${TABLE}.quantity_of_work_rating ;;
  }
  dimension: remote_work_effectiveness_score {
    type: number
    description: "Score for effectiveness in remote work (0-5)"
    sql: ${TABLE}.remote_work_effectiveness_score ;;
  }
  dimension: reporting_accuracy_rate {
    type: number
    description: "Accuracy rate of employee's reporting"
    sql: ${TABLE}.reporting_accuracy_rate ;;
  }
  dimension: retention_risk_score {
    type: number
    description: "Score indicating risk of employee leaving (0-5)"
    sql: ${TABLE}.retention_risk_score ;;
  }
  dimension: revenue_generating_ideas {
    type: number
    description: "Number of revenue-generating ideas proposed"
    value_format_name: id
    sql: ${TABLE}.revenue_generating_ideas ;;
  }
  dimension_group: review {
    type: time
    description: "Date and time of the review"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.review_date ;;
  }
  dimension_group: review_period_end {
    type: time
    description: "End date of the review period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.review_period_end ;;
  }
  dimension_group: review_period_start {
    type: time
    description: "Start date of the review period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.review_period_start ;;
  }
  dimension: reviewer_id {
    type: number
    description: "ID of the employee conducting the review"
    sql: ${TABLE}.reviewer_id ;;
  }
  dimension: safety_incidents {
    type: number
    description: "Number of safety incidents reported"
    sql: ${TABLE}.safety_incidents ;;
  }
  dimension: sales_target {
    type: number
    description: "Sales target set for the employee"
    sql: ${TABLE}.sales_target ;;
  }
  dimension: self_assessment_score {
    type: number
    description: "Score from self-assessment (0-5)"
    sql: ${TABLE}.self_assessment_score ;;
  }
  dimension: sick_leave_days {
    type: number
    description: "Number of sick leave days taken"
    sql: ${TABLE}.sick_leave_days ;;
  }
  dimension: social_media_engagement_score {
    type: number
    description: "Score for social media engagement (0-5)"
    sql: ${TABLE}.social_media_engagement_score ;;
  }
  dimension: software_proficiency_score {
    type: number
    description: "Score for proficiency in required software (0-5)"
    sql: ${TABLE}.software_proficiency_score ;;
  }
  dimension: strengths {
    type: string
    description: "Identified strengths of the employee"
    sql: ${TABLE}.strengths ;;
  }
  dimension: stress_management_rating {
    type: number
    description: "Rating for stress management (1-10)"
    sql: ${TABLE}.stress_management_rating ;;
  }
  dimension: succession_planning_status {
    type: string
    description: "Status in succession planning"
    sql: ${TABLE}.succession_planning_status ;;
  }
  dimension: system_utilization_rate {
    type: number
    description: "Rate of utilization of company systems"
    sql: ${TABLE}.system_utilization_rate ;;
  }
  dimension: tardiness_frequency {
    type: number
    description: "Number of times employee was late"
    sql: ${TABLE}.tardiness_frequency ;;
  }
  dimension: team_collaboration_score {
    type: number
    description: "Score for team collaboration (0-5)"
    sql: ${TABLE}.team_collaboration_score ;;
  }
  dimension: teamwork_rating {
    type: number
    description: "Rating for teamwork skills (1-10)"
    sql: ${TABLE}.teamwork_rating ;;
  }
  dimension: technical_skills_rating {
    type: number
    description: "Rating for technical skills (1-10)"
    sql: ${TABLE}.technical_skills_rating ;;
  }
  dimension: time_management_rating {
    type: number
    description: "Rating for time management skills (1-10)"
    sql: ${TABLE}.time_management_rating ;;
  }
  dimension: training_completed {
    type: number
    description: "Number of training programs completed"
    sql: ${TABLE}.training_completed ;;
  }
  dimension: training_hours_completed {
    type: number
    description: "Total hours of training completed"
    sql: ${TABLE}.training_hours_completed ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of last update"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    description: "ID of employee who last updated the record"
    sql: ${TABLE}.updated_by ;;
  }
  dimension: upselling_performance {
    type: number
    description: "Performance in upselling (percentage)"
    sql: ${TABLE}.upselling_performance ;;
  }
  dimension: vacation_days_taken {
    type: number
    description: "Number of vacation days taken"
    sql: ${TABLE}.vacation_days_taken ;;
  }
  dimension: weaknesses {
    type: string
    description: "Identified weaknesses of the employee"
    sql: ${TABLE}.weaknesses ;;
  }
  dimension: work_life_balance_rating {
    type: number
    description: "Rating for maintaining work-life balance (1-10)"
    sql: ${TABLE}.work_life_balance_rating ;;
  }
  dimension: years_in_current_role {
    type: number
    description: "Years in current role"
    sql: ${TABLE}.years_in_current_role ;;
  }
  dimension: years_with_company {
    type: number
    description: "Total years with the company"
    sql: ${TABLE}.years_with_company ;;
  }
  measure: count {
    type: count
    drill_fields: [employees.employee_id, employees.last_name, employees.first_name]
  }
}