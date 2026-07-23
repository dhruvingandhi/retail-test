view: product_reviews {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.ProductReviews` ;;

  dimension: customer_id {
    type: number
    description: "Foreign key referencing the customer who wrote the review"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: helpful_votes {
    type: number
    description: "Number of users who found this review helpful"
    sql: ${TABLE}.helpful_votes ;;
  }
  dimension: images_count {
    type: number
    description: "Number of images attached to the review"
    sql: ${TABLE}.images_count ;;
  }
  dimension: is_removed {
    type: yesno
    description: "Indicates if the review has been removed (e.g., for policy violations)"
    sql: ${TABLE}.is_removed ;;
  }
  dimension_group: last_updated {
    type: time
    description: "Date and time of the last update to the review"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_date ;;
  }
  dimension: order_id {
    type: number
    description: "Foreign key referencing the order associated with this review (if applicable)"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: product_id {
    type: number
    description: "Foreign key referencing the reviewed product"
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: purchase {
    type: time
    description: "Date when the product was purchased"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.purchase_date ;;
  }
  dimension: rating {
    type: number
    description: "Customer's rating for the product (1.0 to 5.0)"
    sql: ${TABLE}.rating ;;
  }
  dimension_group: response {
    type: time
    description: "Date and time of the seller's response"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.response_date ;;
  }
  dimension: response_from_seller {
    type: string
    description: "Seller's response to the review"
    sql: ${TABLE}.response_from_seller ;;
  }
  dimension_group: review {
    type: time
    description: "Date and time when the review was submitted"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.review_date ;;
  }
  dimension: review_id {
    type: number
    description: "Unique identifier for each review"
    sql: ${TABLE}.review_id ;;
  }
  dimension: review_text {
    type: string
    description: "Full text of the review"
    sql: ${TABLE}.review_text ;;
  }
  dimension: review_title {
    type: string
    description: "Title of the review"
    sql: ${TABLE}.review_title ;;
  }
  dimension: reviewer_location {
    type: string
    description: "Location of the reviewer"
    sql: ${TABLE}.reviewer_location ;;
  }
  dimension: reviewer_name {
    type: string
    description: "Name of the reviewer (may be different from customer name for privacy)"
    sql: ${TABLE}.reviewer_name ;;
  }
  dimension: unhelpful_votes {
    type: number
    description: "Number of users who found this review unhelpful"
    sql: ${TABLE}.unhelpful_votes ;;
  }
  dimension: verified_purchase {
    type: yesno
    description: "Indicates if the reviewer has verifiably purchased the product"
    sql: ${TABLE}.verified_purchase ;;
  }
  dimension: video_url {
    type: string
    description: "URL of a video review (if applicable)"
    sql: ${TABLE}.video_url ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      reviewer_name,
      products.product_id,
      products.product_name,
      customers.first_name,
      customers.last_name,
      customers.customer_id,
      orders.order_id,
      orders.delivery_contact_name
    ]
  }

}