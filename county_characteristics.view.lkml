view: county_characteristics {
  sql_table_name: Income_life_expectancy.county_characteristics ;;

# County

  dimension: county_code {      #county FIPS code
    primary_key: yes
    label: "County code"
    type: string
    sql: ${TABLE}.cty;;
  }

  dimension: cty_name {
    label: "County name"
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: cty_pop2000 {
    label: "County population in 2000"
    type: number
    sql: ${TABLE}.cty_pop2000 ;;
  }

  dimension: county_state {
    type: string
    sql: concat(${cty_name}, ',', ' ', ${state_name}) ;;
  }

# State

  dimension: state_id {     #state FIPS
    type: number
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_abbrv {    #state abbreviation
    type: string
    sql: ${TABLE}.stateabbrv ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.statename ;;
  }

# Commuting Zone

  dimension: cz_id {
    label: "CZ id"
    type: number
    sql: ${TABLE}.cz ;;
  }

  dimension: cz_name {
    type: string
    sql: ${TABLE}.cz_name ;;
  }

  dimension: cz_pop2000 {
    label: "CZ population in 2000"
    type: number
    sql: ${TABLE}.cz_pop2000 ;;
  }

# Income Segregation

  dimension: income_segregation {
    label: "Income Segregation"
    type: number
    sql: ${TABLE}.cs00_seg_inc ;;
  }

  dimension: income_seg_affluence {
   label: "Segregation of Affluence (>p75)"
   type: number
    sql: ${TABLE}.cs00_seg_inc_aff75 ;;
  }

  dimension: income_seg_poverty {
    label: "Segregation of Poverty (< p25)"
    type: number
    sql: ${TABLE}.cs00_seg_inc_pov25 ;;
  }

  dimension: frac_middleclass {
    label: "Fraction Middle Class (p25-p75)"
    type: number
    sql: ${TABLE}.frac_middleclass ;;
  }

  dimension: gini99 {
    label: "Gini Index"
    type: number
    sql: ${TABLE}.gini99  ;;
    value_format: "0.00"
  }

  dimension: social_capital {
    label: "Social Capital Index"
    description: "Standardized index combining measures of voter turnout rates, the fraction of people who return their census forms, and measures of participation in community organizations"
    type: number
    sql: ${TABLE}.scap_ski90pcm ;;
    value_format: "0.000"
  }

  dimension: inc_share_1perc {
    label: "Top 1% Income Share"
    type: number
    sql: ${TABLE}.inc_share_1perc ;;
  }

  dimension: poor_share {     #Fraction of population below the poverty line
    label: "Poverty Rate"
    type: number
    sql: ${TABLE}.poor_share ;;
    value_format: "0.00%"
  }

  dimension: e_rank_b {           # Expected Rank at p25
    label: "Absolute Mobility"
    type: number
    sql: ${TABLE}.e_rank_b ;;
  }

  dimension: avg_hh_inc {
    label: "Avg Household Income"
    description: "Aggregate household income in the 2000 Census divided by the number of people aged 16-64"
    type: number
    sql: ${TABLE}.hhinc00 ;;
    value_format: "$#,##0.00"
  }

  measure: avg_hh_inc_sum {
    label: "Avg Household Income 2000"
    type: sum
    sql: ${avg_hh_inc} ;;
    value_format: "$#,##0.00"
  }


# Smokers by Quartile

  dimension: smoke_q1 {
    label: "Fraction Current Smokers in Q1"
    type: number
    sql: ${TABLE}.cur_smoke_q1 ;;

  }

  measure: smokers_q1 {
    type: number
    sql: ${smoke_q1} ;;
    value_format: "0.00%"
  }

  dimension: smoke_q2 {
    label: "Fraction Current Smokers in Q2"
    type: number
    sql: ${TABLE}.cur_smoke_q2 ;;
  }

  measure: smokers_q2 {
    type: number
    sql: ${smoke_q2} ;;
    value_format: "0.00%"
  }

  dimension: smoke_q3 {
    label: "Fraction Current Smokers in Q3"
    type: number
    sql: ${TABLE}.cur_smoke_q3 ;;
  }

  measure: smokers_q3 {
    type: number
    sql: ${smoke_q3} ;;
    value_format: "0.00%"
  }

  dimension: smoke_q4 {
    label: "Fraction Current Smokers in Q4"
    type: number
    sql: ${TABLE}.cur_smoke_q4 ;;
  }

  measure: smokers_q4 {
    type: number
    sql: ${smoke_q4} ;;
    value_format: "0.00%"
  }

  # Obesity by Quartile

  dimension: obese_q1 {
    label: "Fraction Obese in Q1"
    type: number
    sql: ${TABLE}.bmi_obese_q1 ;;
    value_format: "0.00%"
  }

  measure: pcnt_obese_q1 {
    type: sum
    sql: ${obese_q1} ;;
    value_format: "0.00%"
  }

  dimension: obese_q2 {
    label: "Fraction Obese in Q2"
    type: number
    sql: ${TABLE}.bmi_obese_q2 ;;
  }

  measure: pcnt_obese_q2 {
    type: sum
    sql: ${obese_q2} ;;
    value_format: "0.00%"
  }

  dimension: obese_q3 {
    label: "Fraction Obese in Q3"
    type: number
    sql: ${TABLE}.bmi_obese_q3 ;;
  }

  measure: pcnt_obese_q3 {
    type: sum
    sql: ${obese_q3} ;;
    value_format: "0.00%"
  }

  dimension: obese_q4 {
    label: "Fraction Obese in Q4"
    type: number
    sql: ${TABLE}.bmi_obese_q4 ;;
  }

  measure: pcnt_obese_q4 {
    type: sum
    sql: ${obese_q4} ;;
    value_format: "0.00%"
  }

# Education

  dimension: tuition {
    type: number
    sql: ${TABLE}.tuition ;;
  }

  dimension: cs_educ_ba {
    label: "Percent College Grads"
    type: number
    sql: ${TABLE}.cs_educ_ba ;;
     value_format: "0.0\%"
  }

  measure: pcnt_college_grads {
    label: "Percent College Grads"
    type: sum
    sql: ${cs_educ_ba} ;;
    value_format: "0.00\%"
  }

  dimension: dropout_rate {
    label: "High School Dropout Rate "
    type: number
    sql: ${TABLE}.dropout_r ;;
  }

  dimension: gradrate_r {
    type: number
    sql: ${TABLE}.gradrate_r ;;
  }

# Race Demographics

 dimension: pcnt_black {
    type: number
    sql: ${TABLE}.cs_frac_black ;;
  }

  dimension: pcnt_hisp {
    type: number
    sql: ${TABLE}.cs_frac_hisp ;;
  }

  measure: percent_black {
    label: "Percent Black"
    type: sum
    sql: ${pcnt_black} ;;
    value_format: "0.00\%"
  }

  measure: percent_hispanic {
    label: "Percent Hispanic"
    type: sum
    sql: ${pcnt_hisp} ;;
    value_format: "0.00\%"
  }

  dimension: racial_segregation {
    type: number
    sql: ${TABLE}.cs_race_theil_2000 ;;
  }

# Exercise by Quartile

 dimension: exercise_q1 {
    label: "Exercised in Past 30 Days in Q1"
    type: number
    sql: ${TABLE}.exercise_any_q1 ;;
    value_format: "0.00%"
  }

  measure: pcnt_exercerise_q1 {
    type: sum
    sql: ${exercise_q1} ;;
    value_format: "0.00%"
  }

  dimension: exercise_q2 {
    label: "Exercised in Past 30 Days in Q2"
    type: number
    sql: ${TABLE}.exercise_any_q2 ;;
  }

  measure: pcnt_exercerise_q2 {
    type: sum
    sql: ${exercise_q2} ;;
    value_format: "0.00%"
  }

  dimension: exercise_q3 {
    label: "Exercised in Past 30 Days in Q3"
    type: number
    sql: ${TABLE}.exercise_any_q3 ;;
  }

  measure: pcnt_exercerise_q3 {
    type: sum
    sql: ${exercise_q3} ;;
    value_format: "0.00%"
  }

  dimension: exercise_q4 {
    label: "Exercised in Past 30 Days in Q4"
    type: number
    sql: ${TABLE}.exercise_any_q4 ;;
    value_format: "0.00%"
  }

  measure: pcnt_exercerise_q4 {
    type: sum
    sql: ${exercise_q4} ;;
    value_format: "0.00%"
  }


# Migration Rates

  dimension: mig_inflow {
    label: "Migration Inflow"
    type: number
    sql: ${TABLE}.mig_inflow ;;
    value_format: "0.00%"
  }

  measure: migration_inflow_rate{
    type: sum
    sql: ${mig_inflow} ;;
    value_format: "0.00%"
  }

  dimension: mig_outflow {
    label: "Migration Outflow"
    type: number
    sql: ${TABLE}.mig_outflow ;;
    value_format: "0.00%"
  }

  measure: migration_outflow_rate {
    type: sum
    sql: ${mig_outflow} ;;
    value_format: "0.00%"
  }

  dimension: born_foreign {           # try to add % sign
    label: "Percent Immigrants"
    type: number
    sql: ${TABLE}.cs_born_foreign ;;
    value_format: "0.00\%"
  }

# Other Factors

 dimension: pop_density {
    type: number
    sql: ${TABLE}.pop_density ;;
  }

  measure: population_density {
    label: "Population Density in 2000"
    description: "Population divided by the land area in square miles"
    type: sum
    sql: ${pop_density} ;;
    value_format: "#,##0.00"
  }

  dimension: cs_fam_wkidsinglemom {
    label: "Fraction of Children with Single Mother"
    type: number
    sql: ${TABLE}.cs_fam_wkidsinglemom ;;
  }

  dimension: crime_total {
    label: "Crime Rate"
    type: number
    sql: ${TABLE}.crime_total ;;
  }

  dimension: subcty_exp_pc {
    label: "Local Government Expenditures"
    type: number
    sql: ${TABLE}.subcty_exp_pc ;;
  }

  dimension: taxrate {
    label: "Local Tax Rate"
    type: number
    sql: ${TABLE}.taxrate ;;
  }

 dimension: unemp_rate {
    label: "Unemployment Rate in 2000"
    type: number
    sql: ${TABLE}.unemp_rate ;;
  value_format: "0.00%"
  }

  dimension: labor_force {
    label: "Labor Force Participation"
    type: number
    sql: ${TABLE}.cs_labforce ;;
  }

# Measures

  measure: count {
    type: count
    drill_fields: [state_name, county_state, cz_name]
  }

  measure: gini_measure {
    type: sum
    sql:  ${gini99};;
    drill_fields: [unemp_rate, mig_inflow, pcnt_black, pcnt_hisp,  e_rank_b, social_capital]
}

#   measure: total_avg_LE {
#     type: average
#     sql: (${county_gender_income_quartile.le_agg_q1_f} + ${county_gender_income_quartile.le_agg_q2_f} + ${county_gender_income_quartile.le_agg_q3_f} + ${county_gender_income_quartile.le_agg_q4_f} + ${county_gender_income_quartile.le_agg_q1_m} + ${county_gender_income_quartile.le_agg_q2_m} + ${county_gender_income_quartile.le_agg_q3_m} + ${county_gender_income_quartile.le_agg_q4_m})/8 ;;
#     drill_fields: [county_state, social_capital, avg_hh_inc, ]
# }

#  measure: total_avg_LE_counties {
#   label: "Total Avg Life Expectancy"
#   description: "County names in tooltip"
#   type: average
#   sql: (${county_gender_income_quartile.le_agg_q1_f} + ${county_gender_income_quartile.le_agg_q2_f} + ${county_gender_income_quartile.le_agg_q3_f} + ${county_gender_income_quartile.le_agg_q4_f} + ${county_gender_income_quartile.le_agg_q1_m} + ${county_gender_income_quartile.le_agg_q2_m} + ${county_gender_income_quartile.le_agg_q3_m} + ${county_gender_income_quartile.le_agg_q4_m})/8 ;;
#   drill_fields: [county_state, social_capital, avg_hh_inc, ]
#   html: | {{rendered_value}} || County: {{county_characteristics.cty_name._rendered_value }} ;;
# }


# Mortality rates for heart attack, heart failure, pneumonia

#   dimension: mortality30day_heart_attack {
#     type: number
#     sql: ${TABLE}.adjmortmeas_amiall30day ;;
#   }
#
#   dimension: adjmortmeas_chfall30day {
#     type: number
#     sql: ${TABLE}.adjmortmeas_chfall30day ;;
#   }
#
#   dimension: adjmortmeas_pnall30day {
#     type: number
#     sql: ${TABLE}.adjmortmeas_pnall30day ;;
#   }

# 30-day Hospital Mortality Rate Index
#
#  dimension: mort_30day_hosp_z {
#     type: number
#     sql: ${TABLE}.mort_30day_hosp_z ;;
#   }

# Statistical Area

#   dimension: csa {
#     type: number
#     sql: ${TABLE}.csa ;;
#   }
#
#   dimension: csa_name {
#     type: string
#     sql: ${TABLE}.csa_name ;;
#   }
#  dimension: cbsa {
#     type: number
#     sql: ${TABLE}.cbsa ;;
#   }
#
#   dimension: cbsa_name {
#     type: string
#     sql: ${TABLE}.cbsa_name ;;
#   }

# Urban Area (0 or 1)

#   dimension: intersects_msa {
#     type: number
#     sql: ${TABLE}.intersects_msa ;;
#   }

# Medicare Enrollees



# Percent Uninsured

#   dimension: puninsured2010 {
#     type: number
#     sql: ${TABLE}.puninsured2010 ;;
#   }

# Percent of Medicare Enrollees with at Least One Primary Care Visit

#   dimension: primcarevis_10 {
#     type: number
#     sql: ${TABLE}.primcarevis_10 ;;
#   }

# Percent Female Aged 67-69 with Mammogram

#   dimension: mammogram_10 {
#     type: number
#     sql: ${TABLE}.mammogram_10 ;;
#   }

# Percent Change in Population 1980-2000

#   dimension: pop_d_2000_1980 {
#     type: number
#     sql: ${TABLE}.pop_d_2000_1980 ;;
#   }

# School Expenditure per Student
#   dimension: ccd_exp_tot {
#     type: number
#     sql: ${TABLE}.ccd_exp_tot ;;
#   }
#
# Student-Teacher Ratio
#   dimension: ccd_pup_tch_ratio {
#     type: number
#     sql: ${TABLE}.ccd_pup_tch_ratio ;;
#   }
}
