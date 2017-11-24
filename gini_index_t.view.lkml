## Used to calculate T-Test (need larger sample sizes (> 50))
view: gini_index_t {
  derived_table: {
    sql:
       ((SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.cty AS county_code,
                county_characteristics.gini99 AS gini_index
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON county_characteristics.cty = county_gender_income_quartile.cty
              WHERE county_characteristics.gini99 < 1
              AND county_characteristics.gini99 IS NOT NULL
              ORDER BY county_characteristics.gini99
              LIMIT 50) --had to get lowest 5 gini index counties with non-null LE data
        UNION ALL
        (SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.cty AS county_code,
                county_characteristics.gini99 AS gini_index
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON county_characteristics.cty = county_gender_income_quartile.cty
              WHERE county_characteristics.gini99 < 1
              AND county_characteristics.gini99 IS NOT NULL
              ORDER BY county_characteristics.gini99 DESC
              LIMIT 50)) ;;

    }

    dimension: county_code {
      primary_key: yes
      type: string
      sql: ${TABLE}.county_code ;;
    }

    dimension: county_state {
      type: string
      sql: concat(${county_name}, ',', ' ', ${state_name})  ;;
    }

    dimension: county_name {
      sql: ${TABLE}.county_name ;;
    }

    dimension: state_name {
      sql: ${TABLE}.state_name ;;
    }

    dimension: gini_index {
      type: number
      sql: ${TABLE}.gini_index ;;
    }

    measure: gini_measure {       # MUST USE WITH NORAL GINI INDEX
      type: number
      sql: ${gini_index} ;;
    }
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: gini_index_t {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
