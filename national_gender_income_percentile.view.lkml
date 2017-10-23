view: natl_gender_inc_pctile {
  sql_table_name: Income_life_expectancy.national_gender_income_percentile ;;

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gnd ;;
  }

  dimension: avg_hh_inc {
    label: "Average Household Income"
    type: number
    sql: ${TABLE}.hh_inc ;;
  }

  dimension: avg_hh_inc_age40 {
    label: "Avg Household Income, Age 40"
    type: number
    sql: ${TABLE}.hh_inc_age40 ;;
  }

  dimension: le_agg {
    type: number
    sql: ${TABLE}.le_agg ;;
  }

  dimension: le_raceadj {
    label: "Race-adjusted Life Expectancy"
    type: number
    sql: ${TABLE}.le_raceadj ;;
  }

  dimension: pctile {
    label: "Household Income Percentile"
    type: number
    sql: ${TABLE}.pctile ;;
  }

  dimension: sd_le_agg {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_agg ;;
  }

  dimension: sd_le_raceadj {
    hidden: yes
    type: number
    sql: ${TABLE}.sd_le_raceadj ;;
  }

  measure: ngip_count {
    type: count
    drill_fields: []
  }

  measure: avg_life_expectancy {
    type: average
    sql: ${le_agg} ;;
  }

  measure: avg_LE_bottom10 {
    type: average
    sql: ${le_agg} ;;
    filters: {
      field: pctile
      value: "<=10"
    }
  }

  measure: avg_LE_top10 {
    type: average
    sql: ${le_agg} ;;
    filters: {
      field: pctile
      value: ">=90"
    }
  }

#   measure: avg_raceadjLE_bottom10 {
#     type: average
#     sql: ${le_raceadj} ;;
#     filters: {
#       field: pctile
#       value: "<=10"
#     }
#   }
#
#   measure: avg_raceadjLE_top10 {
#     type: average
#     sql: ${le_raceadj} ;;
#     filters: {
#       field: pctile
#       value: ">=90"
#     }
#   }
}
