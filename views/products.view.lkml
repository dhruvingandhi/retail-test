view: products {
  sql_table_name: `nl2lq-eval-looker-bq-data.retail_whole.Products` ;;
  drill_fields: [product_id]

  fields_hidden_by_default: yes

  dimension: product_id {
    primary_key: yes
    hidden: no
    type: number
    description: "Unique identifier for each product"
    sql: ${TABLE}.product_id ;;
  }
  dimension: advertising_costs {
    type: number
    description: "Costs associated with advertising this product"
    sql: ${TABLE}.advertising_costs ;;
  }
  dimension: available_online {
    type: yesno
    description: "Indicates if the product is available for online purchase"
    sql: ${TABLE}.available_online ;;
  }
  dimension: average_rating {
    type: number
    description: "Average customer rating (scale of 0-5)"
    sql: ${TABLE}.average_rating ;;
  }
  dimension: backorder_quantity {
    type: number
    description: "Quantity of product on backorder"
    sql: ${TABLE}.backorder_quantity ;;
  }
  dimension: barcode {
    type: string
    description: "Barcode number of the product"
    sql: ${TABLE}.barcode ;;
  }
  dimension: brand {
    hidden: no
    type: string
    description: "Brand name of the product"
    sql: ${TABLE}.brand ;;
  }
  dimension: bulk_discount {
    type: number
    description: "Discount percentage for bulk purchases"
    sql: ${TABLE}.bulk_discount ;;
  }
  dimension: category {
    hidden: no
    type: string
    description: "Main category of the product"
    sql: ${TABLE}.category ;;
  }
  dimension: certification_standards {
    type: string
    description: "Any certification standards met by the product"
    sql: ${TABLE}.certification_standards ;;
  }
  dimension: color {
    type: string
    description: "Color of the product"
    sql: ${TABLE}.color ;;
  }
  dimension: compliance_certificate {
    type: string
    description: "Details of compliance certificates held"
    sql: ${TABLE}.compliance_certificate ;;
  }
  dimension: cost_price {
    hidden: no
    type: number
    description: "Cost price of the product from the supplier"
    sql: ${TABLE}.cost_price ;;
  }
  dimension: cross_sell_products {
    type: string
    description: "List of product IDs recommended for cross-selling"
    sql: ${TABLE}.cross_sell_products ;;
  }
  dimension: custom_duties {
    type: number
    description: "Custom duties applicable to the product"
    sql: ${TABLE}.custom_duties ;;
  }
  dimension: description {
    hidden: no
    type: string
    description: "Detailed description of the product"
    sql: ${TABLE}.description ;;
  }
  dimension: dimensions {
    type: string
    description: "Dimensions of the product (e.g., \"10x20x30 cm\")"
    sql: ${TABLE}.dimensions ;;
  }
  dimension: discount_percentage {
    type: number
    description: "Current discount percentage"
    sql: ${TABLE}.discount_percentage ;;
  }
  dimension: eco_friendly_rating {
    type: number
    description: "Rating of the product's eco-friendliness (scale of 0-5)"
    sql: ${TABLE}.eco_friendly_rating ;;
  }
  dimension: exchange_policy {
    type: string
    description: "Policy for exchanging the product"
    sql: ${TABLE}.exchange_policy ;;
  }
  dimension: expected_demand {
    type: number
    description: "Predicted demand for the product"
    sql: ${TABLE}.expected_demand ;;
  }
  dimension_group: expiry {
    type: time
    description: "Expiration date of the product (if applicable)"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiry_date ;;
  }
  dimension: handling_fee {
    type: number
    description: "Additional handling fee for the product"
    sql: ${TABLE}.handling_fee ;;
  }
  dimension: handling_instructions {
    type: string
    description: "Special instructions for handling the product"
    sql: ${TABLE}.handling_instructions ;;
  }
  dimension: high_demand_alert {
    type: yesno
    description: "Indicates if a high demand alert is currently active"
    sql: ${TABLE}.high_demand_alert ;;
  }
  dimension: hs_code {
    type: string
    description: "Harmonized System code for international trade"
    sql: ${TABLE}.hs_code ;;
  }
  dimension: image_url {
    type: string
    description: "URL of the product image"
    sql: ${TABLE}.image_url ;;
  }
  dimension: inventory_age {
    hidden: no
    type: number
    description: "Age of the inventory (in days)"
    sql: ${TABLE}.inventory_age ;;
  }
  dimension: inventory_turnover {
    hidden: no
    type: number
    description: "Rate at which inventory is sold and replaced"
    sql: ${TABLE}.inventory_turnover ;;
  }
  dimension: inventory_value {
    type: number
    description: "Total value of current inventory for this product"
    sql: ${TABLE}.inventory_value ;;
  }
  dimension: is_active {
    hidden: no
    type: yesno
    description: "Indicates if the product is currently active in the inventory"
    sql: ${TABLE}.is_active ;;
  }
  dimension: is_discontinued {
    type: yesno
    description: "Indicates if the product has been discontinued"
    sql: ${TABLE}.is_discontinued ;;
  }
  dimension: is_fragile {
    type: yesno
    description: "Indicates if the product requires special handling due to fragility"
    sql: ${TABLE}.is_fragile ;;
  }
  dimension: is_recyclable {
    type: yesno
    description: "Indicates if the product is recyclable"
    sql: ${TABLE}.is_recyclable ;;
  }
  dimension: is_sustainable_packaging {
    type: yesno
    description: "Indicates if the packaging is environmentally sustainable"
    sql: ${TABLE}.is_sustainable_packaging ;;
  }
  dimension_group: last_inspection {
    type: time
    description: "Date of the last quality inspection"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_inspection_date ;;
  }
  dimension_group: last_sold {
    type: time
    description: "Date when the product was last sold"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_sold_date ;;
  }
  dimension: lead_time {
    type: number
    description: "Time taken from order placement to delivery (in days)"
    sql: ${TABLE}.lead_time ;;
  }
  dimension: logistics_partner {
    type: string
    description: "Preferred logistics partner for this product"
    sql: ${TABLE}.logistics_partner ;;
  }
  dimension: low_stock_alert {
    type: yesno
    description: "Indicates if a low stock alert is currently active"
    sql: ${TABLE}.low_stock_alert ;;
  }
  dimension: manufacturer_details {
    type: string
    description: "Details about the manufacturer"
    sql: ${TABLE}.manufacturer_details ;;
  }
  dimension_group: manufacturing {
    type: time
    description: "Date the product was manufactured"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.manufacturing_date ;;
  }
  dimension: market_segment {
    type: string
    description: "Market segment the product is aimed at"
    sql: ${TABLE}.market_segment ;;
  }
  dimension: markup_percentage {
    type: number
    description: "Percentage markup on the cost price"
    sql: ${TABLE}.markup_percentage ;;
  }
  dimension: material {
    type: string
    description: "Material the product is made of"
    sql: ${TABLE}.material ;;
  }
  dimension: max_order_quantity {
    type: number
    description: "Maximum quantity that can be ordered"
    sql: ${TABLE}.max_order_quantity ;;
  }
  dimension: maximum_stock_level {
    type: number
    description: "Maximum quantity to maintain in stock"
    sql: ${TABLE}.maximum_stock_level ;;
  }
  dimension: min_order_quantity {
    type: number
    description: "Minimum quantity that can be ordered"
    sql: ${TABLE}.min_order_quantity ;;
  }
  dimension: minimum_stock_level {
    type: number
    description: "Minimum quantity to maintain in stock"
    sql: ${TABLE}.minimum_stock_level ;;
  }
  dimension: model {
    hidden: no
    type: string
    description: "Model number or name of the product"
    sql: ${TABLE}.model ;;
  }
  dimension_group: next_inspection {
    type: time
    description: "Scheduled date for the next quality inspection"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.next_inspection_date ;;
  }
  dimension: number_of_reviews {
    type: number
    description: "Number of customer reviews"
    sql: ${TABLE}.number_of_reviews ;;
  }
  dimension: online_discount {
    type: number
    description: "Discount percentage for online purchases"
    sql: ${TABLE}.online_discount ;;
  }
  dimension: origin_country {
    type: string
    description: "Country where the product was manufactured"
    sql: ${TABLE}.origin_country ;;
  }
  dimension_group: out_of_stock {
    type: time
    description: "Date when the product went out of stock"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.out_of_stock_date ;;
  }
  dimension: packaging_material {
    type: string
    description: "Material used for packaging the product"
    sql: ${TABLE}.packaging_material ;;
  }
  dimension: price {
    type: number
    description: "Selling price of the product"
    sql: ${TABLE}.price ;;
  }
  dimension: priority_shipping {
    type: yesno
    description: "Indicates if the product is eligible for priority shipping"
    sql: ${TABLE}.priority_shipping ;;
  }
  dimension: product_line {
    type: string
    description: "Product line or family this product belongs to"
    sql: ${TABLE}.product_line ;;
  }
  dimension: product_margin {
    type: number
    description: "Profit margin percentage for the product"
    sql: ${TABLE}.product_margin ;;
  }
  dimension: product_name {
    hidden: no
    type: string
    description: "Name of the product"
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_url {
    type: string
    description: "URL of the product page on the company website"
    sql: ${TABLE}.product_url ;;
  }
  dimension: production_batch {
    type: string
    description: "Batch number for production tracking"
    sql: ${TABLE}.production_batch ;;
  }
  dimension: promotional_campaign {
    type: string
    description: "Details of any current promotional campaigns"
    sql: ${TABLE}.promotional_campaign ;;
  }
  dimension: promotional_price {
    type: number
    description: "Price during promotions"
    sql: ${TABLE}.promotional_price ;;
  }
  dimension: quality_control_passed {
    type: yesno
    description: "Indicates if the product passed quality control"
    sql: ${TABLE}.quality_control_passed ;;
  }
  dimension: related_products {
    type: string
    description: "List of related product IDs"
    sql: ${TABLE}.related_products ;;
  }
  dimension: reorder_level {
    type: number
    description: "Quantity at which to reorder the product"
    sql: ${TABLE}.reorder_level ;;
  }
  dimension: reorder_quantity {
    type: number
    description: "Quantity to reorder when stock reaches reorder level"
    sql: ${TABLE}.reorder_quantity ;;
  }
  dimension_group: replenishment {
    type: time
    description: "Expected date of stock replenishment"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.replenishment_date ;;
  }
  dimension: restocking_fee {
    type: number
    description: "Fee charged for restocking returned items"
    sql: ${TABLE}.restocking_fee ;;
  }
  dimension: retail_price {
    type: number
    description: "Retail price of the product"
    sql: ${TABLE}.retail_price ;;
  }
  dimension: return_policy {
    type: string
    description: "Return policy specific to this product"
    sql: ${TABLE}.return_policy ;;
  }
  dimension: return_rate {
    type: number
    description: "Percentage of products returned by customers"
    sql: ${TABLE}.return_rate ;;
  }
  dimension: sales_trend {
    type: string
    description: "Current sales trend of the product"
    sql: ${TABLE}.sales_trend ;;
  }
  dimension: seasonal_availability {
    type: yesno
    description: "Indicates if the product is seasonally available"
    sql: ${TABLE}.seasonal_availability ;;
  }
  dimension: seasonal_trend {
    type: string
    description: "Seasonal trend of the product"
    sql: ${TABLE}.seasonal_trend ;;
  }
  dimension: shelf_life {
    type: number
    description: "Shelf life of the product (in days)"
    sql: ${TABLE}.shelf_life ;;
  }
  dimension: shipment_alert {
    type: yesno
    description: "Indicates if a shipment alert is currently active"
    sql: ${TABLE}.shipment_alert ;;
  }
  dimension: shipping_cost {
    type: number
    description: "Cost of shipping the product"
    sql: ${TABLE}.shipping_cost ;;
  }
  dimension: shipping_depth {
    type: number
    description: "Depth of the product for shipping"
    sql: ${TABLE}.shipping_depth ;;
  }
  dimension: shipping_height {
    type: number
    description: "Height of the product for shipping"
    sql: ${TABLE}.shipping_height ;;
  }
  dimension: shipping_weight {
    type: number
    description: "Weight of the product for shipping purposes"
    sql: ${TABLE}.shipping_weight ;;
  }
  dimension: shipping_width {
    type: number
    description: "Width of the product for shipping"
    sql: ${TABLE}.shipping_width ;;
  }
  dimension: sku {
    hidden: no
    type: string
    description: "Stock Keeping Unit, unique identifier for inventory management"
    sql: ${TABLE}.sku ;;
  }
  dimension: stock_alert {
    type: yesno
    description: "Indicates if a stock alert is currently active"
    sql: ${TABLE}.stock_alert ;;
  }
  dimension: stock_quantity {
    type: number
    description: "Current quantity of the product in stock"
    sql: ${TABLE}.stock_quantity ;;
  }
  dimension: storage_temperature {
    type: number
    description: "Optimal storage temperature for the product"
    sql: ${TABLE}.storage_temperature ;;
  }
  dimension: sub_category {
    type: string
    description: "Sub-category of the product for more specific classification"
    sql: ${TABLE}.sub_category ;;
  }
  dimension: supplier_code {
    type: string
    description: "Code used by the supplier to identify the product"
    sql: ${TABLE}.supplier_code ;;
  }
  dimension: supplier_id {
    type: number
    description: "Foreign key referencing the supplier of the product"
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: supplier_lead_time {
    type: number
    description: "Time taken by the supplier to deliver the product (in days)"
    sql: ${TABLE}.supplier_lead_time ;;
  }
  dimension: supplier_warranty {
    type: string
    description: "Warranty provided by the supplier"
    sql: ${TABLE}.supplier_warranty ;;
  }
  dimension: target_audience {
    type: string
    description: "Target demographic for the product"
    sql: ${TABLE}.target_audience ;;
  }
  dimension: tax_category {
    type: string
    description: "Tax category of the product"
    sql: ${TABLE}.tax_category ;;
  }
  dimension: unit_of_measure {
    type: string
    description: "Unit of measurement for the product (e.g., \"piece\", \"kg\")"
    sql: ${TABLE}.unit_of_measure ;;
  }
  dimension: warehouse_id {
    type: number
    description: "Foreign key referencing the warehouse where the product is stored"
    sql: ${TABLE}.warehouse_id ;;
  }
  dimension: warranty_period {
    type: string
    description: "Duration of the product warranty"
    sql: ${TABLE}.warranty_period ;;
  }
  dimension: weight {
    type: number
    description: "Weight of the product"
    sql: ${TABLE}.weight ;;
  }
  dimension: wholesale_price {
    type: number
    description: "Wholesale price of the product"
    sql: ${TABLE}.wholesale_price ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_id,
      product_name,
      warehouses.warehouse_name,
      warehouses.manager_name,
      warehouses.warehouse_id,
      suppliers.supplier_id,
      suppliers.bank_name,
      suppliers.supplier_name,
      bundle_items.count,
      customer_feedback.count,
      advanced_inventory_management.count,
      financial_reports.count,
      inventory_adjustments.count,
      inventory_levels.count,
      inventory_management.count,
      inventory_movements.count,
      product_lifecycle_management.count,
      product_recommendations.count,
      product_details.count,
      product_reviews.count,
      retail_predictive_analytics.count,
      sales.count,
      supply_chain_management.count
    ]
  }

}