view: cz_gender_income_quartile {
  sql_table_name: Income_life_expectancy.CZ_gender_income_quartile ;;

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

  dimension: cz {
    type: number
    sql: ${TABLE}.cz ;;
  }

  dimension: czname {
    type: string
    sql: ${TABLE}.czname ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
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

  dimension: pop2000 {
    type: number
    sql: ${TABLE}.pop2000 ;;
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

  dimension: stateabbrv {
    type: string
    sql: ${TABLE}.stateabbrv ;;
  }

  dimension: statename {
    type: string
    sql: ${TABLE}.statename ;;
  }

  measure: count {
    type: count
    drill_fields: [czname, statename]
  }
}
