view: county_characteristics {
  sql_table_name: Income_life_expectancy.county_characteristics ;;

# County

  dimension: cty_name {
    hidden: yes
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: county_code {      #county FIPS code
    label: "County code"
    type: string
    sql: REPLACE(CAST(${TABLE}.cty as string),',','');;
  }

  dimension: cty_pop2000 {
    label: "County population in 2000"
    type: number
    sql: ${TABLE}.cty_pop2000 ;;
  }


  dimension: county_state {
    primary_key: yes
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
    label: "Gini Index Within Bottom 99%"
    type: number
    sql: ${TABLE}.gini99 ;;
  }

  dimension: social_capital {         # Social cohesion!
    label: "Social Capital Index"
    type: number
    sql: ${TABLE}.scap_ski90pcm ;;
  }

  dimension: inc_share_1perc {
    label: "Top 1% Income Share"
    type: number
    sql: ${TABLE}.inc_share_1perc ;;
  }

  dimension: poor_share {
    label: "Poverty Rate"
    type: number
    sql: ${TABLE}.poor_share ;;
  }

  dimension: e_rank_b {           # Expected Rank at p25
    label: "Absolute Mobility"
    type: number
    sql: ${TABLE}.e_rank_b ;;
  }

  dimension: avg_hh_inc {
    label: "Avg Household Income"
    type: number
    sql: ${TABLE}.hhinc00 ;;
  }

# Smokers by Quartile

  dimension: smoke_q1 {
    label: "Fraction Current Smokers in Q1"
    type: number
    sql: ${TABLE}.cur_smoke_q1 ;;
  }

  dimension: smoke_q2 {
    label: "Fraction Current Smokers in Q2"
    type: number
    sql: ${TABLE}.cur_smoke_q2 ;;
  }

  dimension: smoke_q3 {
    label: "Fraction Current Smokers in Q3"
    type: number
    sql: ${TABLE}.cur_smoke_q3 ;;
  }

  dimension: smoke_q4 {
    label: "Fraction Current Smokers in Q4"
    type: number
    sql: ${TABLE}.cur_smoke_q4 ;;
  }

  # Obesity by Quartile

  dimension: obese_q1 {
    label: "Fraction Obese in Q1"
    type: number
    sql: ${TABLE}.bmi_obese_q1 ;;
  }

  dimension: obese_q2 {
    label: "Fraction Obese in Q2"
    type: number
    sql: ${TABLE}.bmi_obese_q2 ;;
  }

  dimension: obese_q3 {
    label: "Fraction Obese in Q3"
    type: number
    sql: ${TABLE}.bmi_obese_q3 ;;
  }

  dimension: obese_q4 {
    label: "Fraction Obese in Q4"
    type: number
    sql: ${TABLE}.bmi_obese_q4 ;;
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

 dimension: percent_black {
    label: "Percent Black"
    type: number
    sql: ${TABLE}.cs_frac_black ;;
  }

  dimension: percent_hisp {
    label: "Percent Hispanic"
    type: number
    sql: ${TABLE}.cs_frac_hisp ;;
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
  }

  dimension: exercise_q2 {
    label: "Exercised in Past 30 Days in Q2"
    type: number
    sql: ${TABLE}.exercise_any_q2 ;;
  }

  dimension: exercise_q3 {
    label: "Exercised in Past 30 Days in Q3"
    type: number
    sql: ${TABLE}.exercise_any_q3 ;;
  }

  dimension: exercise_q4 {
    label: "Exercised in Past 30 Days in Q4"
    type: number
    sql: ${TABLE}.exercise_any_q4 ;;
  }


# Migration Rates

  dimension: mig_inflow {
    label: "Migration Inflow Rate"
    type: number
    sql: ${TABLE}.mig_inflow ;;
  }

  dimension: mig_outflow {
    label: "Migration Outflow Rate"
    type: number
    sql: ${TABLE}.mig_outflow ;;
  }

  dimension: born_foreign {
    label: "Percent Foreign Born"
    type: number
    sql: ${TABLE}.cs_born_foreign ;;
  }

# Other Factors

 dimension: pop_density {
    type: number
    sql: ${TABLE}.pop_density ;;
  }

  dimension: cs_fam_wkidsinglemom {
    label: "Fraction of Children with Single Mother"
    type: number
    sql: ${TABLE}.cs_fam_wkidsinglemom ;;
  }

  dimension: crime_total {
    label: "Total Crime Rate"
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

  measure:  total_frac_smokers_Q1 {
    type: sum
    sql: ${smoke_q1} ;;
  }

  measure: gini_measure {
    type: sum
    sql:  ${gini99};;
    drill_fields: [unemp_rate, mig_inflow, percent_black, percent_hisp,  e_rank_b, social_capital]
}




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
