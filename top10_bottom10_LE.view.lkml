view: top10_bottom10_le {
    derived_table: {
      persist_for: "24 hours"
      sql:
       ((SELECT
                county_gender_income_quartile.cty AS county_code,
                CASE WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q1' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q1_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q4' THEN (county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q4_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'total_avg_LE' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q2_f + county_gender_income_quartile.le_raceadj_q3_f + county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q1_m + county_gender_income_quartile.le_raceadj_q2_m + county_gender_income_quartile.le_raceadj_q3_m + county_gender_income_quartile.le_raceadj_q4_m)/8
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q1' THEN county_gender_income_quartile.le_raceadj_q1_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q1' THEN county_gender_income_quartile.le_raceadj_q1_m
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q4' THEN county_gender_income_quartile.le_raceadj_q4_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q4' THEN county_gender_income_quartile.le_raceadj_q4_m
          ELSE NULL END AS average_life_expectancy
              FROM county_gender_income_quartile
              ORDER BY  CASE WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q1' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q1_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q4' THEN (county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q4_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'total_avg_LE' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q2_f + county_gender_income_quartile.le_raceadj_q3_f + county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q1_m + county_gender_income_quartile.le_raceadj_q2_m + county_gender_income_quartile.le_raceadj_q3_m + county_gender_income_quartile.le_raceadj_q4_m)/8
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q1' THEN county_gender_income_quartile.le_raceadj_q1_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q1' THEN county_gender_income_quartile.le_raceadj_q1_m
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q4' THEN county_gender_income_quartile.le_raceadj_q4_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q4' THEN county_gender_income_quartile.le_raceadj_q4_m
          ELSE NULL END
              LIMIT 10)
          UNION ALL
          (SELECT
                county_gender_income_quartile.cty AS county_code,
                CASE WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q1' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q1_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q4' THEN (county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q4_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'total_avg_LE' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q2_f + county_gender_income_quartile.le_raceadj_q3_f + county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q1_m + county_gender_income_quartile.le_raceadj_q2_m + county_gender_income_quartile.le_raceadj_q3_m + county_gender_income_quartile.le_raceadj_q4_m)/8
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q1' THEN county_gender_income_quartile.le_raceadj_q1_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q1' THEN county_gender_income_quartile.le_raceadj_q1_m
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q4' THEN county_gender_income_quartile.le_raceadj_q4_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q4' THEN county_gender_income_quartile.le_raceadj_q4_m
          ELSE NULL END AS average_life_expectancy
              FROM county_gender_income_quartile
              ORDER BY  CASE WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q1' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q1_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_q4' THEN (county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q4_m)/2
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'total_avg_LE' THEN (county_gender_income_quartile.le_raceadj_q1_f + county_gender_income_quartile.le_raceadj_q2_f + county_gender_income_quartile.le_raceadj_q3_f + county_gender_income_quartile.le_raceadj_q4_f + county_gender_income_quartile.le_raceadj_q1_m + county_gender_income_quartile.le_raceadj_q2_m + county_gender_income_quartile.le_raceadj_q3_m + county_gender_income_quartile.le_raceadj_q4_m)/8
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q1' THEN county_gender_income_quartile.le_raceadj_q1_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q1' THEN county_gender_income_quartile.le_raceadj_q1_m
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_f_q4' THEN county_gender_income_quartile.le_raceadj_q4_f
          WHEN {% parameter county_gender_income_quartile.gender_quartile %} = 'avg_LE_m_q4' THEN county_gender_income_quartile.le_raceadj_q4_m
          ELSE NULL END DESC
              LIMIT 10)) ;;
              }

      dimension: county_code {
        type: string
        sql: ${TABLE}.county_code ;;
      }


      measure: average_life_expectancy {
        type: average
        sql: ${TABLE}.average_life_expectancy ;;
        value_format: "0.00"
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

# view: top10_bottom10_le {
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
