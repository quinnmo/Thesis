view: county_voting {
  sql_table_name: voting_2016.county_voting ;;

  dimension: combined_fips {
    type: string
    sql: ${TABLE}.combined_fips ;;
    map_layer_name: county_map
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: diff {
    type: number
    sql: ${TABLE}.diff ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: per_dem {
    type: number
    sql: ${TABLE}.per_dem ;;
  }

  dimension: per_gop {
    type: number
    sql: ${TABLE}.per_gop ;;
  }

#   dimension: per_gop_tier {
#     type: tier
#     style: interval
#     sql: ${per_gop} ;;
#     tiers: [ 5, 10, 15, 20, 25,30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]
#   }

  dimension: per_point_diff {
    type: number
    sql: ${TABLE}.per_point_diff ;;
  }

  dimension: state_abbr {
    type: string
    sql: ${TABLE}.state_abbr ;;
  }

  dimension: total_votes {
    type: number
    sql: ${TABLE}.total_votes ;;
  }

  dimension: votes_dem {
    type: number
    sql: ${TABLE}.votes_dem ;;
  }

  dimension: votes_gop {
    type: number
    sql: ${TABLE}.votes_gop ;;
  }

  measure: count {
    type: count
    drill_fields: [county_name]
  }

  measure: pcnt_GOP {
    label: "% Trump Voters"
    type: average
    sql: ${per_gop} ;;
    value_format: "0.00%"
  }

  measure: pcnt_dem {
    label: "% Hilary Voters"
    type: sum
    sql: ${per_dem} ;;
    value_format: "0.00%"
  }
}
