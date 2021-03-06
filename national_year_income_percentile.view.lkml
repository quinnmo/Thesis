view: natl_yr_inc_pctile {
  sql_table_name: Income_life_expectancy.national_year_gender_income_percentile ;;

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

   dimension: gender {                       #how do i cast to string?
     type: yesno
     sql: CASE WHEN ${TABLE}.gnd = "true" THEN 'F' ELSE 'M' END ;;
   }

  dimension: avg_hh_inc {
    label: "Average Household Income"
    type: number
    sql: ${TABLE}.hh_inc ;;
  }

  dimension: life_expectancy {
    label: "Unadjusted Life Expectancy"
    type: number
    sql: ${TABLE}.le_agg ;;
  }

  dimension: le_raceadj {                       #use this for life expectancy
    label: "Life Expectancy (Race Adjusted)"
    type: number
    sql: ${TABLE}.le_raceadj ;;
  }

  dimension: pctile {
    label: "Household Income Percentile"
    type: number
    sql: ${TABLE}.pctile ;;
  }

  dimension: sd_le_agg {            # amount of variation in life expectancy across country
    type: number
    sql: ${TABLE}.sd_le_agg ;;
  }

  dimension: sd_le_raceadj {
    type: number
    sql: ${TABLE}.sd_le_raceadj ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: nygip.count {
    type: count
    drill_fields: [year, pctile, life_expectancy, le_raceadj]
  }

  measure: avg_life_expectancy {
    type: average
    sql: ${life_expectancy} ;;
    value_format: "0.00"
  }

  measure: avg_le_top1 {
    type: average
    sql: ${le_raceadj} ;;
    filters: {
      field: pctile
      value: ">=99"
    }
    value_format: "0.00"
  }

  measure: avg_le_bottom1 {
    type: average
    sql: ${le_raceadj} ;;
    filters: {
      field: pctile
      value: "<=1"
    }
    value_format: "0.00"
  }

}
