## Used to visualzie trends in LE of highest and lowest gini index counties

view: gini_index_counties {
  derived_table: {
    persist_for: "24 hours"
    sql:
       ((SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.cty AS county_code,
                county_characteristics.gini99 AS gini_index
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON county_characteristics.cty = county_gender_income_quartile.cty
              WHERE county_characteristics.gini99 < 1
              AND county_characteristics.gini99 IS NOT NULL
              ORDER BY county_characteristics.gini99
              LIMIT 5) --had to get lowest 5 gini index counties with non-null LE data
        UNION ALL
        (SELECT county_characteristics.county_name AS county_name,
                county_gender_income_quartile.statename AS state_name,
                county_characteristics.cty AS county_code,
                county_characteristics.gini99 AS gini_index
              FROM county_characteristics
              JOIN county_gender_income_quartile
              ON county_characteristics.cty = county_gender_income_quartile.cty
              WHERE county_characteristics.gini99 < 1
              AND county_characteristics.gini99 IS NOT NULL
              ORDER BY county_characteristics.gini99 DESC
              LIMIT 5)) ;;

              }

  dimension: county_code {
    primary_key: yes
    type: string
    sql: ${TABLE}.county_code ;;
  }

  dimension: county_state {
    type: string
    sql: concat(${county_name}, ',', ' ', ${state_name})  ;;
    html:
    {% if value == 'Fulton, Georgia' %}
    <p style="color: black; background-color: tomato; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'District Of Columbia, District Of Columbia' %}
    <p style="color: black; background-color: tomato; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'Orleans, Louisiana' %}
    <p style="color: black; background-color: tomato; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'Suffolk, Massachusetts' %}
    <p style="color: black; background-color: tomato; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'Essex, New Jersey' %}
    <p style="color: black; background-color: tomato; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; background-color: lightgreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %}
    ;;
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
    html:
    {% if value > 0.5 %}
    <p style="color: black; background-color: tomato; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; background-color: lightgreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %}
    ;;
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
