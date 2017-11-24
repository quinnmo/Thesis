view: state_gender_income_quartile {
  sql_table_name: Income_life_expectancy.state_gender_income_quartile ;;

  dimension: state_id {         #state code
    label: "State FIPPS"
    type: number
    sql: ${TABLE}.st ;;
  }

  dimension: state_abbrv {
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

#Regression Estimates of Female Life Expectancy Trends by Income Quartile

 dimension: le_slope_q1_f {
    label: "Regression Estimate for Female LE Q1"
    type: number
    sql: ${TABLE}.le_agg_slope_q1_F ;;
  }

  dimension: le_slope_q1_m {
    label: "Regression Estimate for Male LE Q1"
    type: number
    sql: ${TABLE}.le_slope_q1_M ;;
  }

  dimension: le_slope_q2_f {
    label: "Regression Estimate for Female LE Q2"
    type: number
    sql: ${TABLE}.le_agg_slope_q2_F ;;
  }

  dimension: le_slope_q2_m {
    label: "Regression Estimate for Male LE Q2"
    type: number
    sql: ${TABLE}.le_agg_slope_q2_M ;;
  }

  dimension: le_slope_q3_f {
    label: "Regression Estimate for Female LE Q3"
    type: number
    sql: ${TABLE}.le_agg_slope_q3_F ;;
  }

  dimension: le_slope_q3_m {
    label: "Regression Estimate for Male LE Q3"
    type: number
    sql: ${TABLE}.le_agg_slope_q3_M ;;
  }

  dimension: le_slope_q4_f {
    label: "Regression Estimate for Female LE Q4"
    type: number
    sql: ${TABLE}.le_agg_slope_q4_F ;;
  }

  dimension: le_slope_q4_m {
    label: "Regression Estimate for Male LE Q4"
    type: number
    sql: ${TABLE}.le_agg_slope_q4_M ;;
  }

  dimension: le_raceadj_slope_q1_f {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q1_F ;;
  }

  dimension: le_raceadj_slope_q1_m {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q1_M ;;
  }

  dimension: le_raceadj_slope_q2_f {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q2_F ;;
  }

  dimension: le_raceadj_slope_q2_m {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q2_M ;;
  }

  dimension: le_raceadj_slope_q3_f {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q3_F ;;
  }

  dimension: le_raceadj_slope_q3_m {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q3_M ;;
  }

  dimension: le_raceadj_slope_q4_f {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q4_F ;;
  }

  dimension: le_raceadj_slope_q4_m {
    type: number
    sql: ${TABLE}.le_raceadj_slope_q4_M ;;
  }

#   dimension: sd_le_agg_slope_q1_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q1_F ;;
#   }
#
#   dimension: sd_le_agg_slope_q1_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q1_M ;;
#   }
#
#   dimension: sd_le_agg_slope_q2_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q2_F ;;
#   }
#
#   dimension: sd_le_agg_slope_q2_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q2_M ;;
#   }
#
#   dimension: sd_le_agg_slope_q3_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q3_F ;;
#   }
#
#   dimension: sd_le_agg_slope_q3_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q3_M ;;
#   }
#
#   dimension: sd_le_agg_slope_q4_f {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q4_F ;;
#   }
#
#   dimension: sd_le_agg_slope_q4_m {
#     type: number
#     sql: ${TABLE}.sd_le_agg_slope_q4_M ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q1_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q1_F ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q1_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q1_M ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q2_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q2_F ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q2_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q2_M ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q3_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q3_F ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q3_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q3_M ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q4_f {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q4_F ;;
#   }
#
#   dimension: sd_le_raceadj_slope_q4_m {
#     type: number
#     sql: ${TABLE}.sd_le_raceadj_slope_q4_M ;;
#   }

  measure: count {
    type: count
    drill_fields: [statename]
  }
}
