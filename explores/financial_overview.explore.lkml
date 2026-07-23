include: "/views/customers.view.lkml"
include: "/views/invoices.view.lkml"
include: "/views/orders.view.lkml"
include: "/views/payment_details.view.lkml"
include: "/views/dt_customer_fact_table.view.lkml"

explore: orders {
  label: "Finance Overview"
  description: "This Finance Overview provides comprehensive insights into your financial operations, including revenue trends, customer segmentation, accounts receivable and aging, common payment methods, and detailed information on refunds and chargebacks."
  query: revenue_trend {
    label: "Revenue Trend"
    description: "What is the trend of total sales revenue by quarter broken down by sales channels?"
    dimensions: [orders.order_quarter]
    measures: [total_sales_revenue]
    pivots: [orders.sales_channel]
  }
  query: average_orders_by_customer_segment {
    label: "Average Orders by Customer Segment"
    description: "What is the average order value for active users and how does it vary across different customer segments?"
    dimensions: [customers.customer_segment]
    measures: [average_order_value]
    filters: [customers.is_active: "Yes"]
  }
  query: outstanding_receivables_and_aging {
    label: "Outstanding Receivables and Aging"
    description: "Which 100 invoices have the greatest current outstanding accounts receivable balance and how are they aging?"
    dimensions: [invoices.invoice_id]
    measures: [invoices.average_days_aged, invoices.total_balance_due]
    sorts: [invoices.total_balance_due: desc]
    limit: 100
  }
  query: most_common_payment_methods {
    label: "Most Common Payment Methods"
    description: "What are the most common payment methods used by customers in the USA and what are their respective total volumes and amounts?"
    dimensions: [payment_details.payment_method]
    measures: [payment_details.payment_count, payment_details.total_payment_amount]
    filters: [customers.country: "USA"]
  }
  query: refunds_and_chargebacks {
    label: "Refunds and Chargebacks"
    description: "What is the rate and amount of refunds and chargebacks, and what are the primary reasons?"
    dimensions: [invoices.reversal_reason]
    measures: [payment_details.chargeback_rate, payment_details.refund_rate, payment_details.total_chargeback_amount, payment_details.total_refund_amount]
  }
  join: customers {
    view_label: "Customers"
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
  join: invoices {
    view_label: "Invoices"
    type: left_outer
    sql_on: ${orders.order_id} = ${invoices.order_id} ;;
    relationship: one_to_many
  }
  join: payment_details {
    view_label: "Payment Details"
    type: left_outer
    sql_on: ${invoices.invoice_id} = ${payment_details.invoice_id} ;;
    relationship: one_to_many
  }
  join: dt_customer_fact_table {
    view_label: "Customer Lifetime Facts"
    type: left_outer
    sql_on: ${orders.customer_id} = ${dt_customer_fact_table.customer_id} ;;
    relationship: many_to_one
  }
}
