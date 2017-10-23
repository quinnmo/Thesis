connection: "quinn_thesis"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

map_layer: county_map {
  file: "UScounties.json"
  property_key: "FIPS"
}

explore: county_characteristics {
  join: state_year_gender_income_quartile {
    relationship: many_to_one
    sql_on: ${county_characteristics.state_name} = ${state_year_gender_income_quartile.statename}
    AND ${county_characteristics.gini99} < 1 ;;
  }
}

explore: county_gender_income_quartile {
  join: county_characteristics {
    relationship: one_to_one
    sql_on: ${county_characteristics.county_state} = ${county_gender_income_quartile.county_state} ;;
 }
  join: gini_index_counties {
    relationship: one_to_one
    sql_on: ${county_characteristics.county_state} = ${gini_index_counties.county_state}  ;;
}
  join: income_segregation_pdt {
    relationship: one_to_one
    sql_on: ${county_characteristics.county_state} = ${income_segregation_pdt.county_state} ;;
  }
}

explore: cz_characteristics {}

explore: cz_gender_income_quartile {}

explore: cz_gender_income_quartile_trends {}

explore: cz_year_gender_income_quartile {}

explore: natl_gender_inc_pctile {
  join: natl_yr_inc_pctile {
    relationship: one_to_one
    sql_on: ${natl_yr_inc_pctile.pctile} = ${natl_gender_inc_pctile.pctile} ;;
  }
}

explore: gini_index_counties {
  join: county_gender_income_quartile {
    relationship: one_to_one
    sql_on: ${gini_index_counties.county_state} = ${county_gender_income_quartile.county_state};;
  }
  join: county_characteristics {
    relationship: one_to_one
    sql_on: ${gini_index_counties.county_state} = ${county_characteristics.county_state} ;;
  }
}

explore: income_segregation_pdt {
  join: county_gender_income_quartile {
    relationship: one_to_one
    sql_on: ${income_segregation_pdt.county_state} = ${county_gender_income_quartile.county_state};;
  }
  join: county_characteristics {
    relationship: one_to_one
    sql_on: ${income_segregation_pdt.county_state} = ${county_characteristics.county_state} ;;
  }
}

explore: natl_yr_inc_pctile {}

explore: state_gender_income_percentile {}

explore: state_gender_income_quartile {}

explore: state_year_gender_income_quartile {}
