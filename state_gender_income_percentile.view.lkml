view: state_gender_income_percentile {
  sql_table_name: Income_life_expectancy.state_gender_income_percentile ;;

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
}
