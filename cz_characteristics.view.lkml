view: cz_characteristics {
  sql_table_name: Income_life_expectancy.CZ_characteristics ;;

  dimension: adjmortmeas_amiall30day {
    type: number
    sql: ${TABLE}.adjmortmeas_amiall30day ;;
  }

  dimension: adjmortmeas_chfall30day {
    type: number
    sql: ${TABLE}.adjmortmeas_chfall30day ;;
  }

  dimension: adjmortmeas_pnall30day {
    type: number
    sql: ${TABLE}.adjmortmeas_pnall30day ;;
  }

  dimension: amb_disch_per1000_10 {
    type: number
    sql: ${TABLE}.amb_disch_per1000_10 ;;
  }

  dimension: bmi_obese_q1 {
    type: number
    sql: ${TABLE}.bmi_obese_q1 ;;
  }

  dimension: bmi_obese_q2 {
    type: number
    sql: ${TABLE}.bmi_obese_q2 ;;
  }

  dimension: bmi_obese_q3 {
    type: number
    sql: ${TABLE}.bmi_obese_q3 ;;
  }

  dimension: bmi_obese_q4 {
    type: number
    sql: ${TABLE}.bmi_obese_q4 ;;
  }

  dimension: ccd_exp_tot {
    type: number
    sql: ${TABLE}.ccd_exp_tot ;;
  }

  dimension: ccd_pup_tch_ratio {
    type: number
    sql: ${TABLE}.ccd_pup_tch_ratio ;;
  }

  dimension: crime_total {
    type: number
    sql: ${TABLE}.crime_total ;;
  }

  dimension: cs00_seg_inc {
    type: number
    sql: ${TABLE}.cs00_seg_inc ;;
  }

  dimension: cs00_seg_inc_aff75 {
    type: number
    sql: ${TABLE}.cs00_seg_inc_aff75 ;;
  }

  dimension: cs00_seg_inc_pov25 {
    type: number
    sql: ${TABLE}.cs00_seg_inc_pov25 ;;
  }

  dimension: cs_born_foreign {
    type: number
    sql: ${TABLE}.cs_born_foreign ;;
  }

  dimension: cs_educ_ba {
    type: number
    sql: ${TABLE}.cs_educ_ba ;;
  }

  dimension: cs_elf_ind_man {
    type: number
    sql: ${TABLE}.cs_elf_ind_man ;;
  }

  dimension: cs_fam_wkidsinglemom {
    type: number
    sql: ${TABLE}.cs_fam_wkidsinglemom ;;
  }

  dimension: cs_frac_black {
    type: number
    sql: ${TABLE}.cs_frac_black ;;
  }

  dimension: cs_frac_hisp {
    type: number
    sql: ${TABLE}.cs_frac_hisp ;;
  }

  dimension: cs_labforce {
    type: number
    sql: ${TABLE}.cs_labforce ;;
  }

  dimension: cs_race_theil_2000 {
    type: number
    sql: ${TABLE}.cs_race_theil_2000 ;;
  }

  dimension: cur_smoke_q1 {
    type: number
    sql: ${TABLE}.cur_smoke_q1 ;;
  }

  dimension: cur_smoke_q2 {
    type: number
    sql: ${TABLE}.cur_smoke_q2 ;;
  }

  dimension: cur_smoke_q3 {
    type: number
    sql: ${TABLE}.cur_smoke_q3 ;;
  }

  dimension: cur_smoke_q4 {
    type: number
    sql: ${TABLE}.cur_smoke_q4 ;;
  }

  dimension: cz {
    type: number
    sql: ${TABLE}.cz ;;
  }

  dimension: czname {
    type: string
    sql: ${TABLE}.czname ;;
  }

  dimension: diab_eyeexam_10 {
    type: number
    sql: ${TABLE}.diab_eyeexam_10 ;;
  }

  dimension: diab_hemotest_10 {
    type: number
    sql: ${TABLE}.diab_hemotest_10 ;;
  }

  dimension: diab_lipids_10 {
    type: number
    sql: ${TABLE}.diab_lipids_10 ;;
  }

  dimension: dropout_r {
    type: number
    sql: ${TABLE}.dropout_r ;;
  }

  dimension: e_rank_b {
    type: number
    sql: ${TABLE}.e_rank_b ;;
  }

  dimension: exercise_any_q1 {
    type: number
    sql: ${TABLE}.exercise_any_q1 ;;
  }

  dimension: exercise_any_q2 {
    type: number
    sql: ${TABLE}.exercise_any_q2 ;;
  }

  dimension: exercise_any_q3 {
    type: number
    sql: ${TABLE}.exercise_any_q3 ;;
  }

  dimension: exercise_any_q4 {
    type: number
    sql: ${TABLE}.exercise_any_q4 ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: frac_middleclass {
    type: number
    sql: ${TABLE}.frac_middleclass ;;
  }

  dimension: frac_traveltime_lt15 {
    type: number
    sql: ${TABLE}.frac_traveltime_lt15 ;;
  }

  dimension: gini99 {
    type: number
    sql: ${TABLE}.gini99 ;;
  }

  dimension: gradrate_r {
    type: number
    sql: ${TABLE}.gradrate_r ;;
  }

  dimension: hhinc00 {
    type: number
    sql: ${TABLE}.hhinc00 ;;
  }

  dimension: inc_share_1perc {
    type: number
    sql: ${TABLE}.inc_share_1perc ;;
  }

  dimension: lf_d_2000_1980 {
    type: number
    sql: ${TABLE}.lf_d_2000_1980 ;;
  }

  dimension: mammogram_10 {
    type: number
    sql: ${TABLE}.mammogram_10 ;;
  }

  dimension: med_prev_qual_z {
    type: number
    sql: ${TABLE}.med_prev_qual_z ;;
  }

  dimension: median_house_value {
    type: number
    sql: ${TABLE}.median_house_value ;;
  }

  dimension: mig_inflow {
    type: number
    sql: ${TABLE}.mig_inflow ;;
  }

  dimension: mig_outflow {
    type: number
    sql: ${TABLE}.mig_outflow ;;
  }

  dimension: mort_30day_hosp_z {
    type: number
    sql: ${TABLE}.mort_30day_hosp_z ;;
  }

  dimension: poor_share {
    type: number
    sql: ${TABLE}.poor_share ;;
  }

  dimension: pop2000 {
    type: number
    sql: ${TABLE}.pop2000 ;;
  }

  dimension: pop_d_2000_1980 {
    type: number
    sql: ${TABLE}.pop_d_2000_1980 ;;
  }

  dimension: pop_density {
    type: number
    sql: ${TABLE}.pop_density ;;
  }

  dimension: primcarevis_10 {
    type: number
    sql: ${TABLE}.primcarevis_10 ;;
  }

  dimension: puninsured2010 {
    type: number
    sql: ${TABLE}.puninsured2010 ;;
  }

  dimension: reimb_penroll_adj10 {
    type: number
    sql: ${TABLE}.reimb_penroll_adj10 ;;
  }

  dimension: rel_tot {
    type: number
    sql: ${TABLE}.rel_tot ;;
  }

  dimension: scap_ski90pcm {
    type: number
    sql: ${TABLE}.scap_ski90pcm ;;
  }

  dimension: score_r {
    type: number
    sql: ${TABLE}.score_r ;;
  }

  dimension: stateabbrv {
    type: string
    sql: ${TABLE}.stateabbrv ;;
  }

  dimension: statename {
    type: string
    sql: ${TABLE}.statename ;;
  }

  dimension: subcty_exp_pc {
    type: number
    sql: ${TABLE}.subcty_exp_pc ;;
  }

  dimension: tax_st_diff_top20 {
    type: number
    sql: ${TABLE}.tax_st_diff_top20 ;;
  }

  dimension: taxrate {
    type: number
    sql: ${TABLE}.taxrate ;;
  }

  dimension: tuition {
    type: number
    sql: ${TABLE}.tuition ;;
  }

  dimension: unemp_rate {
    type: number
    sql: ${TABLE}.unemp_rate ;;
  }

  measure: count {
    type: count
    drill_fields: [statename, czname]
  }
}
