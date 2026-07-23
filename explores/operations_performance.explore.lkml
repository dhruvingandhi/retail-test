include: "/views/inventory_levels.view.lkml"
include: "/views/inventory_movements.view.lkml"
include: "/views/products.view.lkml"
include: "/views/supply_chain_management.view.lkml"
include: "/views/warehouses.view.lkml"

explore: inventory_levels {
  label: "Operations Explore"
  description: "This operations explore gives you insights into Operations Performance by looking into stock depletion risk, movement analysis, supplier lead time discrepancy, warehouse damage and theft adjustments, overdue inbound shipments, and total inventory value by product line and warehouse."
  query: stock_depletion_risk {
    label: "Stock Depletion Risk"
    description: "Which products are at risk of stockouts in each warehouse?"
    dimensions: [warehouses.warehouse_name, products.product_name]
    measures: [inventory_levels.total_inventory_before_reorder]
    sorts: [warehouses.warehouse_name: desc, inventory_levels.total_inventory_before_reorder: asc]
    pivots: [warehouses.warehouse_name]
  }
  query: movement_analysis {
    label: "Movement Analysis"
    description: "How many units moved in and out over the past week and by which movement type?"
    dimensions: [inventory_movements.transaction_type]
    measures: [inventory_movements.total_quantity]
    filters: [inventory_movements.transaction_date: "1 weeks"]
    sorts: [inventory_movements.total_quantity: desc]
  }
  query: supplier_lead_time_discrepancy {
    label: "Supplier Lead Time Discrepancy"
    description: "What is the average supplier lead times for each active product?"
    dimensions: [products.product_name]
    measures: [supply_chain_management.average_supplier_lead_time]
    filters: [products.is_active: "Yes"]
    sorts: [supply_chain_management.average_supplier_lead_time: desc]
  }
  query: warehouse_damage_theft_adjustments {
    label: "Warehoue Damage and Theft Adjustments"
    description: "Which 10 warehouses have the highest frequency or volume of damage/theft adjustment?"
    dimensions: [warehouses.warehouse_name]
    measures: [inventory_movements.total_quantity]
    sorts: [inventory_movements.total_quantity: desc]
    filters: [inventory_movements.theft_reported: "Yes"]
    limit:  10
  }
  query: overdue_inbound_shipments {
    label: "Overdue Inbound Shipments"
    description: "Which inbound shipments are overdue and how long have they been delayed?"
    dimensions: [supply_chain_management.tracking_number, supply_chain_management.days_expected_vs_actual_delivery]
    measures: [inventory_movements.total_quantity]
    filters: [supply_chain_management.is_on_time: "Yes", inventory_movements.inbound_shipment: "Yes"]
    sorts: [inventory_movements.total_quantity: desc]
  }
  query: current_inventory_value {
    label: "Current Inventory Value by Warehouse and Product"
    description: "What is the current total inventory value on hand by warehouse and product line?"
    dimensions: [products.product_name, warehouses.warehouse_name]
    measures: [total_inventory_value]
    pivots: [products.product_name]
  }
  join: warehouses {
    type: left_outer
    relationship: many_to_one
    sql_on: ${inventory_levels.warehouse_id} = ${warehouses.warehouse_id} ;;
  }
  join: inventory_movements {
    type: left_outer
    relationship: one_to_many
    sql_on:
      ${inventory_levels.product_id} = ${inventory_movements.product_id}
      AND ${inventory_levels.warehouse_id} = ${inventory_movements.warehouse_id} ;;
  }
  join: supply_chain_management {
    type: left_outer
    relationship: one_to_many
    sql_on:
      ${inventory_levels.product_id} = ${supply_chain_management.product_id}
      AND ${inventory_levels.warehouse_id} = ${supply_chain_management.warehouse_id} ;;
  }
  join: products {
    type: left_outer
    relationship: many_to_one
    sql_on: ${inventory_levels.product_id} = ${products.product_id} ;;
  }
}
