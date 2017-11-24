view: state_year_gender_income_quartile {
  sql_table_name: Income_life_expectancy.state_year_gender_income_quartile ;;

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

  dimension: state_id {       # State FIPS
    type: number
    sql: ${TABLE}.st ;;
  }

  dimension: stateabbrv {
    type: string
    sql: ${TABLE}.stateabbrv ;;
  }

  dimension: statename {
    type: string
    sql: ${TABLE}.statename ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [statename]
  }

# Average LE gender and quartile

  measure: avg_LE_f_q1 {
    type: average
    sql: ${le_raceadj_q1_f} ;;
    value_format: "0.00"
  }

  measure: avg_LE_f_q4 {
    type: average
    sql: ${le_agg_q4_f} ;;
    value_format: "0.00"
  }

  measure: avg_LE_m_q1 {
    type: average
    sql: ${le_raceadj_q1_m} ;;
    value_format: "0.00"
  }

  measure: avg_LE_m_q4 {
    type: average
    sql: ${le_raceadj_q4_m} ;;
    value_format: "0.00"
  }

# Average LE of males and females (collapsed across quartiles)

measure: avg_LE_females {
  type: average
  sql: (${le_raceadj_q1_f} + ${le_raceadj_q2_f} + ${le_raceadj_q3_f} + ${le_raceadj_q4_f})/4 ;;
  value_format: "0.00"
}

measure: avg_LE_males {
  type: average
  sql: (${le_raceadj_q1_m} + ${le_raceadj_q2_m} + ${le_raceadj_q3_m} + ${le_raceadj_q4_m})/4 ;;
  value_format: "0.00"
}
# Average LE of quartiles (collapsed across gender)

measure: avg_LE_q1 {
  type: average
  sql:  (${le_raceadj_q1_f} + ${le_raceadj_q1_m})/2 ;;
  value_format: "0.00"
}

measure: avg_LE_q4 {
  type: average
  sql: (${le_raceadj_q4_f} + ${le_raceadj_q4_m})/2 ;;
  value_format: "0.00"
}
}
