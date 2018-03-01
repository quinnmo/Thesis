connection: "quinnbq"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

persist_for: "24 hours"

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
  persist_for: "24 hours"
  sql_always_where: ${county_characteristics.gini99} < 1 ;; #AND ${top10_bottom10_le.average_life_expectancy} is not null
  join: county_characteristics {
    relationship: one_to_one
    sql_on: ${county_characteristics.county_code} = ${county_gender_income_quartile.cty} ;;
 }
  join: gini_index_counties {
    relationship: one_to_one
    sql_on: ${county_characteristics.county_code} = ${gini_index_counties.county_code}  ;;
}
  join: gini_index_t {
    relationship: one_to_one
    sql_on: ${county_characteristics.county_code} = ${gini_index_t.county_code} ;;
  }

join: avg_hh_income {
  relationship: one_to_one
  sql_on: ${county_characteristics.county_code} = ${avg_hh_income.county_code} ;;
}
join: state_year_gender_income_quartile {
  relationship: one_to_one
  sql_on: ${county_characteristics.state_id} = ${state_year_gender_income_quartile.state_id} ;;
}
join: county_voting {
  relationship: one_to_one
  sql_on: ${county_characteristics.county_code} = ${county_voting.combined_fips} ;;
}
join: top10_bottom10_le  {
  relationship: one_to_one
  sql_on: ${top10_bottom10_le.county_code} = ${county_characteristics.county_code} ;;
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


explore: gini_index_t {
  join: county_gender_income_quartile {
    relationship: one_to_one
    sql_on: ${gini_index_t.county_state} = ${county_gender_income_quartile.county_state};;
  }
  join: county_characteristics {
    relationship: one_to_one
    sql_on: ${gini_index_t.county_state} = ${county_characteristics.county_state} ;;
  }
}

explore: q1_vs_q2 {
  join: cz_gender_income_quartile {
    relationship: one_to_one
    sql_on: ${q1_vs_q2.state_id} = ${cz_gender_income_quartile.fips} ;;
  }
}

explore: county_voting {
  join: county_gender_income_quartile {
    relationship: one_to_one
    sql_on: ${county_voting.combined_fips} = ${county_gender_income_quartile.cty} ;;
  }
  join: county_characteristics {
    relationship: one_to_one
    sql_on: ${county_voting.combined_fips} = ${county_characteristics.county_code} ;;
  }
  join: state_gender_income_percentile {
    relationship: one_to_one
    sql_on: ${county_voting.state_abbr} = ${state_gender_income_percentile.stateabbrv} ;;
  }
}

explore: avg_hh_income {}

explore: natl_yr_inc_pctile {}

explore: state_gender_income_percentile {}

explore: state_gender_income_quartile {}

explore: state_year_gender_income_quartile {}
