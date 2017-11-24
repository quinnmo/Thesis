view: q1_vs_q2 {
  derived_table: {
    sql: SELECT
            statename AS state,
            fips AS state_id,
            czname AS cz_name,
            (le_raceadj_q1_f + le_raceadj_q1_m)/2 AS avg_LE_Q1,
            (le_raceadj_q4_f + le_raceadj_q4_m)/2 AS avg_LE_Q4
            FROM CZ_gender_income_quartile
            GROUP BY 1, 2, 3, 4, 5 ;;
  }

  dimension: cz_name {
    sql: ${TABLE}.cz_name ;;
  }

  dimension: state {
    sql: ${TABLE}.state ;;
  }

  dimension: state_id {
    sql: ${TABLE}.state_id ;;
  }


  dimension: avg_LE_Q1 {
    type: number
    sql: ${TABLE}.avg_LE_Q1 ;;
  }

  dimension: avg_LE_Q4 {
    type: number
    sql: ${TABLE}.avg_LE_Q4 ;;
  }

  dimension: dif_LE_Q1_Q4 {
    type: number
    sql: ${avg_LE_Q4} - ${avg_LE_Q1} ;;
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

# view: q1_vs_q2 {
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
