-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2013 at 11:33 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hope_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `is_viewable` tinyint(1) DEFAULT '0',
  `is_permission_need` tinyint(1) DEFAULT '0',
  `label` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admission_checklists`
--

CREATE TABLE IF NOT EXISTS `admission_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `patient_file` enum('Yes','No') NOT NULL,
  `patient_file_remark` varchar(255) NOT NULL,
  `deposit_receipt` enum('Yes','No') NOT NULL,
  `deposit_receipt_remark` varchar(255) NOT NULL,
  `identification_band` enum('Yes','No') NOT NULL,
  `identification_band_remark` varchar(255) NOT NULL,
  `assessment_form` enum('Yes','No') NOT NULL,
  `assessment_form_remark` varchar(255) NOT NULL,
  `unit_readiness` enum('Yes','No') NOT NULL,
  `unit_readiness_remark` varchar(255) NOT NULL,
  `orientation_to_patient` enum('Yes','No') NOT NULL,
  `orientation_to_patient_remark` varchar(255) NOT NULL,
  `orientation_to_relative` enum('Yes','No') NOT NULL,
  `orientation_to_relative_remark` varchar(255) NOT NULL,
  `patient_uniform` enum('Yes','No') NOT NULL,
  `patient_uniform_remark` varchar(255) NOT NULL,
  `drinking_water` enum('Yes','No') NOT NULL,
  `drinking_water_remark` varchar(255) NOT NULL,
  `glass_with_cover` enum('Yes','No') NOT NULL,
  `glass_with_cover_remark` varchar(255) NOT NULL,
  `information_to_rmo` enum('Yes','No') NOT NULL,
  `information_to_rmo_remark` varchar(255) NOT NULL,
  `information_to_consultant` enum('Yes','No') NOT NULL,
  `information_to_consultant_remark` varchar(255) NOT NULL,
  `vital_sign_checked` enum('Yes','No') NOT NULL,
  `vital_sign_checked_remark` varchar(255) NOT NULL,
  `preparation_for_ot` enum('Yes','No') NOT NULL,
  `preparation_for_ot_remark` varchar(255) NOT NULL,
  `information_to_dieticion` enum('Yes','No') NOT NULL,
  `information_to_dieticion_reamrk` varchar(255) NOT NULL,
  `diet_given_time` enum('Yes','No') NOT NULL,
  `diet_given_time_remark` varchar(255) NOT NULL,
  `set_medication_given` enum('Yes','No') NOT NULL,
  `set_medication_given_reamrk` varchar(255) NOT NULL,
  `staff_nurse` varchar(255) NOT NULL,
  `floor_incharge` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advance_types`
--

CREATE TABLE IF NOT EXISTS `advance_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `standard_amount` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anaesthesia_consent_forms`
--

CREATE TABLE IF NOT EXISTS `anaesthesia_consent_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `registration_no` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `anaesthesiologist_name` int(11) DEFAULT NULL,
  `general_anaesthesia` tinyint(1) DEFAULT NULL,
  `regional_anaesthesia` tinyint(1) DEFAULT NULL,
  `nerve_block` tinyint(1) DEFAULT NULL,
  `anaesthesia_procedure` tinyint(1) DEFAULT NULL,
  `anaesthesia_risks` tinyint(1) DEFAULT NULL,
  `anaesthesia_symptoms` tinyint(1) DEFAULT NULL,
  `anaesthesia_suppliment` tinyint(1) DEFAULT NULL,
  `anaesthesia_time` datetime DEFAULT NULL,
  `relationship_to_patient` varchar(255) DEFAULT NULL,
  `relationship_to_address` varchar(255) DEFAULT NULL,
  `relationship_to_telephone` varchar(255) DEFAULT NULL,
  `relationship_to_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL COMMENT 'Store User Id',
  `department_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `purpose` text,
  `visit_type` varchar(30) DEFAULT NULL,
  `app_token` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0' COMMENT '''1'' for deleted appointment',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_first_admissions`
--

CREATE TABLE IF NOT EXISTS `assessment_first_admissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `admitting_unit` varchar(255) DEFAULT NULL,
  `allergies` varchar(255) DEFAULT NULL,
  `patient` tinyint(1) DEFAULT NULL,
  `other` tinyint(1) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `mode_of_access_ambulatory` tinyint(1) DEFAULT NULL,
  `mode_of_access_wc` tinyint(1) DEFAULT NULL,
  `mode_of_access_stretcher` tinyint(1) DEFAULT NULL,
  `mode_of_access_other` tinyint(1) DEFAULT NULL,
  `mode_of_access_other_txt` varchar(255) DEFAULT NULL,
  `transported_with_oxygen` tinyint(1) DEFAULT NULL,
  `transported_with_monitor` tinyint(1) DEFAULT NULL,
  `transported_with_iv` tinyint(1) DEFAULT NULL,
  `transported_with_other` tinyint(1) DEFAULT NULL,
  `transported_with_other_txt` varchar(255) DEFAULT NULL,
  `from_home` tinyint(1) DEFAULT NULL,
  `from_er` tinyint(1) DEFAULT NULL,
  `from_opd` tinyint(1) DEFAULT NULL,
  `from_other` tinyint(1) DEFAULT NULL,
  `from_other_txt` varchar(255) DEFAULT NULL,
  `temprature` varchar(255) DEFAULT NULL,
  `pulse` varchar(255) DEFAULT NULL,
  `rr` varchar(255) DEFAULT NULL,
  `bp` varchar(255) DEFAULT NULL,
  `ht` varchar(255) DEFAULT NULL,
  `wt` varchar(255) DEFAULT NULL,
  `usual_can_perform_adl` varchar(255) DEFAULT NULL,
  `usual_feeding` varchar(255) DEFAULT NULL,
  `admission_feeding` varchar(255) DEFAULT NULL,
  `usual_bathing` varchar(255) DEFAULT NULL,
  `admission_bathing` varchar(255) DEFAULT NULL,
  `usual_toileting` varchar(255) DEFAULT NULL,
  `admission_toileting` varchar(255) DEFAULT NULL,
  `usual_general_mobility` varchar(255) DEFAULT NULL,
  `admission_general_mobility` varchar(255) DEFAULT NULL,
  `usual_dressing` varchar(255) DEFAULT NULL,
  `admission_dressing` varchar(255) DEFAULT NULL,
  `id_band_on_1` tinyint(1) DEFAULT NULL,
  `id_band_on_2` tinyint(1) DEFAULT NULL,
  `oriented_to_unit_1` tinyint(1) DEFAULT NULL,
  `oriented_to_unit_2` tinyint(1) DEFAULT NULL,
  `call_bell_in_reach_1` tinyint(1) DEFAULT NULL,
  `call_bell_in_reach_2` tinyint(1) DEFAULT NULL,
  `score_confused` tinyint(1) DEFAULT NULL,
  `score_post_op_condition` tinyint(1) DEFAULT NULL,
  `score_narcotics` tinyint(1) DEFAULT NULL,
  `score_unstable_gait` tinyint(1) DEFAULT NULL,
  `drug` tinyint(1) DEFAULT NULL,
  `score_bowel` tinyint(1) DEFAULT NULL,
  `score_hx` tinyint(1) DEFAULT NULL,
  `score_walker` tinyint(1) DEFAULT NULL,
  `score_age_70_more` tinyint(1) DEFAULT NULL,
  `score_recent_hx_of_fall` tinyint(1) DEFAULT NULL,
  `score_postural_hypo_tension` tinyint(1) DEFAULT NULL,
  `score_uncooperative_impaired_judgement` tinyint(1) DEFAULT NULL,
  `score_age_12_younger` tinyint(1) DEFAULT NULL,
  `score_poor_eyesight` tinyint(1) DEFAULT NULL,
  `score_language_barrier` tinyint(1) DEFAULT NULL,
  `score_paralysis_hemiplegia` tinyint(1) DEFAULT NULL,
  `score_new_medication` tinyint(1) DEFAULT NULL,
  `score_poor_hearing` tinyint(1) DEFAULT NULL,
  `completely_limited` tinyint(1) DEFAULT NULL,
  `always_moist` tinyint(1) DEFAULT NULL,
  `bed_rest` tinyint(1) DEFAULT NULL,
  `completely_immobile` tinyint(1) DEFAULT NULL,
  `very_poor` tinyint(1) DEFAULT NULL,
  `problem` tinyint(1) DEFAULT NULL,
  `very_limited` tinyint(1) DEFAULT NULL,
  `very_moist` tinyint(1) DEFAULT NULL,
  `chair_rest` tinyint(1) DEFAULT NULL,
  `probably_inadequate` tinyint(1) DEFAULT NULL,
  `potential_problem` tinyint(1) DEFAULT NULL,
  `slightly_limited` tinyint(1) DEFAULT NULL,
  `occasionally_moist` tinyint(1) DEFAULT NULL,
  `walks_occasionally` tinyint(1) DEFAULT NULL,
  `slightly_limited_mobility` tinyint(1) DEFAULT NULL,
  `adequate` tinyint(1) DEFAULT NULL,
  `no_apparent_problem` tinyint(1) DEFAULT NULL,
  `sensory_perception_no` tinyint(1) DEFAULT NULL,
  `rarely_moist` tinyint(1) DEFAULT NULL,
  `walks_frequently` tinyint(1) DEFAULT NULL,
  `no_limitation` tinyint(1) DEFAULT NULL,
  `excellent` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_second_admissions`
--

CREATE TABLE IF NOT EXISTS `assessment_second_admissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `pediatrics_na` tinyint(1) DEFAULT NULL,
  `pediatrics_nsf` tinyint(1) DEFAULT NULL,
  `diet_formula_yes` tinyint(1) DEFAULT NULL,
  `diet_formula_no` tinyint(1) DEFAULT NULL,
  `bottlefed_yes` tinyint(1) DEFAULT NULL,
  `bottlefed_no` tinyint(1) DEFAULT NULL,
  `bf_yes` tinyint(1) DEFAULT NULL,
  `bf_no` tinyint(1) DEFAULT NULL,
  `warmed_yes` tinyint(1) DEFAULT NULL,
  `warmed_no` tinyint(1) DEFAULT NULL,
  `teeth_yes` tinyint(1) DEFAULT NULL,
  `teeth_no` tinyint(1) DEFAULT NULL,
  `feeding_problem` varchar(255) DEFAULT NULL,
  `diapers_yes` tinyint(1) DEFAULT NULL,
  `diapers_no` tinyint(1) DEFAULT NULL,
  `toilet_training_yes` tinyint(1) DEFAULT NULL,
  `toilet_training_no` tinyint(1) DEFAULT NULL,
  `word_used_form_bm` varchar(255) DEFAULT NULL,
  `immunization_status_yes` tinyint(1) DEFAULT NULL,
  `immunization_status_no` tinyint(1) DEFAULT NULL,
  `head_circ_child_under_2` varchar(255) DEFAULT NULL,
  `chest_circ_child_under_2` varchar(255) DEFAULT NULL,
  `abd_circ_child_under_2` varchar(255) DEFAULT NULL,
  `head_nsf` tinyint(1) DEFAULT NULL,
  `head_scalp_dry` tinyint(1) DEFAULT NULL,
  `head_scalp_scaly` tinyint(1) DEFAULT NULL,
  `head_scalp_normal` tinyint(1) DEFAULT NULL,
  `head_hair_brittle` tinyint(1) DEFAULT NULL,
  `head_hair_scantly` tinyint(1) DEFAULT NULL,
  `head_hair_normal` tinyint(1) DEFAULT NULL,
  `head_injuries` varchar(255) DEFAULT NULL,
  `eyes_nsf` tinyint(1) DEFAULT NULL,
  `eyes_blurred_vision_yes` tinyint(1) DEFAULT NULL,
  `eyes_blurred_vision_no` tinyint(1) DEFAULT NULL,
  `eyes_double_vision_yes` tinyint(1) DEFAULT NULL,
  `eyes_double_vision_no` tinyint(1) DEFAULT NULL,
  `eyes_inflammation_yes` tinyint(1) DEFAULT NULL,
  `eyes_inflammation_no` tinyint(1) DEFAULT NULL,
  `eyes_pain_yes` tinyint(1) DEFAULT NULL,
  `eyes_pain_no` tinyint(1) DEFAULT NULL,
  `eyes_color_blind_yes` tinyint(1) DEFAULT NULL,
  `eyes_color_blind_no` tinyint(1) DEFAULT NULL,
  `eyes_itching_yes` tinyint(1) DEFAULT NULL,
  `eyes_itching_no` tinyint(1) DEFAULT NULL,
  `eyes_pupil_abnormal_yes` tinyint(1) DEFAULT NULL,
  `eyes_pupil_abnormal_no` tinyint(1) DEFAULT NULL,
  `eyes_discharge_yes` tinyint(1) DEFAULT NULL,
  `eyes_discharge_no` tinyint(1) DEFAULT NULL,
  `eyes_colour` varchar(255) DEFAULT NULL,
  `eyes_other` varchar(255) DEFAULT NULL,
  `ears_nsf` tinyint(1) DEFAULT NULL,
  `ears_deaf_yes` tinyint(1) DEFAULT NULL,
  `ears_deaf_no` tinyint(1) DEFAULT NULL,
  `ears_tinnitus_yes` tinyint(1) DEFAULT NULL,
  `ears_tinnitus_no` tinyint(1) DEFAULT NULL,
  `ears_dizziness_yes` tinyint(1) DEFAULT NULL,
  `ears_dizziness_no` tinyint(1) DEFAULT NULL,
  `ears_discharge_yes` tinyint(1) DEFAULT NULL,
  `ears_discharge_no` tinyint(1) DEFAULT NULL,
  `ears_pain_yes` tinyint(1) DEFAULT NULL,
  `ears_pain_no` tinyint(1) DEFAULT NULL,
  `ears_other_txt` varchar(255) DEFAULT NULL,
  `nose_nsf` tinyint(1) DEFAULT NULL,
  `nose_congestion_yes` tinyint(1) DEFAULT NULL,
  `nose_congestion_no` tinyint(1) DEFAULT NULL,
  `nose_sinus_problem_yes` tinyint(1) DEFAULT NULL,
  `nose_sinus_problem_no` tinyint(1) DEFAULT NULL,
  `nose_nasal_flaring_yes` tinyint(1) DEFAULT NULL,
  `nose_nasal_flaring_no` tinyint(1) DEFAULT NULL,
  `nose_nosebleeds_yes` tinyint(1) DEFAULT NULL,
  `nose_nosebleeds_no` tinyint(1) DEFAULT NULL,
  `nose_drainage_yes` tinyint(1) DEFAULT NULL,
  `nose_drainage_no` tinyint(1) DEFAULT NULL,
  `nose_colour` varchar(255) DEFAULT NULL,
  `nose_amount` varchar(255) DEFAULT NULL,
  `nose_other` varchar(255) DEFAULT NULL,
  `mouth_nsf` tinyint(1) DEFAULT NULL,
  `mouth_halitosis_yes` tinyint(1) DEFAULT NULL,
  `mouth_halitosis_no` tinyint(1) DEFAULT NULL,
  `mouth_bleeding_gums_yes` tinyint(1) DEFAULT NULL,
  `mouth_bleeding_gums_no` tinyint(1) DEFAULT NULL,
  `mouth_lesion_yes` tinyint(1) DEFAULT NULL,
  `mouth_lesion_no` tinyint(1) DEFAULT NULL,
  `mouth_sense_of_taste_yes` tinyint(1) DEFAULT NULL,
  `mouth_sense_of_taste_no` tinyint(1) DEFAULT NULL,
  `mouth_dental_hygiene_yes` tinyint(1) DEFAULT NULL,
  `mouth_dental_hygiene_no` tinyint(1) DEFAULT NULL,
  `throat_nsf` tinyint(1) DEFAULT NULL,
  `throat_sore_throat` tinyint(1) DEFAULT NULL,
  `throat_sore_throat_no` tinyint(1) DEFAULT NULL,
  `throat_hoarseness_yes` tinyint(1) DEFAULT NULL,
  `throat_hoarseness_no` tinyint(1) DEFAULT NULL,
  `throat_lumps_yes` tinyint(1) DEFAULT NULL,
  `throat_lumps_no` tinyint(1) DEFAULT NULL,
  `throat_swollen_glands_yes` tinyint(1) DEFAULT NULL,
  `throat_swollen_glands_no` tinyint(1) DEFAULT NULL,
  `throat_stiffness_yes` tinyint(1) DEFAULT NULL,
  `throat_stiffness_no` tinyint(1) DEFAULT NULL,
  `throat_dysphagia_yes` tinyint(1) DEFAULT NULL,
  `throat_dysphagia_no` tinyint(1) DEFAULT NULL,
  `neurological_nsf` tinyint(1) DEFAULT NULL,
  `neurological_cooperative_yes` tinyint(1) DEFAULT NULL,
  `neurological_cooperative_no` tinyint(1) DEFAULT NULL,
  `neurological_memory_changes_yes` tinyint(1) DEFAULT NULL,
  `neurological_memory_changes_no` tinyint(1) DEFAULT NULL,
  `neurological_dizziness_yes` tinyint(1) DEFAULT NULL,
  `neurological_dizziness_no` tinyint(1) DEFAULT NULL,
  `neurological_headache_yes` tinyint(1) DEFAULT NULL,
  `neurological_headache_no` tinyint(1) DEFAULT NULL,
  `neurological_oriented_yes` tinyint(1) DEFAULT NULL,
  `neurological_oriented_no` tinyint(1) DEFAULT NULL,
  `neurological_other` varchar(255) DEFAULT NULL,
  `neurological_oriented_to_person_yes` tinyint(1) DEFAULT NULL,
  `neurological_oriented_to_person_no` tinyint(1) DEFAULT NULL,
  `neurological_place_yes` tinyint(1) DEFAULT NULL,
  `neurological_place_no` tinyint(1) DEFAULT NULL,
  `neurological_time_yes` tinyint(1) DEFAULT NULL,
  `neurological_time_no` tinyint(1) DEFAULT NULL,
  `neurological_pupils_size` varchar(255) DEFAULT NULL,
  `neurological_deviation` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_third_admissions`
--

CREATE TABLE IF NOT EXISTS `assessment_third_admissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `pearla_yes` tinyint(1) DEFAULT NULL,
  `pearla_no` tinyint(1) DEFAULT NULL,
  `reaction_brisk` tinyint(1) DEFAULT NULL,
  `reaction_sluggish` tinyint(1) DEFAULT NULL,
  `reaction_no_response` tinyint(1) DEFAULT NULL,
  `loc_alert` tinyint(1) DEFAULT NULL,
  `loc_confused` tinyint(1) DEFAULT NULL,
  `loc_sedated` tinyint(1) DEFAULT NULL,
  `speech_clear` tinyint(1) DEFAULT NULL,
  `speech_slurred` tinyint(1) DEFAULT NULL,
  `speech_aphasic` tinyint(1) DEFAULT NULL,
  `speech_dysphasia` tinyint(1) DEFAULT NULL,
  `speech_none` tinyint(1) DEFAULT NULL,
  `speech_other` tinyint(1) DEFAULT NULL,
  `gcs_total_score` varchar(255) DEFAULT NULL,
  `gcs_na` tinyint(1) DEFAULT NULL,
  `eye_opening_no_response` tinyint(1) DEFAULT NULL,
  `eye_opening_to_pain` tinyint(1) DEFAULT NULL,
  `eye_opening_to_speech` tinyint(1) DEFAULT NULL,
  `eye_opening_spontaneous` tinyint(1) DEFAULT NULL,
  `bmr_no_response` tinyint(1) DEFAULT NULL,
  `bmr_extension` tinyint(1) DEFAULT NULL,
  `bmr_flexion_abnormal` tinyint(1) DEFAULT NULL,
  `bmr_flexion_withdrawal` tinyint(1) DEFAULT NULL,
  `bmr_localizes_pain` tinyint(1) DEFAULT NULL,
  `bmr_obeys_a_simple_response` tinyint(1) DEFAULT NULL,
  `bvr_no_verbal_response` tinyint(1) DEFAULT NULL,
  `bvr_incomprehensible_sound` tinyint(1) DEFAULT NULL,
  `bvr_inappropriate_words` tinyint(1) DEFAULT NULL,
  `bvr_confused` tinyint(1) DEFAULT NULL,
  `bvr_oriented` tinyint(1) DEFAULT NULL,
  `respiratory_nsf` tinyint(1) DEFAULT NULL,
  `dyspnea_none` tinyint(1) DEFAULT NULL,
  `dyspnea_with_activity` tinyint(1) DEFAULT NULL,
  `dyspnea_at_rest` tinyint(1) DEFAULT NULL,
  `dyspnea_lying_down` tinyint(1) DEFAULT NULL,
  `dyspnea_retractions` tinyint(1) DEFAULT NULL,
  `cough_none` tinyint(1) DEFAULT NULL,
  `cough_non_productive` tinyint(1) DEFAULT NULL,
  `cough_productive_colour` tinyint(1) DEFAULT NULL,
  `cough_amount` tinyint(1) DEFAULT NULL,
  `cough_amount_txt` varchar(255) DEFAULT NULL,
  `night_sweats_yes` tinyint(1) DEFAULT NULL,
  `night_sweats_no` tinyint(1) DEFAULT NULL,
  `hemoptysis_yes` tinyint(1) DEFAULT NULL,
  `hemoptysis_no` tinyint(1) DEFAULT NULL,
  `cysnosis_yes` tinyint(1) DEFAULT NULL,
  `cyanosis_no` tinyint(1) DEFAULT NULL,
  `cyanosis_where` varchar(255) DEFAULT NULL,
  `cyanosis_other` varchar(255) DEFAULT NULL,
  `cardiovascular_nsf` tinyint(1) DEFAULT NULL,
  `chest_disconfort_yes` tinyint(1) DEFAULT NULL,
  `chest_discomfort_no` tinyint(1) DEFAULT NULL,
  `edema_yes` tinyint(1) DEFAULT NULL,
  `edema_no` tinyint(1) DEFAULT NULL,
  `edema_location` varchar(255) DEFAULT NULL,
  `edema_pitting` tinyint(1) DEFAULT NULL,
  `edema_non_pitting` tinyint(1) DEFAULT NULL,
  `pacemaker_yes` tinyint(1) DEFAULT NULL,
  `pacemaker_no` tinyint(1) DEFAULT NULL,
  `pacemaker_type` varchar(255) DEFAULT NULL,
  `pacemaker_date_inserted` date DEFAULT NULL,
  `musculoskeletal_nsf` tinyint(1) DEFAULT NULL,
  `skin_warm` tinyint(1) DEFAULT NULL,
  `skin_cool` tinyint(1) DEFAULT NULL,
  `skin_dry` tinyint(1) DEFAULT NULL,
  `skin_firm` tinyint(1) DEFAULT NULL,
  `skin_flasscid` tinyint(1) DEFAULT NULL,
  `skin_colour` tinyint(1) DEFAULT NULL,
  `tingling_yes` tinyint(1) DEFAULT NULL,
  `tingling_no` tinyint(1) DEFAULT NULL,
  `weakness_yes` tinyint(1) DEFAULT NULL,
  `weakness_no` tinyint(1) DEFAULT NULL,
  `deformity_yes` tinyint(1) DEFAULT NULL,
  `deformity_no` tinyint(1) DEFAULT NULL,
  `contractures_yes` tinyint(1) DEFAULT NULL,
  `contractures_no` tinyint(1) DEFAULT NULL,
  `joints_pain_yes` tinyint(1) DEFAULT NULL,
  `joints_pain_no` tinyint(1) DEFAULT NULL,
  `joints_stiffness_yes` tinyint(1) DEFAULT NULL,
  `joints_stiffness_no` tinyint(1) DEFAULT NULL,
  `rom_wnl` tinyint(1) DEFAULT NULL,
  `joints_other` tinyint(1) DEFAULT NULL,
  `gastrointestinal_nsf` tinyint(1) DEFAULT NULL,
  `appetite_good` tinyint(1) DEFAULT NULL,
  `appetite_poor` tinyint(1) DEFAULT NULL,
  `nausea_yes` tinyint(1) DEFAULT NULL,
  `nausea_no` tinyint(1) DEFAULT NULL,
  `vomiting_yes` tinyint(1) DEFAULT NULL,
  `vomiting_no` tinyint(1) DEFAULT NULL,
  `distention_yes` tinyint(1) DEFAULT NULL,
  `distention_no` tinyint(1) DEFAULT NULL,
  `heartburn_yes` tinyint(1) DEFAULT NULL,
  `heartburn_no` tinyint(1) DEFAULT NULL,
  `flatus_yes` tinyint(1) DEFAULT NULL,
  `flatus_no` tinyint(1) DEFAULT NULL,
  `colostomy_yes` tinyint(1) DEFAULT NULL,
  `colostomy_no` tinyint(1) DEFAULT NULL,
  `iieostomy_yes` tinyint(1) DEFAULT NULL,
  `iieostomy_no` tinyint(1) DEFAULT NULL,
  `gastrointentinal_pain_yes` tinyint(1) DEFAULT NULL,
  `gastrointentinal_pain_no` tinyint(1) DEFAULT NULL,
  `rectal_bleeding_yes` tinyint(1) DEFAULT NULL,
  `rectal_bleeding_no` tinyint(1) DEFAULT NULL,
  `bowel_no_problem` tinyint(1) DEFAULT NULL,
  `bowel_diarrhea` tinyint(1) DEFAULT NULL,
  `bowel_constipation` tinyint(1) DEFAULT NULL,
  `bowel_incontience` tinyint(1) DEFAULT NULL,
  `bowel_blood_in_stool` tinyint(1) DEFAULT NULL,
  `bowel_pain_yes` tinyint(1) DEFAULT NULL,
  `bowel_pain_no` tinyint(1) DEFAULT NULL,
  `bowel_hemorrhoids_yes` tinyint(1) DEFAULT NULL,
  `bowel_hemorrhoids_no` tinyint(1) DEFAULT NULL,
  `bowel_other` varchar(255) DEFAULT NULL,
  `gastrointestinal_frequency` varchar(255) DEFAULT NULL,
  `last_bowel_movement` varchar(255) DEFAULT NULL,
  `interventions_none` tinyint(1) DEFAULT NULL,
  `interventions_laxatives_yes` tinyint(1) DEFAULT NULL,
  `interventions_laxatives_no` tinyint(1) DEFAULT NULL,
  `interventions_type` varchar(255) DEFAULT NULL,
  `interventions_frequency` varchar(255) DEFAULT NULL,
  `enemas_yes` tinyint(1) DEFAULT NULL,
  `enemas_no` tinyint(1) DEFAULT NULL,
  `enemas_other` varchar(255) DEFAULT NULL,
  `enemas_frequency` varchar(255) DEFAULT NULL,
  `enemas_others` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_trails`
--

CREATE TABLE IF NOT EXISTS `audit_trails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `controller_name` varchar(255) NOT NULL,
  `controller_action` varchar(255) NOT NULL,
  `old_value` longtext NOT NULL,
  `new_value` longtext NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_trail_user_fk_constraint` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE IF NOT EXISTS `beds` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `room_id` smallint(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `bedno` varchar(255) DEFAULT NULL,
  `under_maintenance` tinyint(3) DEFAULT '0' COMMENT '"1" for "under maintenance"',
  `is_released` tinyint(4) DEFAULT '0',
  `released_date` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE IF NOT EXISTS `billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `reason_of_payment` varchar(255) DEFAULT NULL,
  `mode_of_payment` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `check_credit_card_number` varchar(255) DEFAULT NULL,
  `against` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_orders`
--

CREATE TABLE IF NOT EXISTS `blood_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `type_of_request` varchar(50) NOT NULL,
  `diagnosis` text NOT NULL,
  `trans_indication` varchar(255) NOT NULL,
  `hb` varchar(255) NOT NULL,
  `previous_transfusion_history` varchar(255) NOT NULL,
  `adverse_reaction` varchar(255) NOT NULL,
  `history_children_hdn` varchar(50) NOT NULL,
  `service_group_id` int(11) DEFAULT NULL,
  `phlebotomist` varchar(255) NOT NULL,
  `hospital` varchar(255) NOT NULL,
  `hospital_phone` varchar(20) NOT NULL,
  `treating_consultant` varchar(255) NOT NULL,
  `treating_consultant_phone` varchar(20) NOT NULL,
  `registrar` varchar(255) NOT NULL,
  `registrar_phone` varchar(20) NOT NULL,
  `blood_bank_id` int(11) DEFAULT NULL,
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_order_options`
--

CREATE TABLE IF NOT EXISTS `blood_order_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_order_id` int(11) NOT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `tariff_list_alias_name` varchar(255) DEFAULT NULL,
  `units` varchar(100) DEFAULT NULL,
  `blood_transfusion_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cake_sessions`
--

CREATE TABLE IF NOT EXISTS `cake_sessions` (
  `id` varchar(255) NOT NULL,
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chambers`
--

CREATE TABLE IF NOT EXISTS `chambers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `child_births`
--

CREATE TABLE IF NOT EXISTS `child_births` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `informant_name` varchar(100) DEFAULT NULL,
  `informant_address` text,
  `place_of_birth` varchar(10) DEFAULT NULL,
  `house_address` text,
  `hospital_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `is_town` varchar(10) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `father_edu` varchar(255) DEFAULT NULL,
  `mother_edu` varchar(255) DEFAULT NULL,
  `father_occu` varchar(255) DEFAULT NULL,
  `mother_occu` varchar(255) DEFAULT NULL,
  `mother_age_when_marry` int(11) DEFAULT NULL,
  `mother_age_at_this_birth` int(11) DEFAULT NULL,
  `no_of_child` int(11) DEFAULT NULL,
  `type_of_attention` varchar(100) DEFAULT NULL,
  `method_of_delivery` varchar(100) DEFAULT NULL,
  `birth_weight` varchar(50) DEFAULT NULL,
  `pregnancy_duration` varchar(50) DEFAULT NULL,
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collaborate_companies`
--

CREATE TABLE IF NOT EXISTS `collaborate_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employer_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `complaint` text NOT NULL,
  `action_taken` text,
  `time_of_resolution` datetime DEFAULT NULL,
  `resolution_time_taken` varchar(255) DEFAULT NULL,
  `resolved` smallint(1) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consents`
--

CREATE TABLE IF NOT EXISTS `consents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` smallint(6) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `patient_id` varchar(255) NOT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_sex` enum('Male','Female') DEFAULT NULL,
  `patient_age` varchar(255) DEFAULT NULL,
  `patient_year` varchar(255) DEFAULT NULL,
  `admission_id` int(11) DEFAULT NULL,
  `patient_diagnosis` varchar(255) DEFAULT NULL,
  `patient_operation_title` varchar(255) DEFAULT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `relative_sex` enum('Male','Female') DEFAULT NULL,
  `relative_age` varchar(255) DEFAULT NULL,
  `relative_year` varchar(255) DEFAULT NULL,
  `relative_address1` varchar(255) DEFAULT NULL,
  `relative_address2` varchar(255) DEFAULT NULL,
  `relation_with_patient` varchar(255) DEFAULT NULL,
  `consent_owner` varchar(255) DEFAULT NULL,
  `consent_for_type` varchar(5) DEFAULT NULL,
  `consent_for1` varchar(255) DEFAULT NULL,
  `consent_for2` int(11) DEFAULT NULL,
  `investigating_dr` int(11) DEFAULT NULL,
  `complications_arise` varchar(255) DEFAULT NULL,
  `surgeon_name` varchar(255) DEFAULT NULL,
  `anaesthetic_name` varchar(255) DEFAULT NULL,
  `terms_conditions_1` tinyint(1) DEFAULT '1',
  `terms_conditions_2` tinyint(1) DEFAULT '1',
  `witness1_name` varchar(255) DEFAULT NULL,
  `witness1_address1` varchar(255) DEFAULT NULL,
  `witness1_address2` varchar(255) NOT NULL,
  `witness1_age` varchar(255) DEFAULT NULL,
  `witness1_year` varchar(255) DEFAULT NULL,
  `witness1_sign` varchar(255) DEFAULT NULL,
  `witness2_name` varchar(255) DEFAULT NULL,
  `witness2_address1` varchar(255) DEFAULT NULL,
  `witness2_address2` varchar(255) DEFAULT NULL,
  `witness2_age` varchar(255) DEFAULT NULL,
  `witness2_year` varchar(255) DEFAULT NULL,
  `witness2_sign` varchar(255) DEFAULT NULL,
  `witness1_date` date DEFAULT NULL,
  `witness2_date` date DEFAULT NULL,
  `relative_sign` varchar(255) DEFAULT NULL,
  `relative_date` date DEFAULT NULL,
  `relative_title` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consent_forms`
--

CREATE TABLE IF NOT EXISTS `consent_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surgery_id` int(11) DEFAULT NULL,
  `doctor_recommendation` text,
  `conditions` text,
  `user_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `patient_relative` varchar(255) DEFAULT NULL,
  `witness` varchar(255) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE IF NOT EXISTS `consultants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_id` int(11) DEFAULT NULL,
  `refferer_doctor_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone1` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `charges_type` varchar(255) DEFAULT NULL,
  `charges` varchar(255) DEFAULT NULL,
  `surgery_charges` varchar(255) DEFAULT NULL,
  `anaesthesia_charges` varchar(255) DEFAULT NULL,
  `other_charges` varchar(255) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT '1',
  `education` varchar(255) DEFAULT NULL,
  `haspecility` tinyint(1) DEFAULT NULL,
  `specility_keyword` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `dateofbirth` datetime DEFAULT NULL,
  `profile_description` text,
  `is_active` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1  ;

-- --------------------------------------------------------

--
-- Table structure for table `consultant_billings`
--

CREATE TABLE IF NOT EXISTS `consultant_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `charges_type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `consultant_service_id` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `service_category_id` int(20) DEFAULT NULL,
  `service_sub_category_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consultant_schedules`
--

CREATE TABLE IF NOT EXISTS `consultant_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultant_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `schedule_date` date NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `purpose` text NOT NULL,
  `visit_type` varchar(30) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corporates`
--

CREATE TABLE IF NOT EXISTS `corporates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `corporate_location_id` int(11) NOT NULL,
  `credit_type_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_lab_rates`
--

CREATE TABLE IF NOT EXISTS `corporate_lab_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `nabh_rate` varchar(10) NOT NULL,
  `non_nabh_rate` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_locations`
--

CREATE TABLE IF NOT EXISTS `corporate_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `credit_type_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_sublocations`
--

CREATE TABLE IF NOT EXISTS `corporate_sublocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `corporate_id` int(11) NOT NULL,
  `corporate_location_id` int(11) NOT NULL,
  `credit_type_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credit_types`
--

CREATE TABLE IF NOT EXISTS `credit_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dama_consent_forms`
--

CREATE TABLE IF NOT EXISTS `dama_consent_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `suffering_from` datetime DEFAULT NULL,
  `condition` text,
  `date` datetime DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `death_certificates`
--

CREATE TABLE IF NOT EXISTS `death_certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `expired_on` datetime DEFAULT NULL,
  `cause_of_death` text,
  `date_of_issue` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `death_summaries`
--

CREATE TABLE IF NOT EXISTS `death_summaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `record_no` varchar(255) DEFAULT NULL,
  `deceased` varchar(255) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `event_course` text,
  `procedure` text,
  `diagnosis` text,
  `death_cause` text,
  `death_on` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `is_sub_department` tinyint(1) DEFAULT '0',
  `parent_department_id` smallint(6) DEFAULT '0',
  `work_hours` varchar(255) NOT NULL,
  `consult_hours` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE IF NOT EXISTS `designations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE IF NOT EXISTS `diagnoses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `complaints` text,
  `history` text,
  `diagnosis` text,
  `ICD_code` text,
  `investigation` text,
  `lab_report` text,
  `advice` text,
  `next_visit` date DEFAULT NULL,
  `general_examine` text,
  `local_examine` text,
  `systemic_examine` text,
  `drugs_allergic_to` text,
  `refer_to` varchar(255) DEFAULT NULL,
  `plan_of_action` varchar(255) DEFAULT NULL,
  `special_instruction` text,
  `LMP` varchar(255) DEFAULT NULL,
  `TEMP` varchar(20) DEFAULT NULL,
  `RR` varchar(20) DEFAULT NULL,
  `PR` varchar(20) DEFAULT NULL,
  `BP` varchar(20) DEFAULT NULL,
  `spo2` varchar(255) DEFAULT NULL,
  `rectal_examine` varchar(255) DEFAULT NULL,
  `rectal_option` tinyint(3) DEFAULT NULL,
  `breast_examine` varchar(255) DEFAULT NULL,
  `breast_option` tinyint(3) DEFAULT NULL,
  `pelvic_examine` varchar(255) DEFAULT NULL,
  `pelvic_option` tinyint(3) DEFAULT NULL,
  `provisional_diagnosis` text,
  `surgery` text,
  `final_diagnosis` text,
  `register_sb` varchar(255) DEFAULT NULL,
  `register_on` datetime DEFAULT NULL,
  `register_note` text,
  `consultant_sb` varchar(255) DEFAULT NULL,
  `consultant_on` datetime DEFAULT NULL,
  `consultant_note` text NOT NULL,
  `plancare_desc` text NOT NULL,
  `is_discharge` tinyint(3) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_drugs`
--

CREATE TABLE IF NOT EXISTS `diagnosis_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `mode` varchar(255) NOT NULL,
  `tabs_per_day` varchar(255) NOT NULL,
  `tabs_frequency` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `first` varchar(20) DEFAULT NULL,
  `second` varchar(20) DEFAULT NULL,
  `third` varchar(20) DEFAULT NULL,
  `forth` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dietary_assessments`
--

CREATE TABLE IF NOT EXISTS `dietary_assessments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `diet_specification` varchar(255) DEFAULT NULL,
  `rt_feed` varchar(255) DEFAULT NULL,
  `soft` varchar(255) DEFAULT NULL,
  `bland` varchar(255) DEFAULT NULL,
  `liquid` varchar(255) DEFAULT NULL,
  `total_calories_required` varchar(255) DEFAULT NULL,
  `proteins` varchar(255) DEFAULT NULL,
  `carbohydrates` varchar(255) DEFAULT NULL,
  `lipids` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dietry_notes`
--

CREATE TABLE IF NOT EXISTS `dietry_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `dietry_assessment_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `progress_note` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dischargeby_consultants`
--

CREATE TABLE IF NOT EXISTS `dischargeby_consultants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `discharge_date` datetime NOT NULL,
  `description` text,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_details`
--

CREATE TABLE IF NOT EXISTS `discharge_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `discharge_starts_on` datetime NOT NULL COMMENT 'this will come from bollings table',
  `discharge_ends_on` datetime NOT NULL COMMENT 'this will come from ward patient when is_released will be changed 1',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_drugs`
--

CREATE TABLE IF NOT EXISTS `discharge_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discharge_summaries_id` int(11) NOT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `route` varchar(10) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `remark` text,
  `first` varchar(20) DEFAULT NULL,
  `second` varchar(20) DEFAULT NULL,
  `third` varchar(20) DEFAULT NULL,
  `forth` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_summaries`
--

CREATE TABLE IF NOT EXISTS `discharge_summaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advice` text NOT NULL,
  `investigation` text,
  `review_on` datetime NOT NULL,
  `resident_doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `final_diagnosis` text,
  `complaints` text,
  `temp` varchar(10) DEFAULT NULL,
  `pr` varchar(10) DEFAULT NULL,
  `rr` varchar(10) DEFAULT NULL,
  `bp` varchar(10) DEFAULT NULL,
  `general_examine` text,
  `present_condition` text,
  `condition_on_discharge` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_surgeries`
--

CREATE TABLE IF NOT EXISTS `discharge_surgeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `discharge_summary_id` int(11) NOT NULL,
  `opt_appointment_id` int(11) DEFAULT NULL,
  `surgery_schedule_date` datetime DEFAULT NULL,
  `surgery_desc` text,
  `surgon_id` int(11) DEFAULT NULL,
  `anaesthesian_id` int(11) DEFAULT NULL,
  `anaesthesia` text,
  `description` text,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8  ;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_templates`
--

CREATE TABLE IF NOT EXISTS `discharge_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `template_name` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discharge_template_texts`
--

CREATE TABLE IF NOT EXISTS `discharge_template_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `template_text` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount_by_credits`
--

CREATE TABLE IF NOT EXISTS `discount_by_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `final_billing_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `discount_by_credit` int(11) NOT NULL,
  `reason_for_credit_voucher` text,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `charges` varchar(255) DEFAULT NULL,
  `surgery_charges` varchar(255) DEFAULT NULL,
  `anaesthesia_charges` varchar(255) DEFAULT NULL,
  `other_charges` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `haspecility` tinyint(1) DEFAULT NULL,
  `specility_keyword` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `profile_description` text,
  `present_event_color` varchar(10) DEFAULT NULL,
  `past_event_color` varchar(10) DEFAULT NULL,
  `future_event_color` varchar(10) DEFAULT NULL,
  `token_alphabet` varchar(10) DEFAULT NULL,
  `is_registrar` tinyint(1) NOT NULL DEFAULT '0',
  `is_surgeon` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_chambers`
--

CREATE TABLE IF NOT EXISTS `doctor_chambers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `chamber_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `purpose` text,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `is_all_day_event` varchar(255) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `is_recurring` int(11) DEFAULT '0',
  `recurring_month` int(11) DEFAULT NULL,
  `recurring_identifier` varchar(255) DEFAULT NULL,
  `weekdays` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedules`
--

CREATE TABLE IF NOT EXISTS `doctor_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_time` varchar(10) NOT NULL,
  `end_schedule_time` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_templates`
--

CREATE TABLE IF NOT EXISTS `doctor_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `template_name` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_template_texts`
--

CREATE TABLE IF NOT EXISTS `doctor_template_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `template_text` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE IF NOT EXISTS `drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_consultant_billings`
--

CREATE TABLE IF NOT EXISTS `estimate_consultant_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `charges_type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `consultant_service_id` varchar(255) DEFAULT NULL,
  `service_category_id` int(20) DEFAULT NULL,
  `service_sub_category_id` int(20) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_laboratory_test_orders`
--

CREATE TABLE IF NOT EXISTS `estimate_laboratory_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_other_services`
--

CREATE TABLE IF NOT EXISTS `estimate_other_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_date` date NOT NULL,
  `service_amount` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_patients`
--

CREATE TABLE IF NOT EXISTS `estimate_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `initial_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `relative_phone` varchar(255) DEFAULT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `plot_no` varchar(100) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `taluka` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pin_code` varchar(20) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `diagnosis` text,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_radiology_test_orders`
--

CREATE TABLE IF NOT EXISTS `estimate_radiology_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radiology_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `test_done` varchar(10) DEFAULT NULL COMMENT '"Yes" if test has been done(May be waiting for reports).',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_service_bills`
--

CREATE TABLE IF NOT EXISTS `estimate_service_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `sub_service_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) NOT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `morning` tinyint(3) DEFAULT '0',
  `evening` tinyint(3) DEFAULT '0',
  `night` tinyint(3) DEFAULT '0',
  `morning_quantity` smallint(6) DEFAULT NULL,
  `evening_quantity` smallint(6) DEFAULT NULL,
  `night_quantity` smallint(6) DEFAULT NULL,
  `date` date NOT NULL,
  `no_of_times` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_by` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ethnicities`
--

CREATE TABLE IF NOT EXISTS `ethnicities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fall_assessments`
--

CREATE TABLE IF NOT EXISTS `fall_assessments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `history` enum('Yes','No') NOT NULL,
  `history_score` varchar(255) NOT NULL,
  `secondary_diagnosis` enum('Yes','No') NOT NULL,
  `secondary_diagnosis_score` varchar(255) NOT NULL,
  `ambulatory_aid` enum('non_bed_rest_nurse_assist','crutches_cane_walker','furniture') NOT NULL,
  `ambulatory_aid_score` varchar(255) NOT NULL,
  `access` enum('Yes','No') NOT NULL,
  `access_score` varchar(255) NOT NULL,
  `gait` enum('Normal_bed_rest_wheelchair','week','impaired') NOT NULL,
  `gait_score` varchar(255) NOT NULL,
  `mental_status` enum('oriented_to_own_ability','overestimates_or_forgets_limitations') NOT NULL,
  `mental_status_score` varchar(255) NOT NULL,
  `total_score` varchar(255) NOT NULL,
  `risk_level` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fall_assessment_summeries`
--

CREATE TABLE IF NOT EXISTS `fall_assessment_summeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` varchar(50) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `score` varchar(255) NOT NULL,
  `risk_level` varchar(255) NOT NULL,
  `interventions` varchar(255) NOT NULL,
  `route_cause_analysis` varchar(255) NOT NULL,
  `preventive_measures` varchar(255) NOT NULL,
  `corrective_measures` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final_billings`
--

CREATE TABLE IF NOT EXISTS `final_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `amount_paid` varchar(255) DEFAULT NULL,
  `amount_pending` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_type` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_percent` varchar(255) DEFAULT NULL,
  `discount_rupees` varchar(255) DEFAULT NULL,
  `reason_for_discount` varchar(255) DEFAULT NULL,
  `primary_consultant` varchar(255) DEFAULT NULL,
  `other_consultant` varchar(255) DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `reason_of_discharge` varchar(100) DEFAULT NULL,
  `credit_period` varchar(255) DEFAULT NULL,
  `bill_number` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `patient_discharge_condition` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_answers`
--

CREATE TABLE IF NOT EXISTS `form_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `patient_form_id` int(11) NOT NULL,
  `form_question_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_questions`
--

CREATE TABLE IF NOT EXISTS `form_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_form_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `sort_nr` smallint(6) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `icds`
--

CREATE TABLE IF NOT EXISTS `icds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icd_code` varchar(100) NOT NULL,
  `description` text,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE IF NOT EXISTS `incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `who_harmed` varchar(255) DEFAULT NULL,
  `inpatient_outpatient` varchar(255) DEFAULT NULL,
  `witness_involved` varchar(255) DEFAULT NULL,
  `report_by_patient` varchar(255) DEFAULT NULL,
  `report_by_family` varchar(255) DEFAULT NULL,
  `report_by_staff` varchar(255) DEFAULT NULL,
  `assetment_after_incident` varchar(255) DEFAULT NULL,
  `review_of_record` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `registration_no` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `location_incident` text,
  `op_visit_date` date DEFAULT NULL,
  `incident_date` date DEFAULT NULL,
  `incident_time` varchar(10) DEFAULT NULL,
  `analysis_option` varchar(100) DEFAULT NULL,
  `incident_description` text,
  `root_cause_ananysis` text,
  `corrective_action` text,
  `preventive_action` text,
  `harm_score` varchar(255) DEFAULT NULL,
  `patient_clinical_service` text,
  `covering_consultant` varchar(255) DEFAULT NULL,
  `notified_date` datetime DEFAULT NULL,
  `notified_time` varchar(10) DEFAULT NULL,
  `notified_patient` varchar(255) DEFAULT NULL,
  `notified_family_contact` varchar(255) DEFAULT NULL,
  `notified_director` varchar(255) DEFAULT NULL,
  `notified_administrator` varchar(255) DEFAULT NULL,
  `notified_security` varchar(255) DEFAULT NULL,
  `notified_other` varchar(255) DEFAULT NULL,
  `reporters_role` text,
  `person_submitting_report` varchar(255) DEFAULT NULL,
  `person_submitting_contact_no` varchar(255) DEFAULT NULL,
  `recommendation` text,
  `medication_error` varchar(100) DEFAULT NULL,
  `medication_error_desc` text,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incident_types`
--

CREATE TABLE IF NOT EXISTS `incident_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `initials`
--

CREATE TABLE IF NOT EXISTS `initials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instock_laundries`
--

CREATE TABLE IF NOT EXISTS `instock_laundries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `last_entry` varchar(255) NOT NULL,
  `total_quantity` varchar(255) NOT NULL,
  `in_stock` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_companies`
--

CREATE TABLE IF NOT EXISTS `insurance_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `insurance_type_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_types`
--

CREATE TABLE IF NOT EXISTS `insurance_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `credit_type_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interpreter_statements`
--

CREATE TABLE IF NOT EXISTS `interpreter_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surgery_id` int(11) DEFAULT NULL,
  `patient_primary_lang` varchar(255) DEFAULT NULL,
  `patient_identify_lang` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_rn_name` varchar(255) DEFAULT NULL,
  `physician_date_time` datetime DEFAULT NULL,
  `physician_name` varchar(255) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `intrinsic_risk_factors`
--

CREATE TABLE IF NOT EXISTS `intrinsic_risk_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `antibiotic` varchar(10) DEFAULT NULL,
  `prophylaxis_therapy` varchar(10) DEFAULT NULL,
  `diabetes` varchar(10) DEFAULT NULL,
  `alcoholism` varchar(10) DEFAULT NULL,
  `smoking` varchar(10) DEFAULT NULL,
  `hypertension` varchar(10) DEFAULT NULL,
  `anaemia` varchar(10) DEFAULT NULL,
  `malignancy` varchar(10) DEFAULT NULL,
  `trauma` varchar(10) DEFAULT NULL,
  `cirrhosis` varchar(10) DEFAULT NULL,
  `steroids` varchar(10) DEFAULT NULL,
  `immunosuppression` varchar(10) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_categories`
--

CREATE TABLE IF NOT EXISTS `inventory_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_laundries`
--

CREATE TABLE IF NOT EXISTS `inventory_laundries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `min_quantity` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_pharmacy_sales_returns`
--

CREATE TABLE IF NOT EXISTS `inventory_pharmacy_sales_returns` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) DEFAULT NULL,
  `patient_id` int(20) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_pharmacy_sales_returns_details`
--

CREATE TABLE IF NOT EXISTS `inventory_pharmacy_sales_returns_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(20) DEFAULT NULL,
  `inventory_pharmacy_sales_return_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_purchase_details`
--

CREATE TABLE IF NOT EXISTS `inventory_purchase_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `vr_no` varchar(255) DEFAULT NULL,
  `vr_date` varchar(200) DEFAULT NULL,
  `party_id` int(20) DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `cst` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax` float DEFAULT '0',
  `payment_mode` enum('cash','credit') NOT NULL DEFAULT 'cash',
  `total_amount` double DEFAULT NULL,
  `credit_amount` double DEFAULT NULL,
  `created_by` int(20) NOT NULL,
  `create_time` varchar(255) NOT NULL,
  `extra_amount` double DEFAULT NULL,
  `extra_amount_type` int(11) DEFAULT '0' COMMENT 'if 0 than fix or if 1 than percentage',
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_purchase_item_details`
--

CREATE TABLE IF NOT EXISTS `inventory_purchase_item_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inventory_purchase_detail_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `free` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_purchase_returns`
--

CREATE TABLE IF NOT EXISTS `inventory_purchase_returns` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inventory_purchase_detail_id` int(20) DEFAULT NULL,
  `party_id` int(20) DEFAULT NULL,
  `total_amount` varchar(200) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_purchase_return_items`
--

CREATE TABLE IF NOT EXISTS `inventory_purchase_return_items` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inventory_purchase_return_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `batch_no` varchar(20) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `item_id` int(20) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_suppliers`
--

CREATE TABLE IF NOT EXISTS `inventory_suppliers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `dl_no` varchar(255) DEFAULT NULL,
  `stax_no` varchar(255) DEFAULT NULL,
  `cst` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `credit_limit` double DEFAULT NULL,
  `credit_day` int(20) DEFAULT NULL,
  `bank` text,
  `pin` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `modify_time` varchar(255) DEFAULT NULL,
  `create_time` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--


CREATE TABLE IF NOT EXISTS `laboratories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text,
  `category_name` varchar(255) NOT NULL,
  `service_group_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `test_group_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_categories`
--

CREATE TABLE IF NOT EXISTS `laboratory_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `is_active` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_parameters`
--

CREATE TABLE IF NOT EXISTS `laboratory_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `laboratory_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'text',
  `by_gender_age` varchar(255) DEFAULT NULL,
  `by_gender_male` varchar(255) DEFAULT NULL,
  `by_gender_female` varchar(255) DEFAULT NULL,
  `by_gender_male_lower_limit` varchar(255) DEFAULT NULL,
  `by_gender_male_upper_limit` varchar(255) DEFAULT NULL,
  `by_gender_female_lower_limit` varchar(255) DEFAULT NULL,
  `by_gender_female_upper_limit` varchar(255) DEFAULT NULL,
  `by_age_less_years` varchar(255) DEFAULT NULL,
  `by_age_num_less_years` varchar(255) DEFAULT NULL,
  `by_age_num_less_years_lower_limit` varchar(255) DEFAULT NULL,
  `by_age_num_less_years_upper_limit` varchar(255) DEFAULT NULL,
  `by_age_more_years` varchar(5) DEFAULT NULL,
  `by_age_num_more_years` varchar(5) DEFAULT NULL,
  `by_age_num_gret_years_lower_limit` varchar(255) DEFAULT NULL,
  `by_age_num_gret_years_upper_limit` varchar(255) DEFAULT NULL,
  `by_age_between_years` varchar(255) DEFAULT NULL,
  `by_age_between_num_less_years` varchar(255) DEFAULT NULL,
  `by_age_between_num_gret_years` varchar(255) DEFAULT NULL,
  `by_age_between_years_lower_limit` varchar(255) DEFAULT NULL,
  `by_age_between_years_upper_limit` varchar(255) DEFAULT NULL,
  `parameter_text` text,
  `unit` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_results`
--

CREATE TABLE IF NOT EXISTS `laboratory_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `laboratory_test_order_id` int(11) DEFAULT NULL,
  `laboratory_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'pathologist who submit the report.',
  `laboratory_categories_id` int(11) NOT NULL,
  `laboratory_parameter_id` int(1) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `text` text,
  `range` varchar(255) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `confirm_result` int(11) NOT NULL DEFAULT '0',
  `result_publish_date` datetime DEFAULT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_test_orders`
--

CREATE TABLE IF NOT EXISTS `laboratory_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `is_external` varchar(10) DEFAULT NULL,
  `service_provider_id` int(11) DEFAULT NULL,
  `from_assessment` tinyint(3) NOT NULL DEFAULT '0' COMMENT '"0" for entries from main interface and "1" from initial assessment form',
  `batch_identifier` varchar(255) NOT NULL,
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_tokens`
--

CREATE TABLE IF NOT EXISTS `laboratory_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `laboratory_test_order_id` int(11) NOT NULL,
  `laboratory_id` int(11) NOT NULL,
  `sp_id` varchar(255) NOT NULL,
  `ac_id` varchar(255) NOT NULL,
  `created_by` int(2) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(2) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_test_payments`
--

CREATE TABLE IF NOT EXISTS `lab_test_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'advance',
  `remark` text,
  `location_id` int(11) NOT NULL,
  `batch_identifier` varchar(50) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laundry_items`
--

CREATE TABLE IF NOT EXISTS `laundry_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laundry_managers`
--

CREATE TABLE IF NOT EXISTS `laundry_managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `in_stock` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone1` varchar(255) NOT NULL,
  `phone2` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `contactperson` varchar(255) NOT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `footer` text NOT NULL,
  `footer_text_discharge` text,
  `accreditation` varchar(50) NOT NULL,
  `checkout_time` varchar(50) NOT NULL,
  `billing_footer_name` varchar(255) DEFAULT NULL,
  `hospital_service_tax_no` varchar(255) DEFAULT NULL,
  `hospital_pan_no` varchar(255) DEFAULT NULL,
  `case_summery_link` varchar(255) DEFAULT NULL COMMENT 'Master value per location which get auto populated in UID form',
  `patient_file` varchar(255) DEFAULT NULL COMMENT 'Master value per location which get auto populated in UID form',
  `currency_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_items`
--

CREATE TABLE IF NOT EXISTS `medical_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot_item_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pharmacy_item_id` int(11) NOT NULL,
  `description` text,
  `in_stock` double DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_rep_antibiotics`
--

CREATE TABLE IF NOT EXISTS `medical_rep_antibiotics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `inj_ampilox` tinyint(1) DEFAULT NULL,
  `inj_taxim` tinyint(1) DEFAULT NULL,
  `inj_supacef` tinyint(1) DEFAULT NULL,
  `inj_augmentine` tinyint(1) DEFAULT NULL,
  `inj_zobactum` tinyint(1) DEFAULT NULL,
  `inj_amikacin` tinyint(1) DEFAULT NULL,
  `inj_monocef` tinyint(1) DEFAULT NULL,
  `inj_keftagard` tinyint(1) DEFAULT NULL,
  `inj_meropenem` tinyint(1) DEFAULT NULL,
  `inj_novapime` tinyint(1) DEFAULT NULL,
  `inj_vancomy` tinyint(1) DEFAULT NULL,
  `inj_pantodec` tinyint(1) DEFAULT NULL,
  `inj_lactagard` tinyint(1) DEFAULT NULL,
  `inj_klox` tinyint(1) DEFAULT NULL,
  `novamox500` tinyint(1) DEFAULT NULL,
  `inj_sulbacin` tinyint(1) DEFAULT NULL,
  `inj_reflin` tinyint(1) DEFAULT NULL,
  `inj_magnamycin` tinyint(1) DEFAULT NULL,
  `inj_dalacin` tinyint(1) DEFAULT NULL,
  `inj_tobraneg` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_rep_injectables`
--

CREATE TABLE IF NOT EXISTS `medical_rep_injectables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `inj_atropine` tinyint(1) DEFAULT NULL,
  `inj_avil` tinyint(1) DEFAULT NULL,
  `inj_rantac` tinyint(1) DEFAULT NULL,
  `inj_butrum` tinyint(1) DEFAULT NULL,
  `inj_cardirone` tinyint(1) DEFAULT NULL,
  `inj_dexona` tinyint(1) DEFAULT NULL,
  `inj_drotin` tinyint(1) DEFAULT NULL,
  `inj_dopamin` tinyint(1) DEFAULT NULL,
  `inj_dilatin` tinyint(1) DEFAULT NULL,
  `inj_effcorline` tinyint(1) DEFAULT NULL,
  `inj_fulsed` tinyint(1) DEFAULT NULL,
  `inj_gentamyclin` tinyint(1) DEFAULT NULL,
  `inj_ketamol` tinyint(1) DEFAULT NULL,
  `inj_mgso4` tinyint(1) DEFAULT NULL,
  `inj_lasix` tinyint(1) DEFAULT NULL,
  `inj_nootropil` tinyint(1) DEFAULT NULL,
  `inj_ntg` tinyint(1) DEFAULT NULL,
  `inj_sylate` tinyint(1) DEFAULT NULL,
  `inj_prostodine` tinyint(1) DEFAULT NULL,
  `inj_phenorberb` tinyint(1) DEFAULT NULL,
  `inj_pavlon` tinyint(1) DEFAULT NULL,
  `inj_sodabicarb` tinyint(1) DEFAULT NULL,
  `inj_voveran` tinyint(1) DEFAULT NULL,
  `inj_vaccuronium` tinyint(1) DEFAULT NULL,
  `inj_wycort` tinyint(1) DEFAULT NULL,
  `inj_thayopetone` tinyint(1) DEFAULT NULL,
  `inj_heparine` tinyint(1) DEFAULT NULL,
  `inj_xylocaine` tinyint(1) DEFAULT NULL,
  `inj_buprigestic` tinyint(1) DEFAULT NULL,
  `inj_pcm` tinyint(1) DEFAULT NULL,
  `inj_betaloc` tinyint(1) DEFAULT NULL,
  `inj_sensorcaine` tinyint(1) DEFAULT NULL,
  `inj_serenace` tinyint(1) DEFAULT NULL,
  `inj_aminophyline` tinyint(1) DEFAULT NULL,
  `inj_ketanov` tinyint(1) DEFAULT NULL,
  `inj_botroclot` tinyint(1) DEFAULT NULL,
  `inj_xylocaine2` tinyint(1) DEFAULT NULL,
  `inj_solumedrol` tinyint(1) DEFAULT NULL,
  `inj_succimed` tinyint(1) DEFAULT NULL,
  `inj_propofol` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_rep_surgical_items`
--

CREATE TABLE IF NOT EXISTS `medical_rep_surgical_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `bt_set` tinyint(1) DEFAULT NULL,
  `turp_set` tinyint(1) DEFAULT NULL,
  `disposal_syringe` tinyint(1) DEFAULT NULL,
  `disposal_needle` tinyint(1) DEFAULT NULL,
  `loprep` tinyint(1) DEFAULT NULL,
  `betadine100` tinyint(1) DEFAULT NULL,
  `savlon` tinyint(1) DEFAULT NULL,
  `ciplox_eye` tinyint(1) DEFAULT NULL,
  `dynaplast` tinyint(1) DEFAULT NULL,
  `micropare` tinyint(1) DEFAULT NULL,
  `chest_leads` tinyint(1) DEFAULT NULL,
  `roll_bandage` tinyint(1) DEFAULT NULL,
  `softroll` tinyint(1) DEFAULT NULL,
  `venoline` tinyint(1) DEFAULT NULL,
  `surgical_blade` tinyint(1) DEFAULT NULL,
  `electoclyss_enema` tinyint(1) DEFAULT NULL,
  `vaccu_suction` tinyint(1) DEFAULT NULL,
  `jet_foam` tinyint(1) DEFAULT NULL,
  `surgical_gloves` tinyint(1) DEFAULT NULL,
  `disposable_sponges` tinyint(1) DEFAULT NULL,
  `romo_vac` tinyint(1) DEFAULT NULL,
  `uro_bag` tinyint(1) DEFAULT NULL,
  `sanctin_cath` tinyint(1) DEFAULT NULL,
  `ryles_tube` tinyint(1) DEFAULT NULL,
  `feeding_tube` tinyint(1) DEFAULT NULL,
  `folys_cath` tinyint(1) DEFAULT NULL,
  `way_folys_cath` tinyint(1) DEFAULT NULL,
  `adk_no` tinyint(1) DEFAULT NULL,
  `plan_sheet` tinyint(1) DEFAULT NULL,
  `et_tubeno` tinyint(1) DEFAULT NULL,
  `epidural_cath` tinyint(1) DEFAULT NULL,
  `surgical_febrilar` tinyint(1) DEFAULT NULL,
  `opsite_drage` tinyint(1) DEFAULT NULL,
  `silverex_jar` tinyint(1) DEFAULT NULL,
  `tbact` tinyint(1) DEFAULT NULL,
  `vasofix` tinyint(1) DEFAULT NULL,
  `spinal_needle` tinyint(1) DEFAULT NULL,
  `sofratulle` tinyint(1) DEFAULT NULL,
  `cotton_bundle` tinyint(1) DEFAULT NULL,
  `xylocaine_jelly` tinyint(1) DEFAULT NULL,
  `strille_water` tinyint(1) DEFAULT NULL,
  `cap_mask` tinyint(1) DEFAULT NULL,
  `carm_cover` tinyint(1) DEFAULT NULL,
  `skin_stappler` tinyint(1) DEFAULT NULL,
  `colostomy_drain` tinyint(1) DEFAULT NULL,
  `gloves_box` tinyint(1) DEFAULT NULL,
  `beta_scrub` tinyint(1) DEFAULT NULL,
  `jonac_suppsitories` tinyint(1) DEFAULT NULL,
  `iv_rl_ml` tinyint(1) DEFAULT NULL,
  `iv_dns_ml` tinyint(1) DEFAULT NULL,
  `iv_dextrose_fivecent` tinyint(1) DEFAULT NULL,
  `iv_dextrose_tencent` tinyint(1) DEFAULT NULL,
  `iv_isolytee` tinyint(1) DEFAULT NULL,
  `iv_isolytep` tinyint(1) DEFAULT NULL,
  `iv_isolytem` tinyint(1) DEFAULT NULL,
  `iv_metrogyl` tinyint(1) DEFAULT NULL,
  `iv_dextrose25` tinyint(1) DEFAULT NULL,
  `iv_ns1000` tinyint(1) DEFAULT NULL,
  `iv_ns500` tinyint(1) DEFAULT NULL,
  `iv_cifran` tinyint(1) DEFAULT NULL,
  `iv_hestar` tinyint(1) DEFAULT NULL,
  `otrovin` tinyint(1) DEFAULT NULL,
  `betadine` tinyint(1) DEFAULT NULL,
  `soframycin` tinyint(1) DEFAULT NULL,
  `tab_depin` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_rep_sutures`
--

CREATE TABLE IF NOT EXISTS `medical_rep_sutures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `vicryl_cutting` tinyint(1) DEFAULT NULL,
  `monocryl` tinyint(1) DEFAULT NULL,
  `ethilon_cutting` tinyint(1) DEFAULT NULL,
  `marsilk_cutting` tinyint(1) DEFAULT NULL,
  `cut_gat` tinyint(1) DEFAULT NULL,
  `proline_cutting` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_requisitions`
--

CREATE TABLE IF NOT EXISTS `medical_requisitions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `requisition_for` varchar(11) DEFAULT NULL,
  `requister_id` int(20) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `status` enum('Pending','Approved') NOT NULL DEFAULT 'Pending',
  `created_by` int(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(20) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_requisition_details`
--

CREATE TABLE IF NOT EXISTS `medical_requisition_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `medical_requisition_id` int(20) DEFAULT NULL,
  `medical_item_id` int(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `request_quantity` bigint(20) DEFAULT NULL,
  `recieved_quantity` bigint(20) DEFAULT NULL,
  `recieved_date` date DEFAULT NULL,
  `used_quantity` bigint(20) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `micro_organisms`
--

CREATE TABLE IF NOT EXISTS `micro_organisms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `mrsa` varchar(10) NOT NULL,
  `vre` varchar(10) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nosocomial_infections`
--

CREATE TABLE IF NOT EXISTS `nosocomial_infections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `surgical_site_infection` varchar(10) DEFAULT NULL,
  `urinary_tract_infection` varchar(10) DEFAULT NULL,
  `ventilator_associated_pneumonia` varchar(10) DEFAULT NULL,
  `clabsi` varchar(10) DEFAULT NULL,
  `thrombophlebitis` varchar(10) DEFAULT NULL,
  `other_nosocomial_infection` varchar(10) DEFAULT NULL,
  `mrsa` varchar(10) DEFAULT NULL,
  `vre` varchar(10) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `note_type` varchar(20) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `surgery` text COMMENT 'surgery description',
  `surgery_note_type` varchar(255) DEFAULT NULL,
  `anaesthesia_note_type` varchar(255) DEFAULT NULL,
  `anaesthesia_note` text,
  `implants` text,
  `event_note` text COMMENT 'event note(option under pre-operative note)',
  `post_opt` text COMMENT 'option under pre-operative note type',
  `pre_opt` text,
  `investigation` text,
  `present_condition` text,
  `sb_registrar` int(11) DEFAULT NULL COMMENT 'seen by registrar(doctors id)',
  `sb_consultant` int(11) DEFAULT NULL COMMENT 'seen by consultatnt(consultant id)',
  `note_date` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `note_templates`
--

CREATE TABLE IF NOT EXISTS `note_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `template_name` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `note_template_texts`
--

CREATE TABLE IF NOT EXISTS `note_template_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `template_text` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nursings`
--

CREATE TABLE IF NOT EXISTS `nursings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `observation_charts`
--

CREATE TABLE IF NOT EXISTS `observation_charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `time` varchar(50) NOT NULL,
  `pulse` varchar(50) NOT NULL,
  `rr` varchar(50) NOT NULL,
  `bp` varchar(50) NOT NULL,
  `temp` varchar(50) NOT NULL,
  `osat` varchar(50) NOT NULL,
  `rbs` varchar(50) NOT NULL,
  `ivf` varchar(50) NOT NULL,
  `rtf` varchar(50) NOT NULL,
  `other` varchar(50) NOT NULL,
  `total_intake` varchar(50) NOT NULL,
  `hourly` varchar(50) NOT NULL,
  `total_output` varchar(50) NOT NULL,
  `bowel` varchar(50) NOT NULL,
  `progress_remark` text NOT NULL,
  `date` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `modifiy_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opts`
--

CREATE TABLE IF NOT EXISTS `opts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opt_appointments`
--

CREATE TABLE IF NOT EXISTS `opt_appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `opt_id` int(11) DEFAULT NULL,
  `opt_table_id` int(11) DEFAULT NULL,
  `schedule_date` date NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `surgery_category_id` int(11) DEFAULT NULL,
  `surgery_subcategory_id` int(11) DEFAULT NULL,
  `service_group` varchar(255) DEFAULT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `anaesthesia_service_group_id` int(11) DEFAULT NULL,
  `anaesthesia_tariff_list_id` int(11) DEFAULT NULL,
  `operation_type` varchar(10) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT 'storing doctor user id  with anaesthesia department',
  `anaesthesia` varchar(255) DEFAULT NULL,
  `ot_in_time` varchar(10) DEFAULT NULL,
  `incision_time` varchar(10) DEFAULT NULL,
  `skin_closure` varchar(10) DEFAULT NULL,
  `out_time` varchar(10) DEFAULT NULL,
  `ot_in_date` datetime DEFAULT NULL,
  `incision_date` datetime DEFAULT NULL,
  `skin_closure_date` datetime DEFAULT NULL,
  `out_date` datetime DEFAULT NULL,
  `description` text,
  `discharge_desc` text,
  `procedure_complete` tinyint(1) DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `is_all_day_event` int(6) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `recurring_rule` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `opt_tables`
--

CREATE TABLE IF NOT EXISTS `opt_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `opt_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_services`
--

CREATE TABLE IF NOT EXISTS `other_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_date` date NOT NULL,
  `service_amount` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_items`
--

CREATE TABLE IF NOT EXISTS `ot_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot_item_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pharmacy_item_id` int(11) NOT NULL,
  `description` text,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_item_allocations`
--

CREATE TABLE IF NOT EXISTS `ot_item_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `opt_id` int(11) NOT NULL,
  `opt_table_id` int(11) DEFAULT NULL,
  `allocation_status` varchar(5) NOT NULL DEFAULT 'P' COMMENT 'P-Pending, R-Rejected, A-Accepted',
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_item_allocation_details`
--

CREATE TABLE IF NOT EXISTS `ot_item_allocation_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot_item_allocation_id` int(11) NOT NULL,
  `ot_item_id` int(11) NOT NULL,
  `request_ot_item` int(11) NOT NULL,
  `remark` text,
  `allocate_ot_item` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_item_categories`
--

CREATE TABLE IF NOT EXISTS `ot_item_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_item_quantities`
--

CREATE TABLE IF NOT EXISTS `ot_item_quantities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot_item_category_id` int(11) NOT NULL,
  `ot_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_replaces`
--

CREATE TABLE IF NOT EXISTS `ot_replaces` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `opt_id` int(11) DEFAULT NULL,
  `opt_table_id` int(11) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `status` varchar(5) DEFAULT 'P' COMMENT 'P-Pending, A-Accepted, R-Rejected',
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(20) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ot_replace_details`
--

CREATE TABLE IF NOT EXISTS `ot_replace_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ot_replace_id` int(20) DEFAULT NULL,
  `ot_item_category_id` int(11) DEFAULT NULL,
  `item_id` int(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `request_quantity` bigint(20) DEFAULT NULL,
  `recieved_quantity` bigint(20) DEFAULT NULL,
  `recieved_date` date DEFAULT NULL,
  `used_quantity` bigint(20) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_quantity` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package_permissions`
--

CREATE TABLE IF NOT EXISTS `package_permissions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(200) DEFAULT NULL,
  `module_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key for table',
  `patient_id` varchar(50) DEFAULT NULL COMMENT 'It is an autogenerated ID for patient',
  `person_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL COMMENT 'foreign key of location table',
  `initial_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `photo` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `blood_group` varchar(5) NOT NULL,
  `aadhar_id` varchar(50) NOT NULL,
  `insurance_company_id` int(11) DEFAULT NULL,
  `collaborate_company_id` int(11) DEFAULT NULL,
  `referring_provider_id` int(11) DEFAULT NULL,
  `communication_method` char(10) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `landline_phone` varchar(20) DEFAULT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `office_phone` varchar(10) DEFAULT NULL,
  `office_extn` varchar(20) DEFAULT NULL,
  `emergency_contact` varchar(20) DEFAULT NULL,
  `address1` tinytext NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country_id` int(11) NOT NULL COMMENT 'foreign key of countries table',
  `ethnicity_id` int(11) DEFAULT NULL COMMENT 'foreign key of ethnicity table',
  `language_id` int(11) DEFAULT NULL COMMENT 'foreign key of language table',
  `last_appointment` datetime DEFAULT NULL,
  `next_appointment` datetime DEFAULT NULL,
  `appointment_url` varchar(255) DEFAULT NULL,
  `account_balance` int(11) DEFAULT NULL,
  `admission_type` varchar(10) NOT NULL,
  `is_emergency` tinyint(3) NOT NULL,
  `treatment_type` varchar(100) NOT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `room_id` smallint(6) DEFAULT NULL,
  `bed_id` smallint(6) DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL COMMENT 'foreign key of notes table',
  `lookup_name` varchar(255) NOT NULL,
  `previous_receivable` varchar(255) DEFAULT NULL,
  `age` int(6) NOT NULL,
  `family_physician` varchar(100) DEFAULT NULL,
  `family_phy_con_no` varchar(20) DEFAULT NULL,
  `credit_type_id` int(11) DEFAULT '0',
  `payment_category` varchar(10) DEFAULT NULL,
  `insurance_type_id` int(11) DEFAULT NULL,
  `corporate_location_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `corporate_sublocation_id` int(11) DEFAULT NULL,
  `corporate_otherdetails` text,
  `nursing_charge` varchar(5) DEFAULT NULL,
  `consultant_treatment` varchar(255) DEFAULT NULL,
  `total_amt_per_day` varchar(20) DEFAULT NULL,
  `total_upto` varchar(20) DEFAULT NULL,
  `case_summery_link` varchar(255) DEFAULT NULL,
  `patient_file` varchar(255) DEFAULT NULL,
  `consent_form` varchar(255) DEFAULT NULL,
  `examination` text,
  `allergies` text,
  `nationality` varchar(50) DEFAULT NULL,
  `presenting_complaints` text,
  `treatment` text,
  `drug_lookup` varchar(255) DEFAULT NULL,
  `OT` varchar(255) DEFAULT NULL,
  `review_on` datetime DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `doc_ini_assess_on` datetime DEFAULT NULL,
  `doc_ini_assess_end_on` datetime DEFAULT NULL,
  `nurse_assess_end_on` datetime DEFAULT NULL,
  `nutritional_assess_end_on` datetime DEFAULT NULL,
  `doc_ini_assessment` tinyint(1) NOT NULL DEFAULT '0',
  `form_received_on` datetime DEFAULT NULL,
  `form_completed_on` datetime DEFAULT NULL,
  `nurse_assess_on` datetime DEFAULT NULL,
  `nurse_assessment` tinyint(1) NOT NULL DEFAULT '0',
  `nutritional_assess_on` datetime DEFAULT NULL,
  `nutritional_assessment` tinyint(1) NOT NULL DEFAULT '0',
  `discharge_intimation` tinyint(1) NOT NULL DEFAULT '0',
  `discharge_intimation_on` datetime DEFAULT NULL,
  `treatment_advised` text,
  `final_intimation` tinyint(1) NOT NULL DEFAULT '0',
  `final_intimation_on` datetime DEFAULT NULL,
  `discharge_desc` varchar(100) DEFAULT NULL,
  `inv_activity_desc` text,
  `invoice_settled` tinyint(1) NOT NULL DEFAULT '0',
  `advance_paid` varchar(50) DEFAULT NULL,
  `room_alloted` varchar(20) NOT NULL,
  `patient_category` varchar(20) NOT NULL,
  `known_fam_physician` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `registrar_id` int(11) DEFAULT NULL,
  `family_doctor_id` int(11) DEFAULT NULL COMMENT 'doctor id for known family physician',
  `bed_charges` varchar(20) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `doctors_charge` varchar(10) DEFAULT NULL,
  `sponsers_auth` varchar(255) DEFAULT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `relative_sign` varchar(100) DEFAULT NULL,
  `final_disacharge_on` datetime DEFAULT NULL,
  `patient_owner` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_discharge` tinyint(1) DEFAULT NULL,
  `dateofadmission` date DEFAULT NULL,
  `tariff_standard_id` int(11) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `fee_status` varchar(10) DEFAULT NULL,
  `fee_paid_on` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` text,
  `date_of_referral` date DEFAULT NULL,
  `executive_emp_id_no` varchar(255) DEFAULT NULL,
  `relation_to_employee` varchar(50) DEFAULT NULL,
  `non_executive_emp_id_no` varchar(255) DEFAULT NULL,
  `emp_id_suffix` varchar(50) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `name_of_ip` varchar(255) DEFAULT NULL,
  `insurance_number` varchar(255) DEFAULT NULL,
  `sponsor_company` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admission_id` (`admission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_allergies`
--

CREATE TABLE IF NOT EXISTS `patient_allergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_id` int(11) NOT NULL,
  `from1` varchar(255) NOT NULL,
  `reaction1` varchar(255) DEFAULT NULL,
  `from2` varchar(255) DEFAULT NULL,
  `reaction2` varchar(255) DEFAULT NULL,
  `from3` varchar(255) DEFAULT NULL,
  `reaction3` varchar(255) DEFAULT NULL,
  `allergies` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_blood_sugar_monitoring`
--

CREATE TABLE IF NOT EXISTS `patient_blood_sugar_monitoring` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `blood_sugar` varchar(200) DEFAULT NULL,
  `treatment` text,
  `created_by` int(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_blood_transfusion_form`
--

CREATE TABLE IF NOT EXISTS `patient_blood_transfusion_form` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tranfusion_note` text,
  `is_consent_taken` tinyint(1) DEFAULT '0',
  `systemic_examination` text,
  `transfusion_date` datetime DEFAULT NULL,
  `bag_no` text,
  `blood_group_patient` varchar(10) DEFAULT NULL,
  `blood_group_donor` varchar(10) DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `clot_or_turbidity` varchar(200) DEFAULT NULL,
  `is_unusual_discoloration` tinyint(1) DEFAULT '0',
  `unusual_discoloration` varchar(200) DEFAULT NULL,
  `is_premedication_given` tinyint(1) DEFAULT '0',
  `premedication_given` varchar(200) DEFAULT NULL,
  `to_transfuse` varchar(200) DEFAULT NULL,
  `time_termination_of_tranfusion` varchar(100) DEFAULT NULL,
  `other_detail` text,
  `adverse_events` text,
  `action_taken` text,
  `patient_id` int(20) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_centric_departments`
--

CREATE TABLE IF NOT EXISTS `patient_centric_departments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `linked_with` varchar(200) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(20) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_data_forms`
--

CREATE TABLE IF NOT EXISTS `patient_data_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_form_id` int(11) NOT NULL,
  `form_question_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_documents`
--

CREATE TABLE IF NOT EXISTS `patient_documents` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `filename` text,
  `file` longblob,
  `link` text,
  `type` varchar(200) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `document_description` text,
  `patient_id` int(20) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_exposures`
--

CREATE TABLE IF NOT EXISTS `patient_exposures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `surgical_procedure` varchar(10) DEFAULT NULL,
  `urinary_catheter` varchar(10) DEFAULT NULL,
  `mechanical_ventilation` varchar(10) DEFAULT NULL,
  `central_line` varchar(10) DEFAULT NULL,
  `peripheral_line` varchar(10) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_family_histories`
--

CREATE TABLE IF NOT EXISTS `patient_family_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_id` int(11) NOT NULL,
  `hypertension` tinyint(2) NOT NULL DEFAULT '0',
  `diabeties` tinyint(2) NOT NULL DEFAULT '0',
  `tuberculosis` tinyint(2) NOT NULL DEFAULT '0',
  `IHD` tinyint(2) NOT NULL DEFAULT '0',
  `epilepsy` tinyint(2) NOT NULL DEFAULT '0',
  `asthma` tinyint(3) NOT NULL DEFAULT '0',
  `stroke` tinyint(3) NOT NULL DEFAULT '0',
  `arthritis` tinyint(3) NOT NULL DEFAULT '0',
  `cancer` tinyint(3) NOT NULL DEFAULT '0',
  `chronic` tinyint(3) NOT NULL DEFAULT '0',
  `chronic_since` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_forms`
--

CREATE TABLE IF NOT EXISTS `patient_forms` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` smallint(6) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_ivfs`
--

CREATE TABLE IF NOT EXISTS `patient_ivfs` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `intake_detail` text,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_past_histories`
--

CREATE TABLE IF NOT EXISTS `patient_past_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_id` int(11) NOT NULL,
  `hypertension` tinyint(2) NOT NULL DEFAULT '0',
  `diabeties` tinyint(2) NOT NULL DEFAULT '0',
  `tuberculosis` tinyint(2) NOT NULL DEFAULT '0',
  `IHD` tinyint(2) NOT NULL DEFAULT '0',
  `hypertension_since` varchar(255) DEFAULT NULL,
  `diabeties_since` varchar(255) DEFAULT NULL,
  `tuberculosis_since` varchar(255) DEFAULT NULL,
  `IHD_since` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_personal_histories`
--

CREATE TABLE IF NOT EXISTS `patient_personal_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_id` int(11) NOT NULL,
  `smoking` tinyint(2) NOT NULL DEFAULT '0',
  `smoking_desc` text,
  `alcohol` tinyint(2) NOT NULL DEFAULT '0',
  `alcohol_desc` text,
  `drugs` tinyint(2) NOT NULL DEFAULT '0',
  `drugs_desc` text,
  `tobacco` tinyint(2) NOT NULL DEFAULT '0',
  `tobacco_desc` text,
  `smoking_fre` varchar(255) DEFAULT NULL,
  `alcohol_fre` varchar(255) DEFAULT NULL,
  `drugs_fre` varchar(255) DEFAULT NULL,
  `tobacco_fre` varchar(255) DEFAULT NULL,
  `diet` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_referrals`
--

CREATE TABLE IF NOT EXISTS `patient_referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `doctor_detail` text,
  `date_of_issue` datetime DEFAULT NULL,
  `complaints` text,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient_surveys`
--

CREATE TABLE IF NOT EXISTS `patient_surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `survey_category` varchar(50) DEFAULT NULL,
  `patient_type` varchar(5) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_ventilator_consents`
--

CREATE TABLE IF NOT EXISTS `patient_ventilator_consents` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `disease` text,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` float NOT NULL,
  `sex` varchar(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `patient_uid` varchar(20) NOT NULL,
  `uiddate` datetime NOT NULL,
  `passport_no` varchar(50) DEFAULT NULL,
  `identification_card_no` varchar(100) DEFAULT NULL,
  `plot_no` varchar(100) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `taluka` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pin_code` varchar(20) DEFAULT NULL,
  `insurance_company_id` int(11) DEFAULT NULL,
  `credit_type_id` int(11) DEFAULT NULL,
  `payment_category` varchar(10) DEFAULT NULL,
  `insurance_type_id` int(11) DEFAULT NULL,
  `corporate_location_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `corporate_sublocation_id` int(11) DEFAULT NULL,
  `corporate_otherdetails` text NOT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `patient_owner` varchar(255) DEFAULT NULL,
  `asst_phone` varchar(20) DEFAULT NULL,
  `description` text,
  `skype_id` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `secondary_email` varchar(150) NOT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `nationality` varchar(255) NOT NULL,
  `executive_emp_id_no` varchar(255) DEFAULT NULL,
  `relation_to_employee` varchar(255) DEFAULT NULL,
  `non_executive_emp_id_no` varchar(255) DEFAULT NULL,
  `sponsor_company` varchar(255) DEFAULT NULL,
  `mine_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `allergies` varchar(255) NOT NULL,
  `name_of_ip` varchar(255) DEFAULT NULL,
  `insurance_number` varchar(255) DEFAULT NULL,
  `known_fam_physician` varchar(100) DEFAULT NULL,
  `family_phy_con_no` varchar(20) DEFAULT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `relative_phone` varchar(255) DEFAULT NULL,
  `instruction` varchar(255) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `registrar_id` int(11) DEFAULT NULL,
  `patient_file` varchar(255) DEFAULT NULL,
  `case_summery_link` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` tinyint(11) DEFAULT NULL,
  `modified_by` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_items`
--

CREATE TABLE IF NOT EXISTS `pharmacy_items` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `pack` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `supplier_id` int(20) DEFAULT NULL,
  `generic` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `minimum` int(20) DEFAULT NULL,
  `maximum` int(20) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `shelf` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `stock` double DEFAULT '0',
  `create_time` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_item_rates`
--

CREATE TABLE IF NOT EXISTS `pharmacy_item_rates` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) NOT NULL,
  `mrp` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `purchase_price` float DEFAULT '0',
  `cst` float DEFAULT NULL,
  `cost_price` float DEFAULT '0',
  `sale_price` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_sales_bills`
--

CREATE TABLE IF NOT EXISTS `pharmacy_sales_bills` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `doctor_id` int(20) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment_mode` enum('cash','credit') NOT NULL DEFAULT 'credit',
  `bill_code` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_sales_bill_details`
--

CREATE TABLE IF NOT EXISTS `pharmacy_sales_bill_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `pharmacy_sales_bill_id` int(20) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `batch_number` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physiotherapy_assessments`
--

CREATE TABLE IF NOT EXISTS `physiotherapy_assessments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `physiotherapist_incharge` varchar(255) NOT NULL,
  `submit_date` datetime NOT NULL,
  `chief_complaints` text NOT NULL,
  `observation` text NOT NULL,
  `sensory` varchar(255) NOT NULL,
  `reflexes` varchar(255) NOT NULL,
  `motor` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `chest_pt` varchar(255) NOT NULL,
  `limb_pt` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `police_forms`
--

CREATE TABLE IF NOT EXISTS `police_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `inform_no` varchar(255) DEFAULT NULL,
  `inform_date` date DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL COMMENT 'M-Male, F-Female',
  `address` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `brought_person_name` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `brought_person_address` varchar(255) DEFAULT NULL,
  `brought_person_taluka` varchar(255) DEFAULT NULL,
  `brought_person_district` varchar(255) DEFAULT NULL,
  `admit_date` date DEFAULT NULL,
  `admit_time` time DEFAULT NULL,
  `patient_details` text,
  `accident_date` date DEFAULT NULL,
  `accident_time` time DEFAULT NULL,
  `accident_place` varchar(255) DEFAULT NULL,
  `accident_address` varchar(255) DEFAULT NULL,
  `accident_taluka` varchar(255) DEFAULT NULL,
  `accident_district` varchar(255) DEFAULT NULL,
  `police_station` varchar(255) DEFAULT NULL,
  `other_details` text,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_operative_checklists`
--

CREATE TABLE IF NOT EXISTS `post_operative_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `location_id` tinyint(11) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `sp_signed` tinyint(1) DEFAULT NULL,
  `hp_done` tinyint(1) DEFAULT NULL,
  `consultation` tinyint(1) DEFAULT NULL,
  `bw_done` tinyint(1) DEFAULT NULL,
  `ua_done` tinyint(1) DEFAULT NULL,
  `op_prepare` tinyint(1) DEFAULT NULL,
  `enema_given` tinyint(1) DEFAULT NULL,
  `npo_notice_time` varchar(255) DEFAULT NULL,
  `tc_done` tinyint(1) DEFAULT NULL,
  `npo_midnight` varchar(255) DEFAULT NULL,
  `identification_band` varchar(255) DEFAULT NULL,
  `name_plate` varchar(255) DEFAULT NULL,
  `glassess_removed` tinyint(1) DEFAULT NULL,
  `dentures_removed` tinyint(1) DEFAULT NULL,
  `jewellery_removed` tinyint(1) DEFAULT NULL,
  `hairpins_removed` tinyint(1) DEFAULT NULL,
  `headcap_hp_gown_on` tinyint(1) DEFAULT NULL,
  `voided_surgery` tinyint(1) DEFAULT NULL,
  `cathertrised_time` varchar(10) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  `pulse` varchar(255) DEFAULT NULL,
  `resp` varchar(255) DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `pre_given` varchar(10) DEFAULT NULL,
  `pre_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_operative_checklists`
--

CREATE TABLE IF NOT EXISTS `pre_operative_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `patient_uid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `location_id` tinyint(11) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `sp_signed` tinyint(1) DEFAULT NULL,
  `hp_done` tinyint(1) DEFAULT NULL,
  `consultation` tinyint(1) DEFAULT NULL,
  `bw_done` tinyint(1) DEFAULT NULL,
  `ua_done` tinyint(1) DEFAULT NULL,
  `op_prepare` tinyint(1) DEFAULT NULL,
  `enema_given` tinyint(1) DEFAULT NULL,
  `npo_notice_time` varchar(255) DEFAULT NULL,
  `tc_done` tinyint(1) DEFAULT NULL,
  `npo_midnight` varchar(255) DEFAULT NULL,
  `identification_band` varchar(255) DEFAULT NULL,
  `name_plate` varchar(255) DEFAULT NULL,
  `glassess_removed` tinyint(1) DEFAULT NULL,
  `dentures_removed` tinyint(1) DEFAULT NULL,
  `jewellery_removed` tinyint(1) DEFAULT NULL,
  `hairpins_removed` tinyint(1) DEFAULT NULL,
  `headcap_hp_gown_on` tinyint(1) DEFAULT NULL,
  `voided_surgery` tinyint(1) DEFAULT NULL,
  `cathertrised_time` varchar(10) DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  `pulse` varchar(255) DEFAULT NULL,
  `resp` varchar(255) DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `pre_given` varchar(10) DEFAULT NULL,
  `pre_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quality_monitoring_formats`
--

CREATE TABLE IF NOT EXISTS `quality_monitoring_formats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_uid` varchar(50) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `skin_observed_date` datetime DEFAULT NULL,
  `skin_site` varchar(255) DEFAULT NULL,
  `skin_action` varchar(255) DEFAULT NULL,
  `skin_remark` varchar(255) DEFAULT NULL,
  `thrombophlebits_observed_date` datetime DEFAULT NULL,
  `thrombophlebits_site` varchar(255) DEFAULT NULL,
  `thrombophlebits_action` varchar(255) DEFAULT NULL,
  `thrombophlebits_remark` varchar(255) DEFAULT NULL,
  `blockage_observed_date` datetime DEFAULT NULL,
  `blockage_site` varchar(255) DEFAULT NULL,
  `blockage_action` varchar(255) DEFAULT NULL,
  `blockage_remark` varchar(255) DEFAULT NULL,
  `accidential_line_observed_date` datetime DEFAULT NULL,
  `accidential_line_site` varchar(255) DEFAULT NULL,
  `accidential_line_action` varchar(255) DEFAULT NULL,
  `accidential_line_remark` varchar(255) DEFAULT NULL,
  `patient_fall_observed_date` datetime DEFAULT NULL,
  `patient_fall_site` varchar(255) DEFAULT NULL,
  `patient_fall_action` varchar(255) DEFAULT NULL,
  `patient_fall_remark` varchar(255) DEFAULT NULL,
  `rt_ngt_doi_specification` varchar(255) DEFAULT NULL,
  `rt_ngt_site` varchar(255) DEFAULT NULL,
  `rt_ngt_dor` varchar(255) DEFAULT NULL,
  `rt_ngt_remark` varchar(255) DEFAULT NULL,
  `other_doi_specification` varchar(255) DEFAULT NULL,
  `other_site` varchar(255) DEFAULT NULL,
  `other_dor` varchar(255) DEFAULT NULL,
  `other_remark` varchar(255) DEFAULT NULL,
  `date_insertion` datetime NOT NULL,
  `date_removel` datetime NOT NULL,
  `date` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `modifiy_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologies`
--

CREATE TABLE IF NOT EXISTS `radiologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `service_group_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `test_group_id` int(11) DEFAULT NULL,
  `is_active` tinyint(3) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_doctor_notes`
--

CREATE TABLE IF NOT EXISTS `radiology_doctor_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radiology_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_reports`
--

CREATE TABLE IF NOT EXISTS `radiology_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `radiology_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `radiology_result_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_results`
--

CREATE TABLE IF NOT EXISTS `radiology_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `radiology_test_order_id` int(11) NOT NULL,
  `radiology_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` text NOT NULL,
  `split` varchar(255) NOT NULL,
  `confirm_result` int(3) DEFAULT '0',
  `result_publish_date` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `radiology_templates`
--

CREATE TABLE IF NOT EXISTS `radiology_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radiology_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_template_texts`
--

CREATE TABLE IF NOT EXISTS `radiology_template_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `template_text` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_test_orders`
--

CREATE TABLE IF NOT EXISTS `radiology_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radiology_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `test_done` varchar(10) DEFAULT NULL COMMENT '"Yes" if test has been done(May be waiting for reports).',
  `is_external` int(3) DEFAULT NULL,
  `service_provider_id` int(11) DEFAULT NULL,
  `from_assessment` tinyint(3) NOT NULL DEFAULT '0',
  `batch_identifier` varchar(255) NOT NULL,
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_test_payments`
--

CREATE TABLE IF NOT EXISTS `radiology_test_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'advance',
  `remark` text,
  `location_id` int(11) NOT NULL,
  `batch_identifier` varchar(50) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referring_providers`
--

CREATE TABLE IF NOT EXISTS `referring_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_provider_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refferer_doctors`
--

CREATE TABLE IF NOT EXISTS `refferer_doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_referral` char(1) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `hasspecility` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_location_fk_constraint` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `ward_id` smallint(6) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bed_prefix` varchar(255) DEFAULT NULL,
  `no_of_beds` smallint(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `credit_type_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `insurance_company_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `cost` int(3) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services_wards`
--

CREATE TABLE IF NOT EXISTS `services_wards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `sub_service` varchar(255) DEFAULT NULL,
  `sub_service_cost` varchar(255) DEFAULT NULL,
  `corporate_type` varchar(255) DEFAULT '0',
  `corporate_name` varchar(255) DEFAULT '0',
  `corporate_sub_service` varchar(255) DEFAULT NULL,
  `corporate_sub_service_cost` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_bills`
--

CREATE TABLE IF NOT EXISTS `service_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `sub_service_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `morning` tinyint(3) DEFAULT '0',
  `evening` tinyint(3) DEFAULT '0',
  `night` tinyint(3) DEFAULT '0',
  `morning_quantity` smallint(6) DEFAULT NULL,
  `evening_quantity` smallint(6) DEFAULT NULL,
  `night_quantity` smallint(6) DEFAULT NULL,
  `date` date NOT NULL,
  `no_of_times` varchar(255) DEFAULT NULL,
  `tariff_list_id` int(11) NOT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_by` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE IF NOT EXISTS `service_categories` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` varchar(200) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE IF NOT EXISTS `service_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `location` text COMMENT 'Location of added lab/blood bank.',
  `status` int(3) NOT NULL DEFAULT '0',
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_sub_categories`
--

CREATE TABLE IF NOT EXISTS `service_sub_categories` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `service_category_id` int(20) DEFAULT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(20) DEFAULT NULL,
  `create_time` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_billings`
--

CREATE TABLE IF NOT EXISTS `settlement_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `moa_sr_no` varchar(255) DEFAULT NULL,
  `nabh_non_nabh` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settlement_billing_options`
--

CREATE TABLE IF NOT EXISTS `settlement_billing_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `settlement_billing_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit` smallint(6) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `moa_sr_no` varchar(255) DEFAULT NULL,
  `nabh_non_nabh` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sign_symptoms`
--

CREATE TABLE IF NOT EXISTS `sign_symptoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `fever` varchar(10) DEFAULT NULL,
  `chills` varchar(10) DEFAULT NULL,
  `local_pain` varchar(10) DEFAULT NULL,
  `swelling` varchar(10) DEFAULT NULL,
  `redness` varchar(10) DEFAULT NULL,
  `pus_discharge` varchar(10) DEFAULT NULL,
  `urinary_frequency` varchar(10) DEFAULT NULL,
  `respiratory_secretion` varchar(10) DEFAULT NULL,
  `dysuria` varchar(10) DEFAULT NULL,
  `suprapubic_tenderness` varchar(10) DEFAULT NULL,
  `oliguria` varchar(10) DEFAULT NULL,
  `pyuria` varchar(10) DEFAULT NULL,
  `cough` varchar(10) DEFAULT NULL,
  `blood_clot` varchar(10) DEFAULT NULL,
  `other` varchar(10) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_plans`
--

CREATE TABLE IF NOT EXISTS `staff_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `schedule_date` date NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `purpose` text NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `is_all_day_event` int(6) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `recurring_rule` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_surveys`
--

CREATE TABLE IF NOT EXISTS `staff_surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `answer` char(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_requisition_details`
--

CREATE TABLE IF NOT EXISTS `store_requisition_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `location_id` int(20) DEFAULT NULL,
  `requisition_for` varchar(20) DEFAULT NULL,
  `requister_id` int(20) DEFAULT NULL,
  `slip_detail` text,
  `requisition_by` varchar(200) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `issue_by` varchar(200) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `entered_by` varchar(200) DEFAULT NULL,
  `entered_date` datetime DEFAULT NULL,
  `reviewed_by` varchar(200) DEFAULT NULL,
  `management_representative` varchar(200) DEFAULT NULL,
  `approved_by` varchar(200) DEFAULT NULL,
  `proprietor` varchar(200) DEFAULT NULL,
  `status` enum('Requesting','Approved','Issued') NOT NULL DEFAULT 'Requesting',
  `created_by` int(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_services`
--

CREATE TABLE IF NOT EXISTS `sub_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggested_drugs`
--

CREATE TABLE IF NOT EXISTS `suggested_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `route` varchar(10) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `first` varchar(20) DEFAULT NULL,
  `second` varchar(20) DEFAULT NULL,
  `third` varchar(20) DEFAULT NULL,
  `forth` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgeries`
--

CREATE TABLE IF NOT EXISTS `surgeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `charges` float DEFAULT NULL,
  `service_group` varchar(255) DEFAULT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `anaesthesia_service_group` varchar(255) DEFAULT NULL,
  `anaesthesia_tariff_list_id` int(11) DEFAULT NULL,
  `surgery_category_id` int(11) DEFAULT NULL,
  `surgery_subcategory_id` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `anesthesia_charges` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgery_categories`
--

CREATE TABLE IF NOT EXISTS `surgery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgery_consent_forms`
--

CREATE TABLE IF NOT EXISTS `surgery_consent_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `surgery_body_part` varchar(255) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `relative_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgery_subcategories`
--

CREATE TABLE IF NOT EXISTS `surgery_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `surgery_id` int(11) NOT NULL,
  `surgery_category_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgical_safety_checklists`
--

CREATE TABLE IF NOT EXISTS `surgical_safety_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `surgery_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `bed_no` varchar(255) DEFAULT NULL,
  `registration_no` varchar(255) DEFAULT NULL,
  `surgery_name` varchar(255) DEFAULT NULL,
  `signin_confirmed` tinyint(1) DEFAULT NULL,
  `signin_marked_yes` tinyint(1) DEFAULT NULL,
  `signin_marked_na` tinyint(1) DEFAULT NULL,
  `signin_complete_yes` tinyint(1) DEFAULT NULL,
  `signin_complete_na` tinyint(1) DEFAULT NULL,
  `timeout_confirmed` tinyint(1) DEFAULT NULL,
  `timeout_displayed_yes` tinyint(1) DEFAULT NULL,
  `timeout_displayed_na` tinyint(1) DEFAULT NULL,
  `signout_confirmed` tinyint(1) DEFAULT NULL,
  `signout_procedure_name` varchar(255) DEFAULT NULL,
  `signout_specimen` tinyint(1) DEFAULT NULL,
  `signout_instrument` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgical_site_infections`
--

CREATE TABLE IF NOT EXISTS `surgical_site_infections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `operation_type` varchar(25) DEFAULT NULL,
  `wound_location` varchar(255) DEFAULT NULL,
  `wound_type` varchar(25) DEFAULT NULL,
  `asa_scoretype` varchar(5) DEFAULT NULL,
  `antimicrobial_prophylaxis` varchar(5) DEFAULT NULL,
  `ssi_infection` varchar(10) DEFAULT NULL,
  `ssi_micro1` varchar(255) DEFAULT NULL,
  `ssi_micro2` varchar(255) DEFAULT NULL,
  `ssi_lastcontact` date DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tariff_amounts`
--

CREATE TABLE IF NOT EXISTS `tariff_amounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) NOT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `nabh_charges` varchar(255) DEFAULT NULL,
  `non_nabh_charges` varchar(255) DEFAULT NULL,
  `unit_days` smallint(6) NOT NULL DEFAULT '1',
  `moa_sr_no` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tariff_lists`
--

CREATE TABLE IF NOT EXISTS `tariff_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `service_group` varchar(255) DEFAULT NULL,
  `cbt` varchar(255) DEFAULT NULL,
  `cghs_nabh` varchar(255) DEFAULT NULL,
  `cghs_non_nabh` varchar(255) DEFAULT NULL,
  `cghs_code` varchar(200) DEFAULT NULL,
  `apply_in_a_day` varchar(20) DEFAULT '1',
  `price_for_private` double DEFAULT '0',
  `price_for_cghs` double DEFAULT '0',
  `price_for_other` double DEFAULT '0',
  `service_category_id` int(20) DEFAULT NULL,
  `service_sub_category_id` int(20) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tariff_standards`
--

CREATE TABLE IF NOT EXISTS `tariff_standards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE IF NOT EXISTS `time_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `time_slot` enum('morning','evening','night') NOT NULL,
  `is_recurring` tinyint(1) DEFAULT '0',
  `ward_id` int(11) NOT NULL,
  `monday` tinyint(1) NOT NULL DEFAULT '0',
  `tuesday` tinyint(1) NOT NULL DEFAULT '0',
  `wednesday` tinyint(1) NOT NULL DEFAULT '0',
  `thursday` tinyint(1) NOT NULL DEFAULT '0',
  `friday` tinyint(1) NOT NULL DEFAULT '0',
  `saturday` tinyint(1) NOT NULL DEFAULT '0',
  `sunday` tinyint(1) NOT NULL DEFAULT '0',
  `is_day_of` enum('1','0') NOT NULL DEFAULT '0',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracheostomy_consents`
--

CREATE TABLE IF NOT EXISTS `tracheostomy_consents` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `reason` text,
  `date2` date DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `gender` varchar(4) NOT NULL,
  `dob` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `address1` text,
  `address2` text,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(40) NOT NULL,
  `phone1` varchar(255) NOT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `activity_start_date` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `initial_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_fk_constraint` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1  ;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE IF NOT EXISTS `wards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `wardid` varchar(255) NOT NULL,
  `no_of_rooms` smallint(6) NOT NULL,
  `bed_prefix` varchar(255) NOT NULL,
  `bed_cost` varchar(255) DEFAULT NULL,
  `doctor_charges` varchar(255) DEFAULT NULL,
  `nursing_charges` varchar(255) DEFAULT NULL,
  `service_group_id` int(11) NOT NULL COMMENT 'service group of mappped service.',
  `tariff_list_id` int(11) DEFAULT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ward_billings`
--

CREATE TABLE IF NOT EXISTS `ward_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `services_ward_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ward_patients`
--

CREATE TABLE IF NOT EXISTS `ward_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `in_date` datetime NOT NULL,
  `out_date` datetime DEFAULT NULL,
  `readmitted` tinyint(1) DEFAULT NULL,
  `readmitted_timediff` varchar(10) DEFAULT NULL,
  `is_discharge` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `final_billing_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `final_billing_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `test_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `pharmacy_sales_bills` CHANGE `create_time` `create_time` DATETIME NULL DEFAULT NULL;


ALTER TABLE pharmacy_items DROP `supplier_id` ;

ALTER TABLE `pharmacy_item_rates` ADD `batch_number` VARCHAR( 200 ) NULL AFTER `item_id`;

ALTER TABLE `inventory_purchase_item_details` ADD `mrp` VARCHAR( 200 ) NULL AFTER `free` ,
ADD `price` VARCHAR( 200 ) NULL AFTER `mrp`;

ALTER TABLE `inventory_pharmacy_sales_returns_details` CHANGE `expiry_date` `expiry_date` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;

ALTER TABLE `inventory_suppliers` ADD `dl21_no` VARCHAR( 200 ) NULL AFTER `dl_no` ;
ALTER TABLE `pharmacy_item_rates` ADD `mstpflag` CHAR NULL AFTER `tax` ;
