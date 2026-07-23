# Define the database connection to be used for this model.
connection: "default_bigquery_connection"

include: "/explores/*.explore.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: google_retail_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_retail_default_datagroup
