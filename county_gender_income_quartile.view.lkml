view: county_gender_income_quartile {
  sql_table_name: Income_life_expectancy.county_gender_income_quartile ;;


  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: county_state {
    primary_key: yes
    type: string
    sql: concat(${county_name}, ',', ' ', ${statename}) ;;
  }

  dimension: cty {
    label: "County Code"
    type: string
    sql: REPLACE(CAST(${TABLE}.cty as string),',','') ;;
    map_layer_name: county_map
  }
  # not working cuz FIP codes w less than 5 digits dont have 0 in front

  dimension: cty_pop2000 {
    type: number
    sql: ${TABLE}.cty_pop2000 ;;
  }

  dimension: cz {
    type: number
    sql: ${TABLE}.cz ;;
  }

  dimension: cz_name {
    type: string
    sql: ${TABLE}.cz_name ;;
  }

  dimension: cz_pop2000 {
    type: number
    sql: ${TABLE}.cz_pop2000 ;;
  }

# Life Expectancies for each gender and quartile GROUPED BY COUNTY

  dimension: le_agg_q1_f {
    type: number
    sql: ${TABLE}.le_agg_q1_F ;;
  }

  dimension: le_agg_q1_m {
    type: number
    sql: ${TABLE}.le_agg_q1_M ;;
  }

  dimension: le_agg_q2_f {
    type: number
    sql: ${TABLE}.le_agg_q2_F ;;
  }

  dimension: le_agg_q2_m {
    type: number
    sql: ${TABLE}.le_agg_q2_M ;;
  }

  dimension: le_agg_q3_f {
    type: number
    sql: ${TABLE}.le_agg_q3_F ;;
  }

  dimension: le_agg_q3_m {
    type: number
    sql: ${TABLE}.le_agg_q3_M ;;
  }

  dimension: le_agg_q4_f {
    type: number
    sql: ${TABLE}.le_agg_q4_F ;;
  }

  dimension: le_agg_q4_m {
    type: number
    sql: ${TABLE}.le_agg_q4_M ;;
  }

  dimension: le_raceadj_q1_f {
    type: number
    sql: ${TABLE}.le_raceadj_q1_F ;;
  }

  dimension: le_raceadj_q1_m {
    type: number
    sql: ${TABLE}.le_raceadj_q1_M ;;
  }

  dimension: le_raceadj_q2_f {
    type: number
    sql: ${TABLE}.le_raceadj_q2_F ;;
  }

  dimension: le_raceadj_q2_m {
    type: number
    sql: ${TABLE}.le_raceadj_q2_M ;;
  }

  dimension: le_raceadj_q3_f {
    type: number
    sql: ${TABLE}.le_raceadj_q3_F ;;
  }

  dimension: le_raceadj_q3_m {
    type: number
    sql: ${TABLE}.le_raceadj_q3_M ;;
  }

  dimension: le_raceadj_q4_f {
    type: number
    sql: ${TABLE}.le_raceadj_q4_F ;;
  }

  dimension: le_raceadj_q4_m {
    type: number
    sql: ${TABLE}.le_raceadj_q4_M ;;
  }

#   dimension: sd_le_agg_q1_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q1_F ;;
#   }
#
#   dimension: sd_le_agg_q1_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q1_M ;;
#   }
#
#   dimension: sd_le_agg_q2_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q2_F ;;
#   }
#
#   dimension: sd_le_agg_q2_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q2_M ;;
#   }
#
#   dimension: sd_le_agg_q3_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q3_F ;;
#   }
#
#   dimension: sd_le_agg_q3_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q3_M ;;
#   }
#
#   dimension: sd_le_agg_q4_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q4_F ;;
#   }
#
#   dimension: sd_le_agg_q4_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_q4_M ;;
#   }
#
#   dimension: sd_le_raceadj_q1_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q1_F ;;
#   }
#
#   dimension: sd_le_raceadj_q1_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q1_M ;;
#   }
#
#   dimension: sd_le_raceadj_q2_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q2_F ;;
#   }
#
#   dimension: sd_le_raceadj_q2_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q2_M ;;
#   }
#
#   dimension: sd_le_raceadj_q3_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q3_F ;;
#   }
#
#   dimension: sd_le_raceadj_q3_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q3_M ;;
#   }
#
#   dimension: sd_le_raceadj_q4_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q4_F ;;
#   }
#
#   dimension: sd_le_raceadj_q4_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_q4_M ;;
#   }

  dimension: state_id {
    type: number
    sql: ${TABLE}.state_id ;;
  }

  dimension: stateabbrv {
    type: string
    sql: ${TABLE}.stateabbrv ;;
  }

  dimension: statename {
    type: string
    sql: ${TABLE}.statename ;;
  }

  dimension: count_q1_f {
    type: number
    sql: ${TABLE}.count_q1_F ;;
  }

  dimension: count_q1_m {
    type: number
    sql: ${TABLE}.count_q1_M ;;
  }

  dimension: count_q2_f {
    type: number
    sql: ${TABLE}.count_q2_F ;;
  }

  dimension: count_q2_m {
    type: number
    sql: ${TABLE}.count_q2_M ;;
  }

  dimension: count_q3_f {
    type: number
    sql: ${TABLE}.count_q3_F ;;
  }

  dimension: count_q3_m {
    type: number
    sql: ${TABLE}.count_q3_M ;;
  }

  dimension: count_q4_f {
    type: number
    sql: ${TABLE}.count_q4_F ;;
  }

  dimension: count_q4_m {
    type: number
    sql: ${TABLE}.count_q4_M ;;
  }

  measure: count {
    type: count
    drill_fields: [statename, county_name, cz_name]
  }

# Avergae Life Expectancies for men/women in each quartile (aggregated across counties)

  measure: avg_LE_f_Q1 {
    type: average
    sql: ${le_agg_q1_f} ;;
  }

  measure: avg_LE_m_Q1 {
    type: average
    sql: ${le_agg_q1_m} ;;
  }

  measure: avg_LE_f_Q2 {
    type: average
    sql: ${le_agg_q2_f} ;;
  }

  measure: avg_LE_m_Q2 {
    type: average
    sql: ${le_agg_q2_m} ;;
  }

  measure: avg_LE_f_Q3 {
    type: average
    sql: ${le_agg_q3_f} ;;
  }

  measure: avg_LE_m_Q3 {
    type: average
    sql: ${le_agg_q3_m} ;;
  }

  measure: avg_LE_f_Q4 {
    type: average
    sql: ${le_agg_q4_f} ;;
  }

  measure: avg_LE_m_Q4 {
    type: average
    sql: ${le_agg_q4_m} ;;
  }

  # Average Life Expectancy for men/women (aggregated across quartiles) GROUPED BY COUNTIES

  measure: avg_LE_females {
    type: average
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f})/4 ;;
    value_format: "0.00"
  }

  measure: avg_LE_males {
    type: average
    sql: (${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/4 ;;
    value_format: "0.00"
  }

  measure: total_avg_LE {
    type: average
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f} + ${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/8 ;;
  }

  measure: total_avg_LE_gini {
    label: "Total Avg Life Expectancy_GI"
    description: "measure with GI"
    type: average
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f} + ${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/8 ;;
    html: | {{rendered_value}} || Gini Index: {{county_characteristics.gini99._rendered_value }} ;;
    value_format: "0.00"
    drill_fields: [county_name, avg_LE_females, avg_LE_males]
  }

  measure: total_avg_LE_income_seg {
    label: "Total Avg Life Expectancy_IS"
    description: "measure with income_seg"
    type: average
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f} + ${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/8 ;;
    html: | {{rendered_value}} || Income Seg: {{county_characteristics.income_segregation._rendered_value }} ;;
    value_format: "0.00"
    drill_fields: [county_name, avg_LE_females, avg_LE_males]
  }
}
