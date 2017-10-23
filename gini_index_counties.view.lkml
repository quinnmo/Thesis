view: gini_index_counties {
  derived_table: {
    sql:
       ((SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.gini99 AS gini_index
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON CONCAT(county_characteristics.county_name, ',', ' ', county_characteristics.statename) = CONCAT(county_gender_income_quartile.county_name, ',', ' ', county_gender_income_quartile.statename)
              WHERE county_characteristics.gini99 < 1
              AND county_characteristics.gini99 IS NOT NULL
              ORDER BY county_characteristics.gini99
              LIMIT 5) --had to get lowest 5 gini index counties with non-null LE data
        UNION ALL
        (SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.gini99 AS gini_index
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON CONCAT(county_characteristics.county_name, ',', ' ', county_characteristics.statename) = CONCAT(county_gender_income_quartile.county_name, ',', ' ', county_gender_income_quartile.statename)
              WHERE county_characteristics.gini99 < 1
              AND county_characteristics.gini99 IS NOT NULL
              ORDER BY county_characteristics.gini99 DESC
              LIMIT 5)) ;;

              }

  dimension: county_state {
    primary_key: yes
    type: string
    sql: concat(${county_name}, ',', ' ', ${state_name})  ;;
  }

  dimension: county_name {
    sql: ${TABLE}.county_name ;;
  }

  dimension: state_name {
    sql: ${TABLE}.state_name ;;
  }

  dimension: gini_index {
    type: number
    sql: ${TABLE}.gini_index ;;
  }

 measure: gini_measure {       # MUST USE WITH NORAL GINI INDEX
    type: number
    sql: ${gini_index} ;;
  }

  measure: total_avg_LE_gini {
    value_format: "0.00"
    type: number
    sql: ${county_gender_income_quartile.total_avg_LE_gini} ;;
  }

  measure: total_avg_LE {
    value_format: "0.00"
    type: number
    sql: ${county_gender_income_quartile.total_avg_LE} ;;
    drill_fields: [county_name, state_name, gini_index]
  }
}
