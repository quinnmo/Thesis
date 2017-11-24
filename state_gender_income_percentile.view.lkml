view: state_gender_income_percentile {
  sql_table_name: Income_life_expectancy.state_gender_income_percentile ;;

  parameter: gender_quartile {
    type: string
    default_value: "total_avg_LE"
    allowed_value: {
      label: "Avg LE Females Q1"
      value: "avg_LE_f_q1"
    }
    allowed_value: {
      label: "Avg LE Males Q1"
      value: "avg_LE_m_q1"
    }
    allowed_value: {
      label: "Avg LE Females Q4"
      value: "avg_LE_f_q4"
    }
    allowed_value: {
      label: "Avg LE Males Q4"
      value: "avg_LE_m_q4"
    }
    allowed_value: {
      label: "Avg LE Q1"
      value: "avg_LE_q1"
    }
    allowed_value: {
      label: "Avg LE Q4"
      value: "avg_LE_q4"
    }
    allowed_value: {
      label: "Avg LE"
      value: "total_avg_LE"
    }

  }

  dimension: st {           #state FIPPS
    label: "State Code"
    type: number
    sql: ${TABLE}.st ;;
  }

  dimension: stateabbrv {         #state abbreviation
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

  dimension: le_q1_f {
    label: "Life Expectancy of Females in Q1"
    type: number
    sql: ${TABLE}.le_agg_q1_F ;;
  }

  dimension: le_q1_m {
    label: "Life Expectancy of Males in Q1"
    type: number
    sql: ${TABLE}.le_agg_q1_M ;;
  }

  dimension: le_q2_f {
    label: "Life Expectancy of Females in Q2"
    type: number
    sql: ${TABLE}.le_agg_q2_F ;;
  }

  dimension: le_q2_m {
    label: "Life Expectancy of Males in Q2"
    type: number
    sql: ${TABLE}.le_agg_q2_M ;;
  }

  dimension: le_q3_f {
    label: "Life Expectancy of Females in Q3"
    type: number
    sql: ${TABLE}.le_q3_F ;;
  }

  dimension: le_q3_m {
    label: "Life Expectancy of Males in Q3"
    type: number
    sql: ${TABLE}.le_agg_q3_M ;;
  }

  dimension: le_q4_f {
    label: "Life Expectancy of Females in Q4"
    type: number
    sql: ${TABLE}.le_agg_q4_F ;;
  }

  dimension: le_q4_m {
    label: "Life Expectancy of Males in Q4"
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
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q1_F ;;
  }

  dimension: sd_le_agg_q1_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q1_M ;;
  }

  dimension: sd_le_agg_q2_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q2_F ;;
  }

  dimension: sd_le_agg_q2_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q2_M ;;
  }

  dimension: sd_le_agg_q3_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q3_F ;;
  }

  dimension: sd_le_agg_q3_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q3_M ;;
  }

  dimension: sd_le_agg_q4_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q4_F ;;
  }

  dimension: sd_le_agg_q4_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg_q4_M ;;
  }

  dimension: sd_le_raceadj_q1_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q1_F ;;
  }

  dimension: sd_le_raceadj_q1_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q1_M ;;
  }

  dimension: sd_le_raceadj_q2_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q2_F ;;
  }

  dimension: sd_le_raceadj_q2_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q2_M ;;
  }

  dimension: sd_le_raceadj_q3_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q3_F ;;
  }

  dimension: sd_le_raceadj_q3_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q3_M ;;
  }

  dimension: sd_le_raceadj_q4_f {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q4_F ;;
  }

  dimension: sd_le_raceadj_q4_m {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj_q4_M ;;
  }

  measure: count {
    type: count
    drill_fields: [statename]
  }

  ## LE males and females per quartile

  measure: avg_LE_f_q1 {
    type: average
    sql: ${le_raceadj_q1_f} ;;
    value_format: "0.00"
  }

  measure: avg_LE_m_q1 {
    type: average
    sql: ${le_raceadj_q1_m} ;;
    value_format: "0.00"
  }

   measure: avg_LE_f_q4 {
    type: average
    sql: ${le_raceadj_q4_f} ;;
    value_format: "0.00"
  }

  measure: avg_LE_m_q4 {
    type: average
    sql: ${le_raceadj_q4_m} ;;
    value_format: "0.00"
  }

  ## LE Q1 and Q4

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

  measure: total_avg_LE {
    type: average
    sql: (${le_raceadj_q1_f} + ${le_raceadj_q2_f} + ${le_raceadj_q3_f} + ${le_raceadj_q4_f} + ${le_raceadj_q1_m} + ${le_raceadj_q2_m} + ${le_raceadj_q3_m} + ${le_raceadj_q4_m})/8 ;;
    value_format: "0.00"
  }

  measure: Quartile_LE {
    type: number
    sql: CASE WHEN {% parameter gender_quartile %} = 'avg_LE_q1' THEN ${avg_LE_q1}
          WHEN {% parameter gender_quartile %} = 'avg_LE_q4' THEN ${avg_LE_q4}
          WHEN {% parameter gender_quartile %} = 'total_avg_LE' THEN ${total_avg_LE}
          WHEN {% parameter gender_quartile %} = 'avg_LE_f_q1' THEN ${avg_LE_f_q1}
          WHEN {% parameter gender_quartile %} = 'avg_LE_m_q1' THEN ${avg_LE_m_q1}
          WHEN {% parameter gender_quartile %} = 'avg_LE_f_q4' THEN ${avg_LE_f_q4}
          WHEN {% parameter gender_quartile %} = 'avg_LE_m_q4' THEN ${avg_LE_m_q4}
          ELSE NULL END ;;
    value_format: "0.00"
  }
}
