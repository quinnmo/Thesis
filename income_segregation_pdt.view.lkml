view: income_segregation_pdt {
    derived_table: {
      sql:
       ((SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.cs00_seg_inc AS income_segregation
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON CONCAT(county_characteristics.county_name, ',', ' ', county_characteristics.statename) = CONCAT(county_gender_income_quartile.county_name, ',', ' ', county_gender_income_quartile.statename)
              ORDER BY income_segregation
              LIMIT 5)
        UNION ALL
        (SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.cs00_seg_inc AS income_segregation
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON CONCAT(county_characteristics.county_name, ',', ' ', county_characteristics.statename) = CONCAT(county_gender_income_quartile.county_name, ',', ' ', county_gender_income_quartile.statename)
              ORDER BY income_segregation DESC
              LIMIT 5 )) ;;

      }
              ## STILL NOT WORKING

      dimension: county_state {
        primary_key: yes
        type: string
        sql: concat(${county_name}, ',', ' ', ${state_name})  ;;
      }


      dimension: county_name {
        sql: ${TABLE}.county_name ;;
      }

      dimension: state_name {
        sql: ${TABLE}.state_name ;;
      }

      dimension: income_segregation {
        type: number
        sql: ${TABLE}.income_segregation ;;
      }

       measure: income_segregation_measure {       # MUST USE WITH NORAL GINI INDEX
        type: number
        sql: ${income_segregation} ;;
      }

      measure: total_avg_LE {
        value_format: "0.00"
        type: number
        sql: ${county_gender_income_quartile.total_avg_LE} ;;
      }

      measure: total_avg_LE_IS {
        value_format: "0.00"
        description: "measure w IS tooltip"
        type: number
        sql: ${county_gender_income_quartile.total_avg_LE_income_seg} ;;
      }
}

# view: income_segregation_pdt {
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
