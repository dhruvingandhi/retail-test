# The name of this view in Looker is "Employees"
view: employees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Employees` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Department" in Explore.

  dimension: department {
    type: string
    description: "Department the employee works in"
    sql: ${TABLE}.department ;;
  }

  dimension: email {
    type: string
    description: "Email address of the employee (must be unique)"
    sql: ${TABLE}.email ;;
  }

  dimension: employee_id {
    type: number
    description: "Unique identifier for each employee"
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    description: "First name of the employee"
    sql: ${TABLE}.first_name ;;
  }

  dimension: hire_date {
    type: string
    description: "Date when the employee was hired"
    sql: ${TABLE}.hire_date ;;
  }

  dimension: is_active {
    type: yesno
    description: "Indicates if the employee is currently active"
    sql: ${TABLE}.is_active ;;
  }

  dimension: job_title {
    type: string
    description: "Current job title of the employee"
    sql: ${TABLE}.job_title ;;
  }

  dimension: last_name {
    type: string
    description: "Last name of the employee"
    sql: ${TABLE}.last_name ;;
  }

  dimension: manager_id {
    type: number
    description: "ID of the employee's manager"
    sql: ${TABLE}.manager_id ;;
  }

  dimension: phone_number {
    type: string
    description: "Contact phone number of the employee"
    sql: ${TABLE}.phone_number ;;
  }

  dimension: salary {
    type: number
    description: "Current salary of the employee"
    sql: ${TABLE}.salary ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
