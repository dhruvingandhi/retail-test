view: sales_transaction {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.SalesTransaction` ;;

  dimension: billing_address_id {
    type: number
    description: "ID of the billing address (Foreign key to Addresses table)"
    sql: ${TABLE}.billing_address_id ;;
  }
  dimension: channel {
    type: string
    description: "Sales channel used (e.g., 'In-store', 'Online', 'Mobile app')"
    sql: ${TABLE}.channel ;;
  }
  dimension: coupon_code {
    type: string
    description: "Coupon code used, if any"
    sql: ${TABLE}.coupon_code ;;
  }
  dimension_group: created {
    type: time
    description: "Timestamp when the transaction record was created"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: currency_code {
    type: string
    description: "ISO currency code for the transaction"
    sql: ${TABLE}.currency_code ;;
  }
  dimension: customer_id {
    type: number
    description: "ID of the customer, if available (Foreign key to CustomerProfile table)"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: device_type {
    type: string
    description: "Type of device used for online transactions (e.g., 'Desktop', 'Mobile', 'Tablet')"
    sql: ${TABLE}.device_type ;;
  }
  dimension: discount_amount {
    type: number
    description: "Total discount applied to the transaction"
    sql: ${TABLE}.discount_amount ;;
  }
  dimension: employee_id {
    type: number
    description: "ID of the employee who processed the transaction (Foreign key to Employees table)"
    # hidden: yes
    sql: ${TABLE}.employee_id ;;
  }
  dimension: exchange_rate {
    type: number
    description: "Exchange rate used for currency conversion, if applicable"
    sql: ${TABLE}.exchange_rate ;;
  }
  dimension: gift_message {
    type: string
    description: "Gift message, if provided"
    sql: ${TABLE}.gift_message ;;
  }
  dimension: gift_wrap {
    type: yesno
    description: "Indicates if gift wrapping was requested"
    sql: ${TABLE}.gift_wrap ;;
  }
  dimension: ip_address {
    type: string
    description: "IP address for online transactions"
    sql: ${TABLE}.ip_address ;;
  }
  dimension: is_online {
    type: yesno
    description: "Indicates if the transaction was made online"
    sql: ${TABLE}.is_online ;;
  }
  dimension: items_count {
    type: number
    description: "Number of items in the transaction"
    sql: ${TABLE}.items_count ;;
  }
  dimension: loyalty_points_earned {
    type: number
    description: "Number of loyalty points earned from this transaction"
    sql: ${TABLE}.loyalty_points_earned ;;
  }
  dimension: loyalty_points_redeemed {
    type: number
    description: "Number of loyalty points redeemed in this transaction"
    sql: ${TABLE}.loyalty_points_redeemed ;;
  }
  dimension: notes {
    type: string
    description: "Additional notes about the transaction"
    sql: ${TABLE}.notes ;;
  }
  dimension: order_id {
    type: number
    description: "Associated order ID, if applicable (Foreign key to Orders table)"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: payment_method {
    type: string
    description: "Method of payment used (e.g., 'Credit Card', 'Cash', 'PayPal')"
    sql: ${TABLE}.payment_method ;;
  }
  dimension: payment_status {
    type: string
    description: "Current status of the payment (e.g., 'Completed', 'Pending', 'Failed')"
    sql: ${TABLE}.payment_status ;;
  }
  dimension: promotion_id {
    type: number
    description: "ID of the promotion applied, if any (Foreign key to Promotions table)"
    # hidden: yes
    sql: ${TABLE}.promotion_id ;;
  }
  dimension: refund_id {
    type: number
    description: "Associated refund ID, if applicable (Foreign key to Refunds table)"
    # hidden: yes
    sql: ${TABLE}.refund_id ;;
  }
  dimension: shipping_address_id {
    type: number
    description: "ID of the shipping address (Foreign key to Addresses table)"
    sql: ${TABLE}.shipping_address_id ;;
  }
  dimension: shipping_amount {
    type: number
    description: "Shipping cost, if applicable"
    sql: ${TABLE}.shipping_amount ;;
  }
  dimension: shipping_method {
    type: string
    description: "Method of shipping, for online orders"
    sql: ${TABLE}.shipping_method ;;
  }
  dimension: store_id {
    type: number
    description: "ID of the store where the transaction occurred (Foreign key to Stores table)"
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }
  dimension: subtotal {
    type: number
    description: "Subtotal amount before tax and discounts"
    sql: ${TABLE}.subtotal ;;
  }
  dimension: tax_amount {
    type: number
    description: "Amount of tax applied to the transaction"
    sql: ${TABLE}.tax_amount ;;
  }
  dimension: terminal_id {
    type: number
    description: "ID of the point-of-sale terminal used for the transaction"
    sql: ${TABLE}.terminal_id ;;
  }
  dimension: total_amount {
    type: number
    description: "Total amount of the transaction including tax and shipping"
    sql: ${TABLE}.total_amount ;;
  }
  dimension: tracking_number {
    type: string
    description: "Tracking number for shipped orders"
    sql: ${TABLE}.tracking_number ;;
  }
  dimension_group: transaction {
    type: time
    description: "Date and time when the transaction occurred"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transaction_id {
    type: number
    description: "Unique identifier for each sales transaction"
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }
  dimension_group: updated {
    type: time
    description: "Timestamp of the last update to the transaction record"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_agent {
    type: string
    description: "User agent string for online transactions"
    sql: ${TABLE}.user_agent ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      promotions.promotion_name,
      promotions.promotion_id,
      transactions.refund_transaction_id,
      stores.store_id,
      stores.store_name,
      refunds.refund_id,
      employees.employee_id,
      employees.last_name,
      employees.first_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      orders.order_id,
      orders.delivery_contact_name
    ]
  }

}