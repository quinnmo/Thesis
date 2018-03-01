view: county_gender_income_quartile {
  sql_table_name: Income_life_expectancy.county_gender_income_quartile ;;


#   parameter: gender_quartile {
#     type: string
#     default_value: "total_avg_LE"
#     allowed_value: {
#       label: "Avg LE Females Q1"
#       value: "avg_LE_f_q1"
#     }
#     allowed_value: {
#       label: "Avg LE Males Q1"
#       value: "avg_LE_m_q1"
#     }
#     allowed_value: {
#       label: "Avg LE Females Q4"
#       value: "avg_LE_f_q4"
#     }
#     allowed_value: {
#       label: "Avg LE Males Q4"
#       value: "avg_LE_m_q4"
#     }
#     allowed_value: {
#       label: "Avg LE Q1"
#       value: "avg_LE_q1"
#     }
#     allowed_value: {
#       label: "Avg LE Q4"
#       value: "avg_LE_q4"
#     }
#     allowed_value: {
#       label: "Avg LE"
#       value: "total_avg_LE"
#     }
#
#   }


  dimension: cty {
    primary_key: yes
    label: "County Code"
    type: string
    sql:${TABLE}.cty  ;;
    map_layer_name: county_map
  }

  dimension: county_name {
    label: "County"
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: county_state {
    type: string
    sql: concat(${county_name}, ',', ' ', ${statename}) ;;
    html: <a href="/dashboards/41?County=%22{{ county_name._value }}, {{statename._value}}%22">{{ value }} </a> ;;

  }

   dimension: norcal_counties {
    type: yesno
    sql: ${cz_name} = "San Francisco" OR ${cz_name} = "San Jose" ;;
  }

#   dimension: CA_NC {        #not working
#     sql: CASE WHEN {% condition CA_or_NC %} ${statename} {% endcondition %}
#               THEN ${statename} ELSE null END ;;
#   }

  dimension: cty_pop2000 {
    type: number
    sql: ${TABLE}.cty_pop2000 ;;
  }

  measure: population_in_2000 {
    type: sum
    sql: ${cty_pop2000} ;;
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

  dimension: avg_LE_females {
    type: number
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f})/4 ;;
    value_format: "0.00"
  }

  dimension: avg_LE_males {
    type: number
    sql: (${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/4 ;;
    value_format: "0.00"
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

  dimension: sd_le_agg_q1_f {
    type: number
    sql: ${TABLE}.sd_le_agg_q1_F ;;
  }

  dimension: sd_le_agg_q1_m {
    type: number
    sql: ${TABLE}.sd_le_agg_q1_M ;;
  }

  dimension: sd_le_agg_q2_f {
    type: number
    sql: ${TABLE}.sd_le_agg_q2_F ;;
  }

  dimension: sd_le_agg_q2_m {
    type: number
    sql: ${TABLE}.sd_le_agg_q2_M ;;
  }

  dimension: sd_le_agg_q3_f {
    type: number
    sql: ${TABLE}.sd_le_agg_q3_F ;;
  }

  dimension: sd_le_agg_q3_m {
    type: number
    sql: ${TABLE}.sd_le_agg_q3_M ;;
  }

  dimension: sd_le_agg_q4_f {
    type: number
    sql: ${TABLE}.sd_le_agg_q4_F ;;
  }

  dimension: sd_le_agg_q4_m {
    type: number
    sql: ${TABLE}.sd_le_agg_q4_M ;;
  }

  dimension: sd_le_raceadj_q1_f {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q1_F ;;
  }

  dimension: sd_le_raceadj_q1_m {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q1_M ;;
  }

  dimension: sd_le_raceadj_q2_f {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q2_F ;;
  }

  dimension: sd_le_raceadj_q2_m {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q2_M ;;
  }

  dimension: sd_le_raceadj_q3_f {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q3_F ;;
  }

  dimension: sd_le_raceadj_q3_m {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q3_M ;;
  }

  dimension: sd_le_raceadj_q4_f {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q4_F ;;
  }

  dimension: sd_le_raceadj_q4_m {
    type: number
    sql: ${TABLE}.sd_le_raceadj_q4_M ;;
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

# combined standrad deviations of males and females for Q1 and Q4

# dimension: sd_q1 {
#   type: number
#   sql: ${sd_le_raceadj_q1_f} + ${sd_le_raceadj_q1_m} ;;
# }
#
# dimension: sd_q4 {
#   type: number
#   sql: ${sd_le_raceadj_q4_f} + ${sd_le_raceadj_q4_m} ;;
# }


  measure: count {
    type: count
    drill_fields: [county_state]
  }


# Avergae Life Expectancies for men/women in each quartile (aggregated across counties)

  measure: avg_LE_f_q1 {
    type: average
    sql: ${le_raceadj_q1_f} ;;
    value_format: "0.00"
    drill_fields: [q1_avg_le_drill*]
  }

  measure: avg_LE_m_q1 {
    type: average
    sql: ${le_raceadj_q1_m} ;;
    value_format: "0.00"
    drill_fields: [q1_avg_le_drill*]
  }

  measure: avg_LE_f_q2 {
    type: average
    sql: ${le_raceadj_q2_f} ;;
  }

  measure: avg_LE_m_q2 {
    type: average
    sql: ${le_raceadj_q2_m} ;;
  }

  measure: avg_LE_f_q3 {
    type: average
    sql: ${le_raceadj_q3_f} ;;
  }

  measure: avg_LE_m_q3 {
    type: average
    sql: ${le_raceadj_q3_m} ;;
  }

  measure: avg_LE_f_q4 {
    type: average
    sql: ${le_raceadj_q4_f} ;;
    value_format: "0.00"
    drill_fields: [q4_avg_le_drill*]
  }

  measure: avg_LE_m_q4 {
    type: average
    sql: ${le_raceadj_q4_m} ;;
    value_format: "0.00"
    drill_fields: [q4_avg_le_drill*]
  }


  # Average Life Expectancy for men/women (aggregated across quartiles) GROUPED BY COUNTIES

  measure: average_LE_females {
    type: average
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f})/4 ;;
    value_format: "0.00"
  }

  measure: average_LE_males {
    type: average
    sql: (${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/4 ;;
    value_format: "0.00"
  }

  measure: avg_dif_LE_f_m {
    type: average
    sql: ${avg_LE_females} - ${avg_LE_males} ;;
  }


# Avg Life Expectancy of Q1 and Q4

  measure: avg_LE_q1 {
    type: average
    sql: (${le_raceadj_q1_f} + ${le_raceadj_q1_m})/2 ;;
    value_format: "0.00"
  }

  measure: avg_LE_q4 {
    type: average
    sql: (${le_raceadj_q4_f} + ${le_raceadj_q4_m})/2 ;;
    value_format: "0.00"
  }

# Total average LE


  measure: total_avg_LE {
    type: average
    sql: (${le_raceadj_q1_f} + ${le_raceadj_q2_f} + ${le_raceadj_q3_f} + ${le_raceadj_q4_f} + ${le_raceadj_q1_m} + ${le_raceadj_q2_m} + ${le_raceadj_q3_m} + ${le_raceadj_q4_m})/8 ;;     value_format: "0.00"
   drill_fields: [county_LE_drill*]
  }

# # Fancy LE measures!
#
#   measure: Quartile_LE {
#     label: "Avg Life Expectancy"
#     description: "templated filter LE"
#     type: number
#     sql: CASE WHEN {% parameter gender_quartile %} = 'avg_LE_q1' THEN ${avg_LE_q1}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_q4' THEN ${avg_LE_q4}
#           WHEN {% parameter gender_quartile %} = 'total_avg_LE' THEN ${total_avg_LE}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_f_q1' THEN ${avg_LE_f_q1}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_m_q1' THEN ${avg_LE_m_q1}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_f_q4' THEN ${avg_LE_f_q4}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_m_q4' THEN ${avg_LE_m_q4}
#           ELSE NULL END ;;
#     value_format: "0.00"
#   }
#
#   measure: total_avg_LE_county {
#     label: "Avg LE"
#     description: "templated filer w county name in tooltip"
#     type: number
#     sql: CASE WHEN {% parameter gender_quartile %} = 'avg_LE_q1' THEN ${avg_LE_q1}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_q4' THEN ${avg_LE_q4}
#           WHEN {% parameter gender_quartile %} = 'total_avg_LE' THEN ${total_avg_LE}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_f_q1' THEN ${avg_LE_f_q1}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_m_q1' THEN ${avg_LE_m_q1}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_f_q4' THEN ${avg_LE_f_q4}
#           WHEN {% parameter gender_quartile %} = 'avg_LE_m_q4' THEN ${avg_LE_m_q4}
#           ELSE NULL END ;;
#     value_format: "0.00"
#     html: | {{rendered_value}} || County: {{county_state._rendered_value }} ;;
#   }
#


  measure: total_avg_LE_gini {
    label: "Total Avg Life Expectancy_GI"
    description: "LE with GI in tooltip"
    type: average
    sql: (${le_agg_q1_f} + ${le_agg_q2_f} + ${le_agg_q3_f} + ${le_agg_q4_f} + ${le_agg_q1_m} + ${le_agg_q2_m} + ${le_agg_q3_m} + ${le_agg_q4_m})/8 ;;
    html: | {{rendered_value}} || Gini Index: {{county_characteristics.gini99._rendered_value }} ;;
    value_format: "0.00"
    drill_fields: [county_name, avg_LE_females, avg_LE_males]
  }

  set: q1_avg_le_drill {
    fields: [
      county_state,
      county_characteristics.avg_hh_inc,
      county_characteristics.exercise_q1,
      county_characteristics.smoke_q1,
      county_characteristics.obese_q1
    ]
  }

  set: q4_avg_le_drill {
    fields: [
      county_state,
      county_characteristics.avg_hh_inc,
      county_characteristics.exercise_q4,
      county_characteristics.smoke_q4,
      county_characteristics.obese_q4
    ]
  }

  set: county_LE_drill {
    fields: [
      county_characteristics.avg_hh_inc,
      county_characteristics.cty_pop2000,
      county_characteristics.cs_educ_ba,
      county_characteristics.pcnt_black,
      county_characteristics.pcnt_hisp,
      county_characteristics.population_density,
      county_characteristics.crime_rate,
      county_characteristics.avg_pcnt_obese_all_qs,
      county_characteristics.avg_pcnt_smokers_all_qs,
      county_characteristics.avg_pcnt_exercise_all_qs
    ]
  }
  # add smoking rate, exercise rate, obesity rate across quartiles

}
