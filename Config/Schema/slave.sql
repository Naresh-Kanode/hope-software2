/*
SQLyog - Free MySQL GUI v5.12
Host - 5.1.73 : Database - drmhope
*********************************************************************
Server version : 5.1.73
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `drmhope`;

USE `drmhope`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account_code` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `acos` */

DROP TABLE IF EXISTS `acos`;

CREATE TABLE `acos` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2637 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `admission_checklists` */

DROP TABLE IF EXISTS `admission_checklists`;

CREATE TABLE `admission_checklists` (
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
  `staff_nurse` int(11) DEFAULT NULL,
  `floor_incharge` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `advance_directives` */

DROP TABLE IF EXISTS `advance_directives`;

CREATE TABLE `advance_directives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(20) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_sex` enum('Male','Female') DEFAULT NULL,
  `patient_age` varchar(255) DEFAULT NULL,
  `person1_name` varchar(255) DEFAULT NULL,
  `p1home_telephone` varchar(20) DEFAULT NULL,
  `p1work_telephone` varchar(20) DEFAULT NULL,
  `p1address1` varchar(255) DEFAULT NULL,
  `p1address2` varchar(255) DEFAULT NULL,
  `person2_name` varchar(255) DEFAULT NULL,
  `p2home_telephone` varchar(20) DEFAULT NULL,
  `p2work_telephone` varchar(20) DEFAULT NULL,
  `p2address1` varchar(255) DEFAULT NULL,
  `p2address2` varchar(255) DEFAULT NULL,
  `terminal_check1` tinyint(1) DEFAULT NULL,
  `terminal_check2` tinyint(1) DEFAULT NULL,
  `terminal_check3` tinyint(1) DEFAULT NULL,
  `terminal_check4` tinyint(1) DEFAULT NULL,
  `terminal_check5` tinyint(1) DEFAULT NULL,
  `organ_donate1` tinyint(1) DEFAULT NULL,
  `organ_donate2` tinyint(1) DEFAULT NULL,
  `organ_name` varchar(255) DEFAULT NULL,
  `consent_for1` tinyint(1) DEFAULT NULL,
  `consent_for2` tinyint(1) DEFAULT NULL,
  `consent_for3` tinyint(1) DEFAULT NULL,
  `patient_sign` varchar(255) DEFAULT NULL,
  `patient_address1` varchar(255) DEFAULT NULL,
  `patient_address2` varchar(255) DEFAULT NULL,
  `patient_date` varchar(255) DEFAULT NULL,
  `witness1_sign` varchar(255) DEFAULT NULL,
  `witness1_address1` varchar(255) DEFAULT NULL,
  `witness1_address2` varchar(255) DEFAULT NULL,
  `witness1_date` varchar(255) DEFAULT NULL,
  `witness2_sign` varchar(255) DEFAULT NULL,
  `witness2_address1` varchar(255) DEFAULT NULL,
  `witness2_address2` varchar(255) DEFAULT NULL,
  `witness2_date` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `advance_types` */

DROP TABLE IF EXISTS `advance_types`;

CREATE TABLE `advance_types` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `adverse_event_triggers` */

DROP TABLE IF EXISTS `adverse_event_triggers`;

CREATE TABLE `adverse_event_triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `values` varchar(255) NOT NULL,
  `range` int(11) NOT NULL,
  `comparision_operator` varchar(10) NOT NULL,
  `condition` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '"0" none "1" for medication "2" labs and "3" extra for future purpose',
  `condition_values` varchar(255) DEFAULT NULL,
  `rxnorm` varchar(50) DEFAULT NULL,
  `snowmed` varchar(50) DEFAULT NULL,
  `loinc_code` varchar(50) DEFAULT NULL,
  `cpt_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alcohal_assesment` */

DROP TABLE IF EXISTS `alcohal_assesment`;

CREATE TABLE `alcohal_assesment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `nausea_vomiting` varchar(255) NOT NULL,
  `tactile_disturbance` varchar(255) NOT NULL,
  `tremor` varchar(255) NOT NULL,
  `auditory_disturbances` varchar(255) NOT NULL,
  `paroxysmal_sweats` varchar(255) NOT NULL,
  `visiul_disturbance` varchar(255) NOT NULL,
  `anxiety` varchar(255) NOT NULL,
  `headache_fullness` varchar(255) NOT NULL,
  `observation` varchar(255) NOT NULL,
  `operation_clouding` varchar(255) NOT NULL,
  `total_score` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `alcohal_cessation_assesments` */

DROP TABLE IF EXISTS `alcohal_cessation_assesments`;

CREATE TABLE `alcohal_cessation_assesments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `quit_date` datetime NOT NULL,
  `cigarette` tinyint(2) DEFAULT NULL,
  `start_smoking` varchar(255) DEFAULT NULL,
  `smoke_again` varchar(255) DEFAULT NULL,
  `nicotine_replacement` varchar(255) DEFAULT NULL,
  `plan_nicotine_replacement` varchar(255) DEFAULT NULL,
  `quit_now` varchar(255) DEFAULT NULL,
  `quit_now_other` varchar(255) DEFAULT NULL,
  `main_concern_quitting` varchar(255) DEFAULT NULL,
  `situation_smoke` varchar(255) DEFAULT NULL,
  `situation_smoke_other` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `allergies_master` */

DROP TABLE IF EXISTS `allergies_master`;

CREATE TABLE `allergies_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `allergies_id` int(11) DEFAULT NULL,
  `rxnorm` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `AllergySeverityName` varchar(255) DEFAULT NULL,
  `reaction_type` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `allergy_locations` */

DROP TABLE IF EXISTS `allergy_locations`;

CREATE TABLE `allergy_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `is_active` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `allergy_masters` */

DROP TABLE IF EXISTS `allergy_masters`;

CREATE TABLE `allergy_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CompositeAllergyID` int(11) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `ConceptID` int(11) NOT NULL,
  `ConceptType` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `TouchDate` varchar(255) NOT NULL,
  `AllergySeverityName` varchar(255) DEFAULT NULL,
  `reaction_type` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `rxnorm` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18476 DEFAULT CHARSET=latin1;

/*Table structure for table `allergy_reactions` */

DROP TABLE IF EXISTS `allergy_reactions`;

CREATE TABLE `allergy_reactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `is_active` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ambulatory_result_outboxes` */

DROP TABLE IF EXISTS `ambulatory_result_outboxes`;

CREATE TABLE `ambulatory_result_outboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text,
  `type` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `call_patient` tinyint(1) NOT NULL DEFAULT '0',
  `collect_balance` tinyint(1) NOT NULL DEFAULT '0',
  `create_portal_login` tinyint(1) NOT NULL DEFAULT '0',
  `reference_patient` varchar(255) NOT NULL,
  `due_in_days` varchar(100) NOT NULL,
  `add_to_patient_record` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_patient` tinyint(1) DEFAULT '0',
  `is_ammendment` tinyint(1) NOT NULL DEFAULT '0',
  `ammendment_status` char(4) NOT NULL DEFAULT 'null',
  `reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ambulatory_results` */

DROP TABLE IF EXISTS `ambulatory_results`;

CREATE TABLE `ambulatory_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text,
  `type` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `call_patient` tinyint(1) NOT NULL DEFAULT '0',
  `collect_balance` tinyint(1) NOT NULL DEFAULT '0',
  `create_portal_login` tinyint(1) NOT NULL DEFAULT '0',
  `reference_patient` varchar(255) NOT NULL,
  `due_in_days` varchar(100) NOT NULL,
  `add_to_patient_record` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_patient` tinyint(1) DEFAULT '0',
  `is_ammendment` tinyint(1) NOT NULL DEFAULT '0',
  `ammendment_status` char(4) NOT NULL DEFAULT 'null',
  `reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ambulatory_visit_types` */

DROP TABLE IF EXISTS `ambulatory_visit_types`;

CREATE TABLE `ambulatory_visit_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` int(25) NOT NULL,
  `code_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `anaesthesia_consent_forms` */

DROP TABLE IF EXISTS `anaesthesia_consent_forms`;

CREATE TABLE `anaesthesia_consent_forms` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `appointments` */

DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL COMMENT 'Store User Id',
  `department_id` int(11) DEFAULT NULL,
  `appointment_with` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `purpose` text,
  `visit_type` varchar(255) DEFAULT NULL,
  `observation_identifier_id` int(11) DEFAULT NULL,
  `app_token` varchar(255) DEFAULT NULL,
  `is_future_app` tinyint(2) NOT NULL DEFAULT '0',
  `to_tast_fast` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending' COMMENT 'Patient status, arrived or not',
  `seen_status` varchar(20) DEFAULT '' COMMENT 'Status after patient arrived',
  `chamber_id` tinyint(4) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0' COMMENT '''1'' for deleted appointment',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `aros` */

DROP TABLE IF EXISTS `aros`;

CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `aros_acos` */

DROP TABLE IF EXISTS `aros_acos`;

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2768 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `assessment_first_admissions` */

DROP TABLE IF EXISTS `assessment_first_admissions`;

CREATE TABLE `assessment_first_admissions` (
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

/*Table structure for table `assessment_second_admissions` */

DROP TABLE IF EXISTS `assessment_second_admissions`;

CREATE TABLE `assessment_second_admissions` (
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

/*Table structure for table `assessment_third_admissions` */

DROP TABLE IF EXISTS `assessment_third_admissions`;

CREATE TABLE `assessment_third_admissions` (
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

/*Table structure for table `audit_delta_logs` */

DROP TABLE IF EXISTS `audit_delta_logs`;

CREATE TABLE `audit_delta_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditdelta_id` int(11) NOT NULL,
  `audit_id` int(11) NOT NULL,
  `changed_old_value` varchar(255) NOT NULL,
  `changed_new_value` varchar(255) NOT NULL,
  `audit_id_deleted` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `audit_deltas` */

DROP TABLE IF EXISTS `audit_deltas`;

CREATE TABLE `audit_deltas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_id` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `old_value` text,
  `new_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `audit_log_permission` */

DROP TABLE IF EXISTS `audit_log_permission`;

CREATE TABLE `audit_log_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `audit_log_status` */

DROP TABLE IF EXISTS `audit_log_status`;

CREATE TABLE `audit_log_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `audit_log_status` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `audit_trails` */

DROP TABLE IF EXISTS `audit_trails`;

CREATE TABLE `audit_trails` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `audits` */

DROP TABLE IF EXISTS `audits`;

CREATE TABLE `audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `entity_id` varchar(36) NOT NULL,
  `json_object` text NOT NULL,
  `description` text,
  `source_id` varchar(255) DEFAULT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10109 DEFAULT CHARSET=utf8;

/*Table structure for table `beds` */

DROP TABLE IF EXISTS `beds`;

CREATE TABLE `beds` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `billings` */

DROP TABLE IF EXISTS `billings`;

CREATE TABLE `billings` (
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
  `neft_number` varchar(50) DEFAULT NULL,
  `neft_date` datetime DEFAULT NULL,
  `against` varchar(100) DEFAULT NULL,
  `copay_amount` varchar(25) DEFAULT NULL,
  `primary_insurance_amount` varchar(25) DEFAULT NULL,
  `secoundry_insurance_amount` varchar(25) DEFAULT NULL,
  `total_amount` varchar(25) DEFAULT '0',
  `amount_pending` varchar(25) DEFAULT '0',
  `amount_paid` varchar(25) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `blood_order_options` */

DROP TABLE IF EXISTS `blood_order_options`;

CREATE TABLE `blood_order_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_order_id` int(11) NOT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `tariff_list_alias_name` varchar(255) DEFAULT NULL,
  `units` varchar(100) DEFAULT NULL,
  `blood_transfusion_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `blood_orders` */

DROP TABLE IF EXISTS `blood_orders`;

CREATE TABLE `blood_orders` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bmi_bp_results` */

DROP TABLE IF EXISTS `bmi_bp_results`;

CREATE TABLE `bmi_bp_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pulse_text` int(11) DEFAULT NULL,
  `pulse_volume` varchar(255) DEFAULT NULL,
  `systolic` int(25) DEFAULT NULL,
  `diastolic` int(25) DEFAULT NULL,
  `diastolic1` varchar(255) DEFAULT NULL,
  `diastolic2` varchar(255) DEFAULT NULL,
  `diastolic3` varchar(255) DEFAULT NULL,
  `diastolic4` varchar(255) DEFAULT NULL,
  `bmi_result_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bmi_results` */

DROP TABLE IF EXISTS `bmi_results`;

CREATE TABLE `bmi_results` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `patient_id` int(25) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  `myoption` varchar(255) DEFAULT NULL,
  `equal_value` varchar(255) DEFAULT NULL,
  `temp_source` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `chief_complaint` varchar(255) DEFAULT NULL,
  `respiration` int(30) DEFAULT NULL,
  `respiration_volume` varchar(255) DEFAULT NULL,
  `weight` int(30) DEFAULT NULL,
  `weight_volume` varchar(255) DEFAULT NULL,
  `weight_result` varchar(255) DEFAULT NULL,
  `height` int(30) DEFAULT NULL,
  `height_volume` varchar(255) DEFAULT NULL,
  `height_result` varchar(255) DEFAULT NULL,
  `feet_result` varchar(255) DEFAULT NULL,
  `bmi` varchar(255) DEFAULT NULL,
  `head_circumference` int(30) DEFAULT NULL,
  `head_result` varchar(255) DEFAULT NULL,
  `head_circumference_volume` varchar(255) DEFAULT NULL,
  `smoking` varchar(255) DEFAULT NULL,
  `waist_circumference` int(30) DEFAULT NULL,
  `waist_result` varchar(255) DEFAULT NULL,
  `waist_circumference_volume` varchar(255) DEFAULT NULL,
  `smoking_councelling` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `body_site_value_set` */

DROP TABLE IF EXISTS `body_site_value_set`;

CREATE TABLE `body_site_value_set` (
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bosy_site_value_set` */

DROP TABLE IF EXISTS `bosy_site_value_set`;

CREATE TABLE `bosy_site_value_set` (
  `value_code` varchar(255) DEFAULT NULL,
  `descriptionva` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cake_sessions` */

DROP TABLE IF EXISTS `cake_sessions`;

CREATE TABLE `cake_sessions` (
  `id` varchar(255) NOT NULL,
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `chambers` */

DROP TABLE IF EXISTS `chambers`;

CREATE TABLE `chambers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `child_births` */

DROP TABLE IF EXISTS `child_births`;

CREATE TABLE `child_births` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=latin1;

/*Table structure for table `clinical_supports` */

DROP TABLE IF EXISTS `clinical_supports`;

CREATE TABLE `clinical_supports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `Hyptension` smallint(6) DEFAULT NULL,
  `ccr` smallint(6) DEFAULT NULL,
  `dr` smallint(6) DEFAULT NULL,
  `dmc` smallint(6) DEFAULT NULL,
  `conso` smallint(6) DEFAULT NULL,
  `com_h` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `com_c` varchar(255) DEFAULT NULL,
  `c_age` varchar(255) DEFAULT NULL,
  `com_c1` varchar(255) DEFAULT NULL,
  `c_age1` varchar(255) DEFAULT NULL,
  `com_d1` varchar(255) DEFAULT NULL,
  `d_age1` varchar(255) DEFAULT NULL,
  `test_c` varchar(255) DEFAULT NULL,
  `com_d` varchar(255) DEFAULT NULL,
  `d_age` varchar(255) DEFAULT NULL,
  `test_d` varchar(255) DEFAULT NULL,
  `com_e` varchar(255) DEFAULT NULL,
  `age_e` varchar(255) DEFAULT NULL,
  `com_nnd` varchar(255) DEFAULT NULL,
  `age_nnd` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cognitive_functions` */

DROP TABLE IF EXISTS `cognitive_functions`;

CREATE TABLE `cognitive_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `note_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `cog_name` varchar(255) DEFAULT NULL,
  `cog_date` datetime DEFAULT NULL,
  `cog_snomed_code` varchar(255) DEFAULT NULL,
  `is_cognitive` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `collaborate_companies` */

DROP TABLE IF EXISTS `collaborate_companies`;

CREATE TABLE `collaborate_companies` (
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

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `configurations` */

DROP TABLE IF EXISTS `configurations`;

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `consent_forms` */

DROP TABLE IF EXISTS `consent_forms`;

CREATE TABLE `consent_forms` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consents` */

DROP TABLE IF EXISTS `consents`;

CREATE TABLE `consents` (
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
  `signpad_file` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consultant_billings` */

DROP TABLE IF EXISTS `consultant_billings`;

CREATE TABLE `consultant_billings` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consultant_schedules` */

DROP TABLE IF EXISTS `consultant_schedules`;

CREATE TABLE `consultant_schedules` (
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

/*Table structure for table `consultants` */

DROP TABLE IF EXISTS `consultants`;

CREATE TABLE `consultants` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `corporate_lab_rates` */

DROP TABLE IF EXISTS `corporate_lab_rates`;

CREATE TABLE `corporate_lab_rates` (
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
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=latin1;

/*Table structure for table `corporate_locations` */

DROP TABLE IF EXISTS `corporate_locations`;

CREATE TABLE `corporate_locations` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `corporate_sublocations` */

DROP TABLE IF EXISTS `corporate_sublocations`;

CREATE TABLE `corporate_sublocations` (
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `corporates` */

DROP TABLE IF EXISTS `corporates`;

CREATE TABLE `corporates` (
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `cqm_exclusion_lists` */

DROP TABLE IF EXISTS `cqm_exclusion_lists`;

CREATE TABLE `cqm_exclusion_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `measure_id` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `isdenominator` int(2) NOT NULL DEFAULT '0',
  `isnumerator` int(2) NOT NULL DEFAULT '0',
  `isexcluded` int(2) NOT NULL DEFAULT '0',
  `exclude_reason` varchar(50) DEFAULT NULL,
  `exclude_text` varchar(255) DEFAULT NULL,
  `isexception` int(2) NOT NULL DEFAULT '0',
  `exception_text` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cqmlists` */

DROP TABLE IF EXISTS `cqmlists`;

CREATE TABLE `cqmlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `nqf_number` varchar(30) NOT NULL,
  `emeasure_identifier` int(11) NOT NULL,
  `emeasure_version_no` int(2) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `den_exclusions` varchar(100) NOT NULL,
  `num_exclusions` varchar(100) NOT NULL,
  `den_exceptions` varchar(100) NOT NULL,
  `ipp_rootid` varchar(255) NOT NULL,
  `denexcep_rootid` varchar(255) NOT NULL,
  `exclusions_rootid` varchar(255) NOT NULL,
  `numerator_rootid` varchar(255) NOT NULL,
  `denominator_rootid` varchar(255) NOT NULL,
  `measure_rootid` varchar(255) NOT NULL,
  `MSRPOPL` varchar(255) NOT NULL,
  `OBSERV` varchar(255) NOT NULL,
  `stratification` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cqmreportehs` */

DROP TABLE IF EXISTS `cqmreportehs`;

CREATE TABLE `cqmreportehs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measure_type` varchar(50) NOT NULL DEFAULT 'EH',
  `measure_id` varchar(255) DEFAULT NULL,
  `ipp_count` int(11) DEFAULT NULL,
  `numerator_count` int(11) NOT NULL DEFAULT '0',
  `denominator_count` int(11) DEFAULT '0',
  `exception_denominator` int(11) DEFAULT NULL,
  `exclusion_denominator` int(11) DEFAULT '0',
  `exception_numerator` int(11) DEFAULT '0',
  `ipp_male` int(11) DEFAULT '0',
  `ipp_female` int(11) DEFAULT '0',
  `ipp_race` int(11) DEFAULT '0',
  `ipp_eth` int(11) DEFAULT '0',
  `numerator_male` int(11) DEFAULT '0',
  `numerator_female` int(11) DEFAULT '0',
  `numerator_race` int(11) DEFAULT '0',
  `numerator_eth` int(11) DEFAULT '0',
  `denominator_male` int(11) DEFAULT '0',
  `denominator_female` int(11) DEFAULT '0',
  `denominator_race` int(11) DEFAULT '0',
  `denominator_eth` int(11) DEFAULT '0',
  `excepn_male` int(11) DEFAULT '0',
  `excepn_female` int(11) DEFAULT '0',
  `excepn_race` int(11) DEFAULT '0',
  `excepn_eth` int(11) DEFAULT '0',
  `exclud_male` int(11) DEFAULT '0',
  `exclud_female` int(11) DEFAULT '0',
  `exclud_race` int(11) DEFAULT '0',
  `exclud_eth` int(11) DEFAULT '0',
  `excepd_male` int(11) DEFAULT '0',
  `excepd_female` int(11) DEFAULT '0',
  `excepd_race` int(11) DEFAULT '0',
  `excepd_eth` int(11) DEFAULT '0',
  `measure_pop` varchar(255) DEFAULT '0',
  `measure_observation` varchar(255) DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cqmreports` */

DROP TABLE IF EXISTS `cqmreports`;

CREATE TABLE `cqmreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `measure_id` varchar(255) DEFAULT NULL,
  `numerator` int(11) DEFAULT NULL,
  `denominator` int(11) DEFAULT NULL,
  `ipp_count` int(11) DEFAULT NULL,
  `male_count` int(11) DEFAULT NULL,
  `female_count` int(11) DEFAULT NULL,
  `ethnicity_count` int(11) DEFAULT NULL,
  `race_count` int(11) DEFAULT NULL,
  `num_male` int(11) DEFAULT NULL,
  `num_female` int(11) DEFAULT NULL,
  `num_ethnicity` int(11) DEFAULT NULL,
  `num_race` int(11) DEFAULT NULL,
  `excep_male` int(11) DEFAULT '0',
  `excep_female` int(11) DEFAULT '0',
  `excep_race` int(11) DEFAULT '0',
  `excep_ethnicity` int(11) DEFAULT '0',
  `exclu_male` int(11) DEFAULT '0',
  `exclu_female` int(11) DEFAULT '0',
  `exclu_race` int(11) DEFAULT '0',
  `exclu_ethnicity` int(11) DEFAULT '0',
  `den_exclusion` int(11) DEFAULT '0',
  `den_exception` int(11) DEFAULT '0',
  `measure_type` varchar(20) DEFAULT '0',
  `location_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `credit_types` */

DROP TABLE IF EXISTS `credit_types`;

CREATE TABLE `credit_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `currencies_backup` */

DROP TABLE IF EXISTS `currencies_backup`;

CREATE TABLE `currencies_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `country_code` char(3) DEFAULT NULL,
  `currency` char(10) DEFAULT NULL,
  `currency_code` char(10) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dama_consent_forms` */

DROP TABLE IF EXISTS `dama_consent_forms`;

CREATE TABLE `dama_consent_forms` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `death_certificates` */

DROP TABLE IF EXISTS `death_certificates`;

CREATE TABLE `death_certificates` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `death_summaries` */

DROP TABLE IF EXISTS `death_summaries`;

CREATE TABLE `death_summaries` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

/*Table structure for table `designations` */

DROP TABLE IF EXISTS `designations`;

CREATE TABLE `designations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

/*Table structure for table `device_masters` */

DROP TABLE IF EXISTS `device_masters`;

CREATE TABLE `device_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_value` int(255) NOT NULL,
  `device_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` date NOT NULL,
  `modify_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `device_uses` */

DROP TABLE IF EXISTS `device_uses`;

CREATE TABLE `device_uses` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `snowmed_code` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `device_note` text NOT NULL,
  `device_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diagnoses` */

DROP TABLE IF EXISTS `diagnoses`;

CREATE TABLE `diagnoses` (
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
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `bmi` int(11) DEFAULT NULL,
  `bmi_status` varchar(255) NOT NULL,
  `followup` varchar(255) DEFAULT NULL,
  `disability` varchar(255) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `status_option` varchar(100) NOT NULL,
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
  `is_allergy` int(2) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diagnosis_drugs` */

DROP TABLE IF EXISTS `diagnosis_drugs`;

CREATE TABLE `diagnosis_drugs` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diagnosis_masters` */

DROP TABLE IF EXISTS `diagnosis_masters`;

CREATE TABLE `diagnosis_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imo_code` varchar(255) NOT NULL,
  `icd_id` varchar(255) NOT NULL,
  `sct_us_concept_id` varchar(225) DEFAULT NULL,
  `diagnoses_name` varchar(255) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

/*Table structure for table `diagnostic_masters` */

DROP TABLE IF EXISTS `diagnostic_masters`;

CREATE TABLE `diagnostic_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lonic_code` varchar(255) DEFAULT NULL,
  `code_value` varchar(255) DEFAULT NULL,
  `diagnostic_name` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  `modify_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diagnostics` */

DROP TABLE IF EXISTS `diagnostics`;

CREATE TABLE `diagnostics` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `diagnostic_name` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `diagnostic_note` text NOT NULL,
  `diagnostic_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diagnosticstudyresult_masters` */

DROP TABLE IF EXISTS `diagnosticstudyresult_masters`;

CREATE TABLE `diagnosticstudyresult_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imo_code` varchar(255) NOT NULL,
  `icd_id` varchar(255) NOT NULL,
  `sct_us_concept_id` varchar(225) DEFAULT NULL,
  `diagnoses_name` varchar(255) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `dietary_assessments` */

DROP TABLE IF EXISTS `dietary_assessments`;

CREATE TABLE `dietary_assessments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `dietry_notes` */

DROP TABLE IF EXISTS `dietry_notes`;

CREATE TABLE `dietry_notes` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `dignostic_studys` */

DROP TABLE IF EXISTS `dignostic_studys`;

CREATE TABLE `dignostic_studys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `procedure_description` varchar(255) DEFAULT NULL,
  `test_code` varchar(255) DEFAULT NULL,
  `loinc_code` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `cpt_code` varchar(255) DEFAULT NULL,
  `instruction` text,
  `vte_confirm` tinyint(1) DEFAULT NULL,
  `procedure_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `discharge_details` */

DROP TABLE IF EXISTS `discharge_details`;

CREATE TABLE `discharge_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `discharge_starts_on` datetime DEFAULT NULL COMMENT 'this will come from bollings table',
  `discharge_ends_on` datetime DEFAULT NULL COMMENT 'this will come from ward patient when is_released will be changed 1',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `discharge_drugs` */

DROP TABLE IF EXISTS `discharge_drugs`;

CREATE TABLE `discharge_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discharge_summaries_id` int(11) NOT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `route` varchar(10) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `strength` varchar(20) DEFAULT NULL,
  `refills` varchar(20) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `prn` tinyint(1) NOT NULL DEFAULT '0',
  `daw` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `special_instruction` text,
  `patient_id` int(11) DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `remark` text,
  `first` varchar(20) DEFAULT NULL,
  `second` varchar(20) DEFAULT NULL,
  `third` varchar(20) DEFAULT NULL,
  `forth` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `discharge_summaries` */

DROP TABLE IF EXISTS `discharge_summaries`;

CREATE TABLE `discharge_summaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `anti_discharge_date` date DEFAULT NULL,
  `condition_on_discharge` varchar(50) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `pr` varchar(20) DEFAULT NULL,
  `rr` varchar(20) DEFAULT NULL,
  `bp` varchar(20) DEFAULT NULL,
  `spo2` varchar(20) DEFAULT NULL,
  `review_of_system` text,
  `systemic_examination` text,
  `plan_discharge_to` varchar(50) DEFAULT NULL,
  `facility_service_care` varchar(255) DEFAULT NULL,
  `requested_start_date` date DEFAULT NULL,
  `discharge_service` varchar(255) DEFAULT NULL,
  `discharge_diet` varchar(255) DEFAULT NULL,
  `activity_limitation` varchar(255) DEFAULT NULL,
  `discharge_home_monitoring` varchar(50) DEFAULT NULL,
  `care_plan` varchar(255) DEFAULT NULL,
  `rn_discharge_instruction` varchar(20) DEFAULT NULL,
  `provider_discharge_instruction1` varchar(255) DEFAULT NULL,
  `provider_discharge_instruction2` varchar(255) DEFAULT NULL,
  `additional_discharge_instruction` varchar(255) DEFAULT NULL,
  `followup_plan` varchar(255) DEFAULT NULL,
  `review_on` date DEFAULT NULL,
  `resident_doctor_id` int(11) DEFAULT NULL,
  `frequent_contact_number` varchar(255) DEFAULT NULL,
  `consult_to_schedule` varchar(255) DEFAULT NULL,
  `call_provider` varchar(255) DEFAULT NULL,
  `provider_to_call_surgical` varchar(255) DEFAULT NULL,
  `provider_to_call_medical` varchar(255) DEFAULT NULL,
  `freetext_box_out_provider` varchar(255) DEFAULT NULL,
  `attending_physician_discharge` varchar(255) DEFAULT NULL,
  `provider_discharge_summary` varchar(255) DEFAULT NULL,
  `pcp_reffering_md` varchar(255) DEFAULT NULL,
  `provider_sign` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `discharge_summaries_old` */

DROP TABLE IF EXISTS `discharge_summaries_old`;

CREATE TABLE `discharge_summaries_old` (
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
  `communication_code` int(11) DEFAULT NULL,
  `com_refuse_discharge` tinyint(1) NOT NULL DEFAULT '0',
  `atrial_documented` varchar(255) NOT NULL,
  `general_examine` text,
  `present_condition` text,
  `condition_on_discharge` varchar(50) DEFAULT NULL,
  `care_plan` text NOT NULL,
  `provider_sign` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `discharge_surgeries` */

DROP TABLE IF EXISTS `discharge_surgeries`;

CREATE TABLE `discharge_surgeries` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `discharge_template_texts` */

DROP TABLE IF EXISTS `discharge_template_texts`;

CREATE TABLE `discharge_template_texts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `discharge_templates` */

DROP TABLE IF EXISTS `discharge_templates`;

CREATE TABLE `discharge_templates` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `dischargeby_consultants` */

DROP TABLE IF EXISTS `dischargeby_consultants`;

CREATE TABLE `dischargeby_consultants` (
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

/*Table structure for table `discount_by_credits` */

DROP TABLE IF EXISTS `discount_by_credits`;

CREATE TABLE `discount_by_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `final_billing_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `discount_by_credit` int(11) NOT NULL,
  `reason_for_credit_voucher` text,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `districts` */

DROP TABLE IF EXISTS `districts`;

CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=latin1;

/*Table structure for table `doctor_chambers` */

DROP TABLE IF EXISTS `doctor_chambers`;

CREATE TABLE `doctor_chambers` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `doctor_schedules` */

DROP TABLE IF EXISTS `doctor_schedules`;

CREATE TABLE `doctor_schedules` (
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

/*Table structure for table `doctor_template_texts` */

DROP TABLE IF EXISTS `doctor_template_texts`;

CREATE TABLE `doctor_template_texts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `doctor_templates` */

DROP TABLE IF EXISTS `doctor_templates`;

CREATE TABLE `doctor_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `template_name` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
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
  `height_weight` tinyint(1) NOT NULL,
  `bp` tinyint(1) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `drug_allergies` */

DROP TABLE IF EXISTS `drug_allergies`;

CREATE TABLE `drug_allergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `from1` varchar(255) NOT NULL,
  `reaction` text NOT NULL,
  `severity` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL,
  `allergylocation` varchar(255) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `onsets` varchar(100) NOT NULL,
  `comments` text NOT NULL,
  `onsets_date` varchar(255) NOT NULL,
  `allergy_type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `drugs` */

DROP TABLE IF EXISTS `drugs`;

CREATE TABLE `drugs` (
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

/*Table structure for table `ekg_results` */

DROP TABLE IF EXISTS `ekg_results`;

CREATE TABLE `ekg_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ekg_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `note` text NOT NULL,
  `result_publish_date` datetime DEFAULT NULL,
  `confirm_result` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `created_by` tinyint(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modified_by` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ekgs` */

DROP TABLE IF EXISTS `ekgs`;

CREATE TABLE `ekgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `history` varchar(255) DEFAULT NULL,
  `cardiac_medication` varchar(255) DEFAULT NULL,
  `pacemaker` enum('yes','no','unknown') NOT NULL,
  `check_one` varchar(255) DEFAULT NULL,
  `assignment_accepted` enum('yes','no') NOT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `created_by` tinyint(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modified_by` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `elderly_medications` */

DROP TABLE IF EXISTS `elderly_medications`;

CREATE TABLE `elderly_medications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ndc_code` int(25) DEFAULT NULL,
  `medication_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `emar_dashboard_settings` */

DROP TABLE IF EXISTS `emar_dashboard_settings`;

CREATE TABLE `emar_dashboard_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `unscheduled` tinyint(1) NOT NULL DEFAULT '0',
  `prn` tinyint(1) NOT NULL DEFAULT '0',
  `continfusion` tinyint(1) NOT NULL DEFAULT '0',
  `future` tinyint(1) NOT NULL DEFAULT '0',
  `discontscheduled` tinyint(1) NOT NULL DEFAULT '0',
  `discontunscheduled` tinyint(1) NOT NULL DEFAULT '0',
  `discontprn` tinyint(1) NOT NULL DEFAULT '0',
  `discontinfusion` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `env_allergies` */

DROP TABLE IF EXISTS `env_allergies`;

CREATE TABLE `env_allergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `envallergytypes` */

DROP TABLE IF EXISTS `envallergytypes`;

CREATE TABLE `envallergytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `estimate_consultant_billings` */

DROP TABLE IF EXISTS `estimate_consultant_billings`;

CREATE TABLE `estimate_consultant_billings` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `estimate_laboratory_test_orders` */

DROP TABLE IF EXISTS `estimate_laboratory_test_orders`;

CREATE TABLE `estimate_laboratory_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `estimate_other_services` */

DROP TABLE IF EXISTS `estimate_other_services`;

CREATE TABLE `estimate_other_services` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `estimate_patients` */

DROP TABLE IF EXISTS `estimate_patients`;

CREATE TABLE `estimate_patients` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `estimate_radiology_test_orders` */

DROP TABLE IF EXISTS `estimate_radiology_test_orders`;

CREATE TABLE `estimate_radiology_test_orders` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `estimate_service_bills` */

DROP TABLE IF EXISTS `estimate_service_bills`;

CREATE TABLE `estimate_service_bills` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ethnicities` */

DROP TABLE IF EXISTS `ethnicities`;

CREATE TABLE `ethnicities` (
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

/*Table structure for table `facilities_backup` */

DROP TABLE IF EXISTS `facilities_backup`;

CREATE TABLE `facilities_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
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
  `maxlocations` smallint(6) NOT NULL,
  `preference` text,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `facility_database_mappings_backup` */

DROP TABLE IF EXISTS `facility_database_mappings_backup`;

CREATE TABLE `facility_database_mappings_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) NOT NULL,
  `db_name` varchar(200) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `facility_user_mappings_backup` */

DROP TABLE IF EXISTS `facility_user_mappings_backup`;

CREATE TABLE `facility_user_mappings_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fall_assessment_summeries` */

DROP TABLE IF EXISTS `fall_assessment_summeries`;

CREATE TABLE `fall_assessment_summeries` (
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

/*Table structure for table `fall_assessments` */

DROP TABLE IF EXISTS `fall_assessments`;

CREATE TABLE `fall_assessments` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `family_histories` */

DROP TABLE IF EXISTS `family_histories`;

CREATE TABLE `family_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `problemf` varchar(255) DEFAULT NULL,
  `statusf` varchar(255) DEFAULT NULL,
  `commentsf` varchar(255) DEFAULT NULL,
  `problemm` varchar(255) DEFAULT NULL,
  `statusm` varchar(255) DEFAULT NULL,
  `commentsm` varchar(255) DEFAULT NULL,
  `problemb` varchar(255) DEFAULT NULL,
  `statusb` varchar(255) DEFAULT NULL,
  `commentsb` varchar(255) DEFAULT NULL,
  `problems` varchar(255) DEFAULT NULL,
  `statuss` varchar(255) DEFAULT NULL,
  `commentss` varchar(255) DEFAULT NULL,
  `problemson` varchar(255) DEFAULT NULL,
  `statusson` varchar(255) DEFAULT NULL,
  `commentsson` varchar(255) DEFAULT NULL,
  `problemd` varchar(255) DEFAULT NULL,
  `statusd` varchar(255) DEFAULT NULL,
  `commentsd` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `final_billing_options` */

DROP TABLE IF EXISTS `final_billing_options`;

CREATE TABLE `final_billing_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `final_billing_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `final_billings` */

DROP TABLE IF EXISTS `final_billings`;

CREATE TABLE `final_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `total_amount` varchar(255) DEFAULT '0',
  `amount_paid` varchar(255) DEFAULT '0',
  `amount_pending` varchar(255) DEFAULT '0',
  `copay` varchar(255) DEFAULT '0',
  `collected_copay` varchar(255) DEFAULT '0',
  `amount_pending_ins_company` varchar(255) DEFAULT '0',
  `amount_collected_ins_company` varchar(255) DEFAULT '0',
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
  `claim_status` varchar(255) DEFAULT NULL,
  `patient_discharge_condition` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `finalizations` */

DROP TABLE IF EXISTS `finalizations`;

CREATE TABLE `finalizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `mocified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `food_allergy_types` */

DROP TABLE IF EXISTS `food_allergy_types`;

CREATE TABLE `food_allergy_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `form_answers` */

DROP TABLE IF EXISTS `form_answers`;

CREATE TABLE `form_answers` (
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

/*Table structure for table `form_questions` */

DROP TABLE IF EXISTS `form_questions`;

CREATE TABLE `form_questions` (
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

/*Table structure for table `functional_results` */

DROP TABLE IF EXISTS `functional_results`;

CREATE TABLE `functional_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `result_description` varchar(255) DEFAULT NULL,
  `test_code` varchar(255) DEFAULT NULL,
  `loinc_code` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `cpt_code` varchar(255) DEFAULT NULL,
  `instruction` text,
  `result_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `functionalstatusresult_masters` */

DROP TABLE IF EXISTS `functionalstatusresult_masters`;

CREATE TABLE `functionalstatusresult_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imo_code` varchar(255) NOT NULL,
  `icd_id` varchar(255) NOT NULL,
  `sct_us_concept_id` varchar(225) DEFAULT NULL,
  `diagnoses_name` varchar(255) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `guarantors` */

DROP TABLE IF EXISTS `guarantors`;

CREATE TABLE `guarantors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gau_initial_id` smallint(6) DEFAULT NULL,
  `gau_first_name` varchar(255) DEFAULT NULL,
  `gau_middle_name` varchar(255) DEFAULT NULL,
  `gau_last_name` varchar(255) DEFAULT NULL,
  `dobg` varchar(255) DEFAULT NULL,
  `gau_sex` varchar(255) DEFAULT NULL,
  `gau_ssn` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `gau_plot_no` varchar(255) DEFAULT NULL,
  `gau_landmark` varchar(255) DEFAULT NULL,
  `gau_country` varchar(255) DEFAULT NULL,
  `gau_city` varchar(255) DEFAULT NULL,
  `gau_state` varchar(255) DEFAULT NULL,
  `gau_zip` int(11) DEFAULT NULL,
  `gau_work` bigint(20) DEFAULT NULL,
  `gau_home_phone` bigint(20) DEFAULT NULL,
  `gau_mobile` bigint(20) DEFAULT NULL,
  `gau_email` varchar(255) DEFAULT NULL,
  `gau_fax` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `guardians` */

DROP TABLE IF EXISTS `guardians`;

CREATE TABLE `guardians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `guar_initial_id` smallint(6) DEFAULT NULL,
  `guar_first_name` varchar(255) DEFAULT NULL,
  `guar_middle_name` varchar(255) DEFAULT NULL,
  `guar_last_name` varchar(255) DEFAULT NULL,
  `guar_name_type` char(1) DEFAULT NULL,
  `guar_suffix` varchar(255) DEFAULT NULL,
  `guar_sex` varchar(255) DEFAULT NULL,
  `guar_relation` varchar(255) DEFAULT NULL,
  `guar_address1` varchar(255) DEFAULT NULL,
  `guar_address2` varchar(255) DEFAULT NULL,
  `guar_city` varchar(255) DEFAULT NULL,
  `guar_state` varchar(255) DEFAULT NULL,
  `guar_country` varchar(255) DEFAULT NULL,
  `guar_zip` smallint(6) DEFAULT NULL,
  `guar_address_type` varchar(255) NOT NULL,
  `guar_tele_code` varchar(255) DEFAULT NULL,
  `guar_equi_code` varchar(255) DEFAULT NULL,
  `guar_phone` varchar(255) DEFAULT NULL,
  `guar_mobile` varchar(255) DEFAULT NULL,
  `guar_email` varchar(255) DEFAULT NULL,
  `guar_country_code` varchar(255) DEFAULT NULL,
  `guar_area_code` varchar(255) DEFAULT NULL,
  `guar_localno` varchar(255) DEFAULT NULL,
  `guar_extension` varchar(255) DEFAULT NULL,
  `guar_text` varchar(255) DEFAULT NULL,
  `guar_tele_code1` varchar(255) DEFAULT NULL,
  `guar_equi_code1` varchar(255) DEFAULT NULL,
  `guar_email1` varchar(255) DEFAULT NULL,
  `guar_text1` varchar(255) DEFAULT NULL,
  `guar_prof_suffix` varchar(255) DEFAULT NULL,
  `guar_contry_code1` varchar(255) DEFAULT NULL,
  `guar_area_code1` varchar(255) DEFAULT NULL,
  `guar_localno1` varchar(255) DEFAULT NULL,
  `guar_extension1` varchar(255) DEFAULT NULL,
  `guar_mobile1` varchar(255) DEFAULT NULL,
  `guar_phone1` varchar(255) DEFAULT NULL,
  `guar_company_name` varchar(255) DEFAULT NULL,
  `guar_parish_code_first` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `high_risk_medications` */

DROP TABLE IF EXISTS `high_risk_medications`;

CREATE TABLE `high_risk_medications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(255) NOT NULL,
  `alternative_medi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hippa_consents` */

DROP TABLE IF EXISTS `hippa_consents`;

CREATE TABLE `hippa_consents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `auth_input` varchar(255) DEFAULT NULL,
  `obtain_input` varchar(255) DEFAULT NULL,
  `assesment_check` tinyint(1) DEFAULT NULL,
  `testing_info_check` tinyint(1) DEFAULT NULL,
  `diagnosis_check` tinyint(1) DEFAULT NULL,
  `edu_info_check` tinyint(1) DEFAULT NULL,
  `psy_eval_check` tinyint(1) DEFAULT NULL,
  `parti_treat_check` tinyint(1) DEFAULT NULL,
  `conti_care_plan_check` tinyint(1) DEFAULT NULL,
  `treat_plan_check` tinyint(1) DEFAULT NULL,
  `prog_treat_check` tinyint(1) DEFAULT NULL,
  `other_check` tinyint(1) DEFAULT NULL,
  `curr_treat_update_check` tinyint(1) DEFAULT NULL,
  `process_input` varchar(255) DEFAULT NULL,
  `revocation_input` varchar(255) DEFAULT NULL,
  `expi_date` datetime DEFAULT NULL,
  `expi_input` varchar(255) NOT NULL,
  `condi_input` varchar(255) NOT NULL,
  `condi_conse` varchar(255) NOT NULL,
  `redisclosure` varchar(255) NOT NULL,
  `redis_client_date` datetime DEFAULT NULL,
  `redisclosure_file` varchar(255) DEFAULT NULL,
  `redis_check` tinyint(1) NOT NULL,
  `staff_witness_date` datetime DEFAULT NULL,
  `client_sign` varchar(255) NOT NULL,
  `parent_sign` varchar(255) NOT NULL,
  `staff_sign` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_0004_patient_classes` */

DROP TABLE IF EXISTS `hl7_0004_patient_classes`;

CREATE TABLE `hl7_0004_patient_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_0190_address_types` */

DROP TABLE IF EXISTS `hl7_0190_address_types`;

CREATE TABLE `hl7_0190_address_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_0201_phvs_telecommunications` */

DROP TABLE IF EXISTS `hl7_0201_phvs_telecommunications`;

CREATE TABLE `hl7_0201_phvs_telecommunications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_0202_telecommunication_equipment_types` */

DROP TABLE IF EXISTS `hl7_0202_telecommunication_equipment_types`;

CREATE TABLE `hl7_0202_telecommunication_equipment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_0322_completionstatuses` */

DROP TABLE IF EXISTS `hl7_0322_completionstatuses`;

CREATE TABLE `hl7_0322_completionstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_value` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_203_identifier_types` */

DROP TABLE IF EXISTS `hl7_203_identifier_types`;

CREATE TABLE `hl7_203_identifier_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_admission_types` */

DROP TABLE IF EXISTS `hl7_admission_types`;

CREATE TABLE `hl7_admission_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_laboratory_coded_observation` */

DROP TABLE IF EXISTS `hl7_laboratory_coded_observation`;

CREATE TABLE `hl7_laboratory_coded_observation` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_messages` */

DROP TABLE IF EXISTS `hl7_messages`;

CREATE TABLE `hl7_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `message_from` varchar(255) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `message_to` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_nip_002` */

DROP TABLE IF EXISTS `hl7_nip_002`;

CREATE TABLE `hl7_nip_002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_nips` */

DROP TABLE IF EXISTS `hl7_nips`;

CREATE TABLE `hl7_nips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_results` */

DROP TABLE IF EXISTS `hl7_results`;

CREATE TABLE `hl7_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_uid` varchar(255) NOT NULL,
  `message` text,
  `create_time` datetime DEFAULT NULL,
  `message_from` varchar(255) DEFAULT NULL,
  `message_to` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_units` */

DROP TABLE IF EXISTS `hl7_units`;

CREATE TABLE `hl7_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `hl7_v3_observation_method` */

DROP TABLE IF EXISTS `hl7_v3_observation_method`;

CREATE TABLE `hl7_v3_observation_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;

/*Table structure for table `hospital_rates` */

DROP TABLE IF EXISTS `hospital_rates`;

CREATE TABLE `hospital_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) DEFAULT NULL,
  `ipd_rate` varchar(255) DEFAULT NULL,
  `opd_rate` varchar(255) DEFAULT NULL,
  `emergency_rate` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `icd10pc_masters` */

DROP TABLE IF EXISTS `icd10pc_masters`;

CREATE TABLE `icd10pc_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ICD10PCS` varchar(255) NOT NULL COMMENT 'ICD 10 PCS',
  `is_valid` int(11) NOT NULL COMMENT '0 if the code is a “header” –not valid for HIPAA-covered transactions .1 if the code is valid for submission for HIPAA-covered transactions.',
  `ICD10PCS_ENHANCED_ABBREVIATED_DESCRIPTION` text NOT NULL COMMENT 'ICD10PCS ENHANCED ABBREVIATED DESCRIPTION',
  `ICD10PCS_FULL_DESCRIPTION` text NOT NULL COMMENT 'ICD10PCS FULL DESCRIPTION',
  `charges` varchar(25) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72994 DEFAULT CHARSET=latin1;

/*Table structure for table `icds` */

DROP TABLE IF EXISTS `icds`;

CREATE TABLE `icds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icd_code` varchar(100) NOT NULL,
  `description` text,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `immunizations` */

DROP TABLE IF EXISTS `immunizations`;

CREATE TABLE `immunizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `cpt_description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1;

/*Table structure for table `immunizations_old_table` */

DROP TABLE IF EXISTS `immunizations_old_table`;

CREATE TABLE `immunizations_old_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `cpt_code` int(11) NOT NULL,
  `cpt_description` varchar(255) NOT NULL,
  `cvx_code` smallint(6) NOT NULL,
  `vaccine_name` varchar(255) NOT NULL,
  `cpt_code_status` varchar(10) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `created_by` int(6) NOT NULL,
  `modified_by` int(6) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `imunizations` */

DROP TABLE IF EXISTS `imunizations`;

CREATE TABLE `imunizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `vaccine_type` varchar(255) DEFAULT NULL,
  `vaccin_single_code` varchar(255) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `route` int(11) DEFAULT NULL,
  `manufacture_name` int(11) DEFAULT NULL,
  `admin_site` int(11) DEFAULT NULL,
  `admin_note` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `phvs_unitofmeasure_id` int(11) DEFAULT NULL,
  `lot_number` varchar(255) DEFAULT NULL,
  `provider` int(11) DEFAULT NULL,
  `reason` text,
  `registry_status` int(11) DEFAULT NULL,
  `time_administered` datetime DEFAULT NULL,
  `publicity_code` int(11) DEFAULT NULL,
  `protection_indicator` char(1) DEFAULT NULL,
  `comments` varchar(255) NOT NULL,
  `indicator_date` date DEFAULT NULL,
  `publicity_date` date DEFAULT NULL,
  `registry_status_date` date DEFAULT NULL,
  `funding_category` text,
  `published_date` text,
  `presented_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `observation_method` varchar(255) DEFAULT NULL,
  `observation_value` int(11) DEFAULT NULL,
  `error_status` varchar(255) DEFAULT NULL,
  `completion_status` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `observation_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inboxes` */

DROP TABLE IF EXISTS `inboxes`;

CREATE TABLE `inboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text,
  `type` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `call_patient` tinyint(1) NOT NULL DEFAULT '0',
  `collect_balance` tinyint(1) NOT NULL DEFAULT '0',
  `create_portal_login` tinyint(1) NOT NULL DEFAULT '0',
  `reference_patient` varchar(255) NOT NULL,
  `due_in_days` varchar(100) NOT NULL,
  `add_to_patient_record` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_patient` tinyint(1) DEFAULT '0',
  `is_ammendment` tinyint(1) NOT NULL DEFAULT '0',
  `ammendment_status` char(4) NOT NULL DEFAULT 'null',
  `reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `incident_types` */

DROP TABLE IF EXISTS `incident_types`;

CREATE TABLE `incident_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `incidents` */

DROP TABLE IF EXISTS `incidents`;

CREATE TABLE `incidents` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `incorporated_patients` */

DROP TABLE IF EXISTS `incorporated_patients`;

CREATE TABLE `incorporated_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `incoming_mail_id` int(11) NOT NULL,
  `xml_file` varchar(255) NOT NULL COMMENT 'from upload/ccda_imported folder',
  `date_imported_on` date NOT NULL,
  `summary_care_date` datetime DEFAULT NULL,
  `summary_provide` tinyint(2) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `fromAddress` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `initials` */

DROP TABLE IF EXISTS `initials`;

CREATE TABLE `initials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `inpatient_visit_types` */

DROP TABLE IF EXISTS `inpatient_visit_types`;

CREATE TABLE `inpatient_visit_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(25) NOT NULL,
  `system` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Table structure for table `instock_laundries` */

DROP TABLE IF EXISTS `instock_laundries`;

CREATE TABLE `instock_laundries` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `insurance_companies` */

DROP TABLE IF EXISTS `insurance_companies`;

CREATE TABLE `insurance_companies` (
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Table structure for table `insurance_types` */

DROP TABLE IF EXISTS `insurance_types`;

CREATE TABLE `insurance_types` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `interpreter_statements` */

DROP TABLE IF EXISTS `interpreter_statements`;

CREATE TABLE `interpreter_statements` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `interventions` */

DROP TABLE IF EXISTS `interventions`;

CREATE TABLE `interventions` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `intervention_name` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `intervention_note` text NOT NULL,
  `intervention_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `intrinsic_risk_factors` */

DROP TABLE IF EXISTS `intrinsic_risk_factors`;

CREATE TABLE `intrinsic_risk_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `antibiotic` varchar(255) DEFAULT NULL,
  `prophylaxis_therapy` varchar(255) DEFAULT NULL,
  `diabetes` varchar(255) DEFAULT NULL,
  `alcoholism` varchar(255) DEFAULT NULL,
  `smoking` varchar(255) DEFAULT NULL,
  `hypertension` varchar(255) DEFAULT NULL,
  `anaemia` varchar(255) DEFAULT NULL,
  `malignancy` varchar(255) DEFAULT NULL,
  `trauma` varchar(255) DEFAULT NULL,
  `cirrhosis` varchar(255) DEFAULT NULL,
  `steroids` varchar(255) DEFAULT NULL,
  `immunosuppression` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_categories` */

DROP TABLE IF EXISTS `inventory_categories`;

CREATE TABLE `inventory_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_laundries` */

DROP TABLE IF EXISTS `inventory_laundries`;

CREATE TABLE `inventory_laundries` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_outwards` */

DROP TABLE IF EXISTS `inventory_outwards`;

CREATE TABLE `inventory_outwards` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key for table',
  `date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_outwards_details` */

DROP TABLE IF EXISTS `inventory_outwards_details`;

CREATE TABLE `inventory_outwards_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key for table',
  `item_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `inventory_outward_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_pharmacy_sales_returns` */

DROP TABLE IF EXISTS `inventory_pharmacy_sales_returns`;

CREATE TABLE `inventory_pharmacy_sales_returns` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) DEFAULT NULL,
  `patient_id` int(20) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_pharmacy_sales_returns_details` */

DROP TABLE IF EXISTS `inventory_pharmacy_sales_returns_details`;

CREATE TABLE `inventory_pharmacy_sales_returns_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(20) DEFAULT NULL,
  `inventory_pharmacy_sales_return_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_purchase_details` */

DROP TABLE IF EXISTS `inventory_purchase_details`;

CREATE TABLE `inventory_purchase_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_purchase_item_details` */

DROP TABLE IF EXISTS `inventory_purchase_item_details`;

CREATE TABLE `inventory_purchase_item_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inventory_purchase_detail_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `free` varchar(255) DEFAULT NULL,
  `mrp` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_purchase_return_items` */

DROP TABLE IF EXISTS `inventory_purchase_return_items`;

CREATE TABLE `inventory_purchase_return_items` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inventory_purchase_return_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `batch_no` varchar(20) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `item_id` int(20) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_purchase_returns` */

DROP TABLE IF EXISTS `inventory_purchase_returns`;

CREATE TABLE `inventory_purchase_returns` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `inventory_purchase_detail_id` int(20) DEFAULT NULL,
  `party_id` int(20) DEFAULT NULL,
  `total_amount` varchar(200) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `inventory_suppliers` */

DROP TABLE IF EXISTS `inventory_suppliers`;

CREATE TABLE `inventory_suppliers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `dl_no` varchar(255) DEFAULT NULL,
  `dl21_no` varchar(200) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=latin1;

/*Table structure for table `lab_test_payments` */

DROP TABLE IF EXISTS `lab_test_payments`;

CREATE TABLE `lab_test_payments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `laboratories` */

DROP TABLE IF EXISTS `laboratories`;

CREATE TABLE `laboratories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `speciality_cat_id` varchar(255) NOT NULL,
  `test_code` varchar(255) DEFAULT NULL,
  `sct_concept_id` varchar(255) DEFAULT NULL,
  `cpt_code` varchar(255) DEFAULT NULL,
  `note` text,
  `category_name` varchar(255) NOT NULL,
  `service_group_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `test_group_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_orderset` tinyint(1) DEFAULT NULL,
  `is_panel` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `lonic_code` varchar(255) NOT NULL,
  `cbt` varchar(255) DEFAULT NULL,
  `COMPONENT` varchar(255) NOT NULL,
  `PROPERTY` varchar(100) NOT NULL,
  `TIME_ASPCT` varchar(50) NOT NULL,
  `SYSTEM` varchar(255) NOT NULL,
  `SCALE_TYP` varchar(50) NOT NULL,
  `METHOD_TYP` varchar(50) NOT NULL,
  `CLASS` varchar(255) NOT NULL,
  `SOURCE` varchar(50) NOT NULL,
  `DATE_LAST_CHANGED` date NOT NULL,
  `CHNG_TYPE` varchar(50) NOT NULL,
  `COMMENTS` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `CONSUMER_NAME` varchar(255) NOT NULL,
  `MOLAR_MASS` varchar(100) NOT NULL,
  `CLASSTYPE` varchar(100) NOT NULL,
  `FORMULA` varchar(100) NOT NULL,
  `SPECIES` varchar(100) NOT NULL,
  `EXMPL_ANSWERS` varchar(100) NOT NULL,
  `ACSSYM` varchar(100) NOT NULL,
  `BASE_NAME` varchar(255) NOT NULL,
  `NAACCR_ID` varchar(100) NOT NULL,
  `CODE_TABLE` varchar(255) NOT NULL,
  `SURVEY_QUEST_TEXT` varchar(255) NOT NULL,
  `SURVEY_QUEST_SRC` varchar(255) NOT NULL,
  `UNITSREQUIRED` varchar(100) NOT NULL,
  `SUBMITTED_UNITS` varchar(100) NOT NULL,
  `RELATEDNAMES2` varchar(255) NOT NULL,
  `SHORTNAME` varchar(100) NOT NULL,
  `ORDER_OBS` varchar(100) NOT NULL,
  `CDISC_COMMON_TESTS` varchar(255) NOT NULL,
  `HL7_FIELD_SUBFIELD_ID` varchar(100) NOT NULL,
  `EXTERNAL_COPYRIGHT_NOTICE` varchar(100) NOT NULL,
  `EXAMPLE_UNITS` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `HL7_V2_DATATYPE` varchar(100) NOT NULL,
  `HL7_V3_DATATYPE` varchar(100) NOT NULL,
  `CURATED_RANGE_AND_UNITS` varchar(100) NOT NULL,
  `DOCUMENT_SECTION` varchar(30) NOT NULL,
  `EXAMPLE_UCUM_UNITS` varchar(30) NOT NULL,
  `EXAMPLE_SI_UCUM_UNITS` varchar(30) NOT NULL,
  `STATUS_REASON` varchar(30) NOT NULL,
  `STATUS_TEXT` varchar(30) NOT NULL,
  `CHANGE_REASON_PUBLIC` varchar(30) NOT NULL,
  `COMMON_TEST_RANK` varchar(30) NOT NULL,
  `COMMON_ORDER_RANK` varchar(30) NOT NULL,
  `COMMON_SI_TEST_RANK` varchar(30) NOT NULL,
  `HL7_ATTACHMENT_STRUCTURE` varchar(30) NOT NULL,
  `external_link` varchar(255) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `by_gender_age` varchar(10) DEFAULT NULL,
  `by_gender_male` varchar(10) DEFAULT NULL,
  `by_gender_female` varchar(10) DEFAULT NULL,
  `by_gender_male_lower_limit` varchar(10) DEFAULT NULL,
  `by_gender_male_upper_limit` varchar(10) DEFAULT NULL,
  `by_gender_female_lower_limit` varchar(10) DEFAULT NULL,
  `by_gender_female_upper_limit` varchar(10) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `by_age_num_less_years` varchar(255) DEFAULT NULL,
  `by_age_num_less_years_lower_limit` varchar(255) DEFAULT NULL,
  `by_age_num_less_years_upper_limit` varchar(255) DEFAULT NULL,
  `by_age_more_years` varchar(255) DEFAULT NULL,
  `by_age_num_more_years` varchar(255) DEFAULT NULL,
  `by_age_num_gret_years_lower_limit` varchar(255) DEFAULT NULL,
  `by_age_num_gret_years_upper_limit` varchar(255) DEFAULT NULL,
  `by_age_between_years` varchar(255) DEFAULT NULL,
  `by_age_between_num_less_years` varchar(255) DEFAULT NULL,
  `by_age_between_num_gret_years` varchar(255) DEFAULT NULL,
  `by_age_between_years_lower_limit` varchar(255) DEFAULT NULL,
  `by_age_between_years_upper_limit` varchar(255) DEFAULT NULL,
  `parameter_text` varchar(255) DEFAULT NULL,
  `by_age_less_years` varchar(255) DEFAULT NULL,
  `notes` varchar(10) DEFAULT NULL,
  `test_method` varchar(255) DEFAULT NULL,
  `common` int(11) DEFAULT NULL,
  `favourite` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72638 DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_categories` */

DROP TABLE IF EXISTS `laboratory_categories`;

CREATE TABLE `laboratory_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `is_active` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_hl7_results` */

DROP TABLE IF EXISTS `laboratory_hl7_results`;

CREATE TABLE `laboratory_hl7_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_result_id` int(11) NOT NULL,
  `laboratory_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `observations` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `range` varchar(255) DEFAULT NULL,
  `abnormal_flag` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_time_of_observation` varchar(255) DEFAULT NULL,
  `notes` text,
  `unit` varchar(255) DEFAULT NULL,
  `sn_value` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `observation_mehtod` varchar(255) DEFAULT NULL,
  `alt_identifier` varchar(255) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `alt_coding_name` varchar(255) DEFAULT NULL,
  `code_system_id` varchar(255) DEFAULT NULL,
  `alt_code_system_id` varchar(255) DEFAULT NULL,
  `original_text` varchar(255) DEFAULT NULL,
  `observation_alt_identifier` varchar(255) DEFAULT NULL,
  `observation_alt_text` varchar(255) DEFAULT NULL,
  `observation_alt_coding_name` varchar(255) DEFAULT NULL,
  `observation_code_system_id` varchar(255) DEFAULT NULL,
  `observation_alt_code_system_id` varchar(255) DEFAULT NULL,
  `observation_original_text` varchar(255) DEFAULT NULL,
  `ucum_alt_identifier` varchar(255) DEFAULT NULL,
  `ucum_alt_text` varchar(255) DEFAULT NULL,
  `ucum_alt_coding_name` varchar(255) DEFAULT NULL,
  `ucum_code_system_id` varchar(255) DEFAULT NULL,
  `ucum_alt_code_system_id` varchar(255) DEFAULT NULL,
  `ucum_original_text` varchar(255) DEFAULT NULL,
  `abnormal_flag_alt_identifier` varchar(255) DEFAULT NULL,
  `abnormal_flag_alt_text` varchar(255) DEFAULT NULL,
  `abnormal_flag_alt_coding_name` varchar(255) DEFAULT NULL,
  `abnormal_flag_code_system_id` varchar(255) DEFAULT NULL,
  `abnormal_flag_alt_code_system_id` varchar(255) DEFAULT NULL,
  `abnormal_flag_original_text` varchar(255) DEFAULT NULL,
  `result_alt_identifier` varchar(255) DEFAULT NULL,
  `result_alt_text` varchar(255) DEFAULT NULL,
  `result_alt_coding_name` varchar(255) DEFAULT NULL,
  `result_code_system_id` varchar(255) DEFAULT NULL,
  `result_alt_code_system_id` varchar(255) DEFAULT NULL,
  `result_original_text` varchar(255) DEFAULT NULL,
  `sn_separator` varchar(255) DEFAULT NULL,
  `sn_result2` varchar(255) DEFAULT NULL,
  `observation_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_manual_entry` */

DROP TABLE IF EXISTS `laboratory_manual_entry`;

CREATE TABLE `laboratory_manual_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `lab_count` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_parameters` */

DROP TABLE IF EXISTS `laboratory_parameters`;

CREATE TABLE `laboratory_parameters` (
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_results` */

DROP TABLE IF EXISTS `laboratory_results`;

CREATE TABLE `laboratory_results` (
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
  `adverse_event` tinyint(4) NOT NULL DEFAULT '0',
  `op_name` varchar(255) DEFAULT NULL,
  `op_middle_name` varchar(255) DEFAULT NULL,
  `op_last_name` varchar(255) DEFAULT NULL,
  `op_name_prefix` varchar(255) DEFAULT NULL,
  `op_name_suffix` varchar(255) DEFAULT NULL,
  `op_name_type` varchar(255) DEFAULT NULL,
  `op_identifier_type_code` varchar(255) DEFAULT NULL,
  `op_proffessional_suffix` varchar(255) DEFAULT NULL,
  `op_identifier_number` varchar(255) DEFAULT NULL,
  `ogi_placer_order_number` varchar(255) DEFAULT NULL,
  `ogi_filler_order_number` varchar(255) DEFAULT NULL,
  `ogi_placer_group_number` varchar(255) DEFAULT NULL,
  `pusi_identifier` varchar(255) DEFAULT NULL,
  `pusi_text` varchar(255) DEFAULT NULL,
  `pusi_alt_identifier` varchar(255) DEFAULT NULL,
  `pusi_alt_text` varchar(255) DEFAULT NULL,
  `pusi_original_text` varchar(255) DEFAULT NULL,
  `od_universal_service_identifier` varchar(255) DEFAULT NULL,
  `od_observation_date_time` varchar(255) DEFAULT NULL,
  `od_observation_start_date_time` varchar(255) DEFAULT NULL,
  `od_observation_end_date_time` varchar(255) DEFAULT NULL,
  `od_specimen_action_code` varchar(255) DEFAULT NULL,
  `od_relevant_clinical_information` varchar(255) DEFAULT NULL,
  `od_alt_relevent_clinical_information` varchar(255) DEFAULT NULL,
  `od_relevent_clinical_information_original_text` varchar(255) DEFAULT NULL,
  `ori_result_status` varchar(255) DEFAULT NULL,
  `ori_result_report_status_date_time` varchar(255) DEFAULT NULL,
  `rct_suffix` varchar(255) DEFAULT NULL,
  `rct_prefix` varchar(255) DEFAULT NULL,
  `rct_name` varchar(255) DEFAULT NULL,
  `rct_middle_name` varchar(255) DEFAULT NULL,
  `rct_last_name` varchar(255) NOT NULL,
  `rct_identifier` varchar(255) DEFAULT NULL,
  `rh_standard` varchar(255) DEFAULT NULL,
  `rh_local` varchar(255) DEFAULT NULL,
  `on_notes_comments` varchar(255) DEFAULT NULL,
  `tqi_start_date_time` varchar(255) DEFAULT NULL,
  `tqi_end_date_time` varchar(255) DEFAULT NULL,
  `rpl_laboratory_name` varchar(255) DEFAULT NULL,
  `rpl_laboratory_legal_name` varchar(255) NOT NULL,
  `rpl_laboratory_identifier_type` varchar(255) NOT NULL,
  `rpl_laboratory_address_type` varchar(255) NOT NULL,
  `rpl_organization_identifier` varchar(255) DEFAULT NULL,
  `rpl_address` varchar(255) DEFAULT NULL,
  `rpl_address_line_2` varchar(255) DEFAULT NULL,
  `rpl_country` varchar(255) NOT NULL,
  `rpl_state` varchar(255) NOT NULL,
  `rpl_city` varchar(255) NOT NULL,
  `rpl_zip` varchar(255) NOT NULL,
  `rpl_director_name` varchar(255) DEFAULT NULL,
  `rpl_director_middle_name` varchar(255) NOT NULL,
  `rpl_director_last_name` varchar(255) NOT NULL,
  `rpl_director_identifier` varchar(255) DEFAULT NULL,
  `si_specimen_type` varchar(255) DEFAULT NULL,
  `si_alt_specimen_type` varchar(255) DEFAULT NULL,
  `si_specimen_original_text` varchar(255) DEFAULT NULL,
  `si_start_date_time` varchar(255) DEFAULT NULL,
  `si_specimen_reject_reason` varchar(255) DEFAULT NULL,
  `si_alt_specimen_reject_reason` varchar(255) DEFAULT NULL,
  `si_reject_reason_original_text` varchar(255) DEFAULT NULL,
  `si_specimen_condition` varchar(255) DEFAULT NULL,
  `si_alt_specimen_condition` varchar(255) DEFAULT NULL,
  `si_condition_original_text` varchar(255) DEFAULT NULL,
  `re_notes_comments` varchar(255) DEFAULT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `rpl_initial` varchar(255) NOT NULL,
  `rpl_legal_name` varchar(255) NOT NULL,
  `rpl_director_edu` varchar(255) NOT NULL,
  `rpl_director_suffix` varchar(255) NOT NULL,
  `rpl_parish_code` varchar(255) NOT NULL,
  `op_tele_code` varchar(255) DEFAULT NULL,
  `op_tele_equip_type` varchar(255) DEFAULT NULL,
  `op_email_address` varchar(255) DEFAULT NULL,
  `op_country_code` varchar(255) DEFAULT NULL,
  `op_city_code` varchar(255) DEFAULT NULL,
  `op_local_number` varchar(255) DEFAULT NULL,
  `op_extension` varchar(255) DEFAULT NULL,
  `op_any_text` varchar(255) DEFAULT NULL,
  `op_tele_code_second` varchar(255) DEFAULT NULL,
  `op_tele_equip_type_second` varchar(255) DEFAULT NULL,
  `op_email_address_second` varchar(255) DEFAULT NULL,
  `op_country_code_second` varchar(255) DEFAULT NULL,
  `op_city_code_second` varchar(255) DEFAULT NULL,
  `op_local_number_second` varchar(255) DEFAULT NULL,
  `op_extension_second` varchar(255) DEFAULT NULL,
  `op_any_text_second` varchar(255) DEFAULT NULL,
  `op_tele_code_order_provider` varchar(255) DEFAULT NULL,
  `op_tele_equip_type_order_provider` varchar(255) DEFAULT NULL,
  `op_email_address_order_provider` varchar(255) DEFAULT NULL,
  `op_country_code_order_provider` varchar(255) DEFAULT NULL,
  `op_city_code_order_provider` varchar(255) DEFAULT NULL,
  `op_local_number_order_provider` varchar(255) DEFAULT NULL,
  `op_extension_order_provider` varchar(255) DEFAULT NULL,
  `op_any_text_order_provider` varchar(255) DEFAULT NULL,
  `rpl_order_provider_address` text,
  `rpl_order_provider_address_line_2` text,
  `rpl_order_provider_country` varchar(255) DEFAULT NULL,
  `rpl_order_provider_state` varchar(255) DEFAULT NULL,
  `rpl_order_provider_city` varchar(255) DEFAULT NULL,
  `rpl_order_provider_zip` varchar(255) DEFAULT NULL,
  `rpl_order_provider_address_type` varchar(255) DEFAULT NULL,
  `rpl_order_provider_parish_code` varchar(255) DEFAULT NULL,
  `reason_for_study_identifier` varchar(255) DEFAULT NULL,
  `reason_for_study_text` varchar(255) DEFAULT NULL,
  `reason_for_study_coding_system` varchar(255) DEFAULT NULL,
  `reason_for_study_alt_identifier` varchar(255) DEFAULT NULL,
  `reason_for_study_alt_text` varchar(255) DEFAULT NULL,
  `reason_for_study_alt_coding_system` varchar(255) DEFAULT NULL,
  `reason_for_study_coding_system_id` varchar(255) DEFAULT NULL,
  `reason_for_study_alt_coding_system_id` varchar(255) DEFAULT NULL,
  `principal_id` varchar(255) DEFAULT NULL,
  `principal_last_name` varchar(255) DEFAULT NULL,
  `principal_first_name` varchar(255) DEFAULT NULL,
  `principal_middle_name` varchar(255) DEFAULT NULL,
  `principal_suffix` varchar(255) DEFAULT NULL,
  `principal_prefix` varchar(255) DEFAULT NULL,
  `principal_edu` varchar(255) DEFAULT NULL,
  `si_entity_identifier` varchar(255) DEFAULT NULL,
  `si_specimen_type_modifier` varchar(255) DEFAULT NULL,
  `si_specimen_type_activities` varchar(255) DEFAULT NULL,
  `si_specimen_col_method` varchar(255) DEFAULT NULL,
  `si_specimen_source` varchar(255) DEFAULT NULL,
  `si_specimen_source_modifier` varchar(255) DEFAULT NULL,
  `si_specimen_role` varchar(255) DEFAULT NULL,
  `si_specimen_col_quantity` varchar(255) DEFAULT NULL,
  `si_specimen_col_amount` varchar(255) DEFAULT NULL,
  `ehr_facility` varchar(255) DEFAULT NULL,
  `send_result_to_facility` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `patient_class` varchar(255) DEFAULT NULL,
  `admission_type` varchar(255) DEFAULT NULL,
  `admit_date_time` varchar(255) DEFAULT NULL,
  `discharge_date_time` varchar(255) DEFAULT NULL,
  `si_end_date_time` varchar(255) DEFAULT NULL,
  `si_received_date_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_test_orders` */

DROP TABLE IF EXISTS `laboratory_test_orders`;

CREATE TABLE `laboratory_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) DEFAULT NULL,
  `order_id` varchar(50) NOT NULL,
  `start_date` date DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `is_external` varchar(10) DEFAULT NULL,
  `service_provider_id` int(11) DEFAULT '0',
  `from_assessment` tinyint(3) NOT NULL DEFAULT '0' COMMENT '"0" for entries from main interface and "1" from initial assessment form',
  `batch_identifier` varchar(255) NOT NULL,
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `lab_order` int(25) DEFAULT NULL,
  `lab_order_date` date DEFAULT NULL,
  `labDash_status` varchar(255) DEFAULT 'Pending',
  `labDash_date` datetime DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `laboratory_tokens` */

DROP TABLE IF EXISTS `laboratory_tokens`;

CREATE TABLE `laboratory_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `laboratory_test_order_id` int(11) NOT NULL,
  `laboratory_id` varchar(255) NOT NULL,
  `specimen_type_id` varchar(255) NOT NULL,
  `ac_id` varchar(255) NOT NULL,
  `collected_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL,
  `bill_type` varchar(255) DEFAULT NULL,
  `specimen_rejection_id` varchar(255) NOT NULL,
  `specimen_action_id` varchar(255) NOT NULL,
  `alt_spec` text NOT NULL,
  `alt_spec_cond` text NOT NULL,
  `rej_reason_txt` text NOT NULL,
  `collection_priority` varchar(255) DEFAULT NULL,
  `frequency_l` varchar(255) DEFAULT NULL,
  `duration_l` varchar(255) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT NULL,
  `nurse_collect` varchar(255) DEFAULT NULL,
  `special_instruction` varchar(255) DEFAULT NULL,
  `specimen_condition_id` varchar(255) NOT NULL,
  `cond_org_txt` text NOT NULL,
  `account_no` bigint(20) DEFAULT NULL,
  `created_by` int(2) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(2) NOT NULL,
  `modify_time` datetime NOT NULL,
  `sp_id` int(11) NOT NULL,
  `sct_concept_id` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `patient_order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=latin1;

/*Table structure for table `languages_8june` */

DROP TABLE IF EXISTS `languages_8june`;

CREATE TABLE `languages_8june` (
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

/*Table structure for table `laundry_items` */

DROP TABLE IF EXISTS `laundry_items`;

CREATE TABLE `laundry_items` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `laundry_managers` */

DROP TABLE IF EXISTS `laundry_managers`;

CREATE TABLE `laundry_managers` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `lmp_records` */

DROP TABLE IF EXISTS `lmp_records`;

CREATE TABLE `lmp_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `lmp` varchar(33) DEFAULT NULL,
  `menarche` varchar(33) DEFAULT NULL,
  `regular` varchar(33) DEFAULT NULL,
  `pregnancies` int(11) DEFAULT NULL,
  `tbirths` int(11) DEFAULT NULL,
  `pbirths` int(11) DEFAULT NULL,
  `miscarriage` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `total` varchar(44) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `locations` */

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `company_id` int(11) DEFAULT NULL,
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
  `checkout_time_option` int(11) DEFAULT NULL,
  `checkout_time` varchar(50) NOT NULL,
  `billing_footer_name` varchar(255) DEFAULT NULL,
  `hospital_service_tax_no` varchar(255) DEFAULT NULL,
  `hospital_pan_no` varchar(255) DEFAULT NULL,
  `hospital_npi` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `loinc_ln_hl7` */

DROP TABLE IF EXISTS `loinc_ln_hl7`;

CREATE TABLE `loinc_ln_hl7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` text,
  `alternate_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=latin1;

/*Table structure for table `loinc_maps` */

DROP TABLE IF EXISTS `loinc_maps`;

CREATE TABLE `loinc_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LOINC` varchar(255) NOT NULL,
  `MAP_TO` varchar(255) NOT NULL,
  `COMMENT` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2450 DEFAULT CHARSET=latin1;

/*Table structure for table `loinc_masters` */

DROP TABLE IF EXISTS `loinc_masters`;

CREATE TABLE `loinc_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LOINC_NUM` varchar(255) NOT NULL,
  `COMPONENT` varchar(255) NOT NULL,
  `PROPERTY` varchar(100) NOT NULL,
  `TIME_ASPCT` varchar(50) NOT NULL,
  `SYSTEM` varchar(255) NOT NULL,
  `SCALE_TYP` varchar(50) NOT NULL,
  `METHOD_TYP` varchar(50) NOT NULL,
  `CLASS` varchar(255) NOT NULL,
  `SOURCE` varchar(50) NOT NULL,
  `DATE_LAST_CHANGED` date NOT NULL,
  `CHNG_TYPE` varchar(50) NOT NULL,
  `COMMENTS` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `CONSUMER_NAME` varchar(255) NOT NULL,
  `MOLAR_MASS` varchar(100) NOT NULL,
  `CLASSTYPE` varchar(100) NOT NULL,
  `FORMULA` varchar(100) NOT NULL,
  `SPECIES` varchar(100) NOT NULL,
  `EXMPL_ANSWERS` varchar(100) NOT NULL,
  `ACSSYM` varchar(100) NOT NULL,
  `BASE_NAME` varchar(255) NOT NULL,
  `NAACCR_ID` varchar(100) NOT NULL,
  `CODE_TABLE` varchar(255) NOT NULL,
  `SURVEY_QUEST_TEXT` varchar(255) NOT NULL,
  `SURVEY_QUEST_SRC` varchar(255) NOT NULL,
  `UNITSREQUIRED` varchar(100) NOT NULL,
  `SUBMITTED_UNITS` varchar(100) NOT NULL,
  `RELATEDNAMES2` varchar(255) NOT NULL,
  `SHORTNAME` varchar(100) NOT NULL,
  `ORDER_OBS` varchar(100) NOT NULL,
  `CDISC_COMMON_TESTS` varchar(255) NOT NULL,
  `HL7_FIELD_SUBFIELD_ID` varchar(100) NOT NULL,
  `EXTERNAL_COPYRIGHT_NOTICE` varchar(100) NOT NULL,
  `EXAMPLE_UNITS` varchar(100) NOT NULL,
  `LONG_COMMON_NAME` varchar(100) NOT NULL,
  `HL7_V2_DATATYPE` varchar(100) NOT NULL,
  `HL7_V3_DATATYPE` varchar(100) NOT NULL,
  `CURATED_RANGE_AND_UNITS` varchar(100) NOT NULL,
  `DOCUMENT_SECTION` varchar(30) NOT NULL,
  `EXAMPLE_UCUM_UNITS` varchar(30) NOT NULL,
  `EXAMPLE_SI_UCUM_UNITS` varchar(30) NOT NULL,
  `STATUS_REASON` varchar(30) NOT NULL,
  `STATUS_TEXT` varchar(30) NOT NULL,
  `CHANGE_REASON_PUBLIC` varchar(30) NOT NULL,
  `COMMON_TEST_RANK` varchar(30) NOT NULL,
  `COMMON_ORDER_RANK` varchar(30) NOT NULL,
  `COMMON_SI_TEST_RANK` varchar(30) NOT NULL,
  `HL7_ATTACHMENT_STRUCTURE` varchar(30) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72626 DEFAULT CHARSET=latin1;

/*Table structure for table `medical_items` */

DROP TABLE IF EXISTS `medical_items`;

CREATE TABLE `medical_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot_item_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pharmacy_item_id` int(11) DEFAULT NULL,
  `description` text,
  `in_stock` double DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `medical_rep_antibiotics` */

DROP TABLE IF EXISTS `medical_rep_antibiotics`;

CREATE TABLE `medical_rep_antibiotics` (
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

/*Table structure for table `medical_rep_injectables` */

DROP TABLE IF EXISTS `medical_rep_injectables`;

CREATE TABLE `medical_rep_injectables` (
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

/*Table structure for table `medical_rep_surgical_items` */

DROP TABLE IF EXISTS `medical_rep_surgical_items`;

CREATE TABLE `medical_rep_surgical_items` (
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

/*Table structure for table `medical_rep_sutures` */

DROP TABLE IF EXISTS `medical_rep_sutures`;

CREATE TABLE `medical_rep_sutures` (
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

/*Table structure for table `medical_requisition_details` */

DROP TABLE IF EXISTS `medical_requisition_details`;

CREATE TABLE `medical_requisition_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `medical_requisitions` */

DROP TABLE IF EXISTS `medical_requisitions`;

CREATE TABLE `medical_requisitions` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `medication_administering_records` */

DROP TABLE IF EXISTS `medication_administering_records`;

CREATE TABLE `medication_administering_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `new_crop_prescription_id` int(11) NOT NULL,
  `is_signed` tinyint(1) NOT NULL DEFAULT '0',
  `performed_datetime` datetime NOT NULL,
  `performed_by` int(11) NOT NULL,
  `pain_intensity` int(5) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `diluent` varchar(255) DEFAULT NULL,
  `diluent_volume` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `bag_no` int(11) DEFAULT NULL,
  `infused_time` varchar(255) DEFAULT NULL,
  `inf_time_unit` varchar(255) DEFAULT NULL,
  `not_given` tinyint(1) NOT NULL DEFAULT '0',
  `not_given_reason` varchar(255) DEFAULT NULL,
  `comment` text,
  `late_reason_flag` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `admin_note_flag` tinyint(1) DEFAULT '0',
  `med_request_flag` tinyint(1) DEFAULT '0',
  `inf_volume_hourly` varchar(25) DEFAULT NULL,
  `scheduled_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `medication_master` */

DROP TABLE IF EXISTS `medication_master`;

CREATE TABLE `medication_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `rxnorm` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `micro_organisms` */

DROP TABLE IF EXISTS `micro_organisms`;

CREATE TABLE `micro_organisms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `mrsa` varchar(255) NOT NULL,
  `vre` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `multiple_order_containts` */

DROP TABLE IF EXISTS `multiple_order_containts`;

CREATE TABLE `multiple_order_containts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `order_data_master_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sentence` varchar(255) DEFAULT NULL,
  `overrideInstruction` varchar(255) DEFAULT NULL,
  `is_orverride` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `order_category_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `isMultiple` varchar(255) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `mapping_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `stop_date` datetime DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `duration_unit` varchar(100) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `special_instruction` varchar(255) DEFAULT NULL,
  `prn` varchar(255) DEFAULT NULL,
  `constant_order` varchar(255) DEFAULT NULL,
  `temprature` varchar(255) DEFAULT NULL,
  `heart_rate` varchar(255) DEFAULT NULL,
  `bp` varchar(255) DEFAULT NULL,
  `respiratory` varchar(255) DEFAULT NULL,
  `npo` varchar(255) DEFAULT NULL,
  `oxygen_therapy` varchar(255) DEFAULT NULL,
  `admit_status` varchar(255) DEFAULT NULL,
  `admitto` varchar(255) DEFAULT NULL,
  `resuscitation_status` varchar(255) DEFAULT NULL,
  `urinary_catherer_insertion` varchar(255) DEFAULT NULL,
  `chktn` tinyint(2) DEFAULT NULL,
  `patient_order_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `name_types` */

DROP TABLE IF EXISTS `name_types`;

CREATE TABLE `name_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` char(2) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `ndc_masters` */

DROP TABLE IF EXISTS `ndc_masters`;

CREATE TABLE `ndc_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDC` varchar(255) NOT NULL,
  `LBLRID` varchar(255) NOT NULL,
  `MFG` varchar(255) NOT NULL,
  `BN` varchar(255) NOT NULL,
  `LN` varchar(255) NOT NULL,
  `LN60` varchar(255) NOT NULL,
  `MEDID` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131072 DEFAULT CHARSET=latin1;

/*Table structure for table `new_crop_allergies` */

DROP TABLE IF EXISTS `new_crop_allergies`;

CREATE TABLE `new_crop_allergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `allergies_id` int(11) DEFAULT NULL,
  `rxnorm` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `patient_uniqueid` int(11) NOT NULL,
  `allergycheck` tinyint(1) NOT NULL,
  `CompositeAllergyID` varchar(255) DEFAULT NULL,
  `AllergySourceID` varchar(255) DEFAULT NULL,
  `AllergyConceptId` varchar(255) DEFAULT NULL,
  `ConceptType` varchar(255) DEFAULT NULL,
  `AllergySeverityTypeId` varchar(255) DEFAULT NULL,
  `AllergySeverityName` varchar(255) DEFAULT NULL,
  `note` varchar(255) NOT NULL,
  `ConceptID` varchar(255) DEFAULT NULL,
  `ConceptTypeId` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `is_date_flag` int(11) NOT NULL DEFAULT '0',
  `end_date` date DEFAULT NULL,
  `reaction` varchar(255) DEFAULT NULL,
  `reaction_type` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `is_ccda` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `is_reconcile` int(11) NOT NULL DEFAULT '0',
  `is_discharge_allergy` int(11) NOT NULL DEFAULT '0',
  `onset_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `new_crop_prescription` */

DROP TABLE IF EXISTS `new_crop_prescription`;

CREATE TABLE `new_crop_prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `psychology_history_id` int(11) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `drug_name` varchar(255) NOT NULL,
  `qrcode_image` varchar(255) DEFAULT NULL,
  `adverse_event` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `date_of_prescription` varchar(255) DEFAULT NULL,
  `drm_date` date DEFAULT NULL,
  `is_date_flag` char(1) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `patient_uniqueid` int(11) DEFAULT '0' COMMENT 'Unique patient id used for encounters',
  `review_sub_category_id` int(11) DEFAULT NULL,
  `uncheck` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `rxnorm` varchar(255) DEFAULT NULL,
  `archive` varchar(20) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `is_ccda` tinyint(1) NOT NULL DEFAULT '0',
  `is_orderset` tinyint(1) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `is_discharge_medication` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Used for discharge medication',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `is_reconcile` int(11) NOT NULL DEFAULT '0',
  `medication_order` int(11) DEFAULT NULL,
  `medication_order_date` datetime DEFAULT NULL,
  `date_of_prescription_1` datetime DEFAULT NULL,
  `no_of_prescription_not_controlled` varchar(255) DEFAULT NULL,
  `no_of_transmitted_prescription_not_controlled` varchar(255) DEFAULT NULL,
  `no_of_prescription_controlled` varchar(255) DEFAULT NULL,
  `no_of_transmitted_prescription_controlled` varchar(255) DEFAULT NULL,
  `dose_unit` varchar(255) DEFAULT NULL,
  `prescription_queried_for_drug_formulary` varchar(255) DEFAULT NULL,
  `prn` int(11) DEFAULT NULL,
  `daw` int(11) DEFAULT NULL,
  `firstdose` datetime DEFAULT NULL,
  `stopdose` datetime DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `refills` int(2) DEFAULT NULL,
  `strength` varchar(100) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `special_instruction` text,
  `patient_order_id` int(11) DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `medication_administering_time` datetime DEFAULT NULL,
  `is_assessment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `new_insurances` */

DROP TABLE IF EXISTS `new_insurances`;

CREATE TABLE `new_insurances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_uid` varchar(255) DEFAULT NULL,
  `tariff_standard_id` varchar(255) DEFAULT NULL,
  `insurance_company_id` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `insurance_number` varchar(255) DEFAULT NULL,
  `group_number` varchar(255) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `copay_type` int(11) DEFAULT NULL,
  `fixed_amt` int(11) DEFAULT NULL,
  `fixed_percentage` int(11) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `upload_card` varchar(255) DEFAULT NULL,
  `claim_officer` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `subscriber_name` varchar(255) DEFAULT NULL,
  `subscriber_initial` varchar(255) DEFAULT NULL,
  `subscriber_last_name` varchar(255) DEFAULT NULL,
  `subscriber_dob` datetime DEFAULT NULL,
  `subscriber_gender` varchar(255) DEFAULT NULL,
  `subscriber_security` varchar(255) DEFAULT NULL,
  `subscriber_address1` varchar(255) DEFAULT NULL,
  `subscriber_address2` varchar(255) DEFAULT NULL,
  `subscriber_country` varchar(255) DEFAULT NULL,
  `subscriber_city` varchar(255) DEFAULT NULL,
  `subscriber_state` varchar(255) DEFAULT NULL,
  `subscriber_zip` varchar(255) DEFAULT NULL,
  `subscriber_primary_phone` int(11) DEFAULT NULL,
  `subscriber_secondary_phone` int(11) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `patient_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nosocomial_infections` */

DROP TABLE IF EXISTS `nosocomial_infections`;

CREATE TABLE `nosocomial_infections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `surgical_site_infection` varchar(255) DEFAULT NULL,
  `urinary_tract_infection` varchar(255) DEFAULT NULL,
  `ventilator_associated_pneumonia` varchar(255) DEFAULT NULL,
  `clabsi` varchar(255) DEFAULT NULL,
  `thrombophlebitis` varchar(255) DEFAULT NULL,
  `other_nosocomial_infection` varchar(255) DEFAULT NULL,
  `mrsa` varchar(255) DEFAULT NULL,
  `vre` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `note_diagnosis` */

DROP TABLE IF EXISTS `note_diagnosis`;

CREATE TABLE `note_diagnosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `icd_id` varchar(255) NOT NULL,
  `diagnoses_name` varchar(255) NOT NULL,
  `snowmedid` varchar(255) DEFAULT NULL,
  `preffered_icd9cm` varchar(255) DEFAULT NULL,
  `start_dt` date DEFAULT NULL,
  `end_dt` date DEFAULT NULL,
  `disease_status` enum('chronic','terminal','resolved') DEFAULT NULL,
  `comment` text,
  `prev_comment` text,
  `status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `is_ccda` int(11) NOT NULL DEFAULT '0' COMMENT '0 for non ccda data',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `is_reconcile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `note_template_texts` */

DROP TABLE IF EXISTS `note_template_texts`;

CREATE TABLE `note_template_texts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `note_templates` */

DROP TABLE IF EXISTS `note_templates`;

CREATE TABLE `note_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `template_name` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
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
  `temp` varchar(20) DEFAULT NULL,
  `pr` varchar(20) DEFAULT NULL,
  `rr` varchar(20) DEFAULT NULL,
  `bp` varchar(255) DEFAULT NULL,
  `vital_date` date DEFAULT NULL,
  `spo2` varchar(20) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `subject` text,
  `object` text,
  `assis` text,
  `icd` text,
  `icd_record` char(1) DEFAULT NULL,
  `notediagnosis_id` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `visitid` text,
  `ht` double(11,2) DEFAULT NULL,
  `wt` double(11,2) DEFAULT NULL,
  `bmi` double(11,2) DEFAULT NULL,
  `is_event` tinyint(4) DEFAULT NULL,
  `event_discharge` text,
  `finalization_date` date DEFAULT NULL,
  `final` text,
  `sb_registrar` int(11) DEFAULT NULL COMMENT 'seen by registrar(doctors id)',
  `sb_consultant` int(11) DEFAULT NULL COMMENT 'seen by consultatnt(consultant id)',
  `visit_type` int(25) DEFAULT NULL,
  `atrial_documented` varchar(255) NOT NULL,
  `icd9cm_inter` varchar(255) NOT NULL,
  `intervention_text` varchar(255) NOT NULL,
  `icd9cm_risk` varchar(255) NOT NULL,
  `icd9cm_procedure` varchar(255) DEFAULT NULL,
  `decision_aids` varchar(255) NOT NULL,
  `is_documentation` varchar(255) NOT NULL,
  `patient_character_snomed` varchar(255) NOT NULL,
  `patient_char_date` date DEFAULT NULL,
  `medication_order` int(25) DEFAULT NULL,
  `medication_order_date` date DEFAULT NULL,
  `procedure_name` varchar(255) NOT NULL,
  `procedure_text_area` varchar(255) NOT NULL,
  `device_selected` varchar(255) NOT NULL,
  `device_text_area` varchar(255) NOT NULL,
  `note_date` datetime DEFAULT NULL,
  `sign_note` tinyint(4) NOT NULL DEFAULT '0',
  `cog_name` varchar(255) DEFAULT NULL,
  `cog_snomed_code` varchar(255) DEFAULT NULL,
  `cog_date` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `notes_bk` */

DROP TABLE IF EXISTS `notes_bk`;

CREATE TABLE `notes_bk` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nursings` */

DROP TABLE IF EXISTS `nursings`;

CREATE TABLE `nursings` (
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

/*Table structure for table `observation_charts` */

DROP TABLE IF EXISTS `observation_charts`;

CREATE TABLE `observation_charts` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `observation_identifiers` */

DROP TABLE IF EXISTS `observation_identifiers`;

CREATE TABLE `observation_identifiers` (
  `id` int(11) NOT NULL,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `observation_interpretation_0078` */

DROP TABLE IF EXISTS `observation_interpretation_0078`;

CREATE TABLE `observation_interpretation_0078` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Table structure for table `observation_result_status_0085` */

DROP TABLE IF EXISTS `observation_result_status_0085`;

CREATE TABLE `observation_result_status_0085` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `opt_appointments` */

DROP TABLE IF EXISTS `opt_appointments`;

CREATE TABLE `opt_appointments` (
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
  `surgen_service_group_id` int(20) DEFAULT NULL,
  `surgen_tariff_list_id` int(20) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `opt_tables` */

DROP TABLE IF EXISTS `opt_tables`;

CREATE TABLE `opt_tables` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `opts` */

DROP TABLE IF EXISTS `opts`;

CREATE TABLE `opts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `order_categories` */

DROP TABLE IF EXISTS `order_categories`;

CREATE TABLE `order_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_description` varchar(255) DEFAULT NULL,
  `order_alias` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  `common` tinyint(1) DEFAULT '0',
  `favourite` tinyint(1) DEFAULT '0',
  `home` tinyint(1) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `folder_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Table structure for table `order_categories_25feb` */

DROP TABLE IF EXISTS `order_categories_25feb`;

CREATE TABLE `order_categories_25feb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Table structure for table `order_data_masters` */

DROP TABLE IF EXISTS `order_data_masters`;

CREATE TABLE `order_data_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modelname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `location_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Table structure for table `order_sentences` */

DROP TABLE IF EXISTS `order_sentences`;

CREATE TABLE `order_sentences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `code` text,
  `sentence` text,
  `review_id` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `order_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=792 DEFAULT CHARSET=latin1;

/*Table structure for table `order_set_ekgs` */

DROP TABLE IF EXISTS `order_set_ekgs`;

CREATE TABLE `order_set_ekgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `order_set_labs` */

DROP TABLE IF EXISTS `order_set_labs`;

CREATE TABLE `order_set_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `loinc_code` varchar(100) NOT NULL,
  `cpt_code` varchar(100) NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `order_set_meds` */

DROP TABLE IF EXISTS `order_set_meds`;

CREATE TABLE `order_set_meds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rxnorm_code` varchar(100) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `frequency` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `speciality_cat_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `order_set_rads` */

DROP TABLE IF EXISTS `order_set_rads`;

CREATE TABLE `order_set_rads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `loinc_code` varchar(100) NOT NULL,
  `cpt_code` varchar(100) NOT NULL,
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `speciality_cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `order_subcategories` */

DROP TABLE IF EXISTS `order_subcategories`;

CREATE TABLE `order_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_sentence` varchar(255) DEFAULT NULL,
  `staus` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `location_id` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Table structure for table `orderset_category_mappings` */

DROP TABLE IF EXISTS `orderset_category_mappings`;

CREATE TABLE `orderset_category_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderset_master_id` int(11) NOT NULL,
  `order_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Table structure for table `orderset_masters` */

DROP TABLE IF EXISTS `orderset_masters`;

CREATE TABLE `orderset_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `orderset_subcategory_mappings` */

DROP TABLE IF EXISTS `orderset_subcategory_mappings`;

CREATE TABLE `orderset_subcategory_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderset_master_id` int(11) NOT NULL,
  `order_subcategory_id` int(11) NOT NULL,
  `order_category_mapping_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `ot_item_allocation_details` */

DROP TABLE IF EXISTS `ot_item_allocation_details`;

CREATE TABLE `ot_item_allocation_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot_item_allocation_id` int(11) NOT NULL,
  `ot_item_id` int(11) NOT NULL,
  `request_ot_item` int(11) NOT NULL,
  `remark` text,
  `allocate_ot_item` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ot_item_allocations` */

DROP TABLE IF EXISTS `ot_item_allocations`;

CREATE TABLE `ot_item_allocations` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ot_item_categories` */

DROP TABLE IF EXISTS `ot_item_categories`;

CREATE TABLE `ot_item_categories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `ot_item_quantities` */

DROP TABLE IF EXISTS `ot_item_quantities`;

CREATE TABLE `ot_item_quantities` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ot_items` */

DROP TABLE IF EXISTS `ot_items`;

CREATE TABLE `ot_items` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ot_replace_details` */

DROP TABLE IF EXISTS `ot_replace_details`;

CREATE TABLE `ot_replace_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ot_replaces` */

DROP TABLE IF EXISTS `ot_replaces`;

CREATE TABLE `ot_replaces` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `other_services` */

DROP TABLE IF EXISTS `other_services`;

CREATE TABLE `other_services` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `outboxes` */

DROP TABLE IF EXISTS `outboxes`;

CREATE TABLE `outboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text,
  `type` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `call_patient` tinyint(1) NOT NULL DEFAULT '0',
  `collect_balance` tinyint(1) NOT NULL DEFAULT '0',
  `create_portal_login` tinyint(1) NOT NULL DEFAULT '0',
  `reference_patient` varchar(255) NOT NULL,
  `due_in_days` varchar(100) NOT NULL,
  `add_to_patient_record` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_patient` tinyint(1) DEFAULT '0',
  `is_ammendment` tinyint(1) NOT NULL DEFAULT '0',
  `ammendment_status` char(4) NOT NULL DEFAULT 'null',
  `reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `outside_lab_orders` */

DROP TABLE IF EXISTS `outside_lab_orders`;

CREATE TABLE `outside_lab_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) DEFAULT NULL,
  `address` tinytext,
  `facility_name` varchar(255) DEFAULT NULL,
  `laboratory_id` int(11) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `confirm_result` tinyint(4) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `date_of_requisition` date DEFAULT NULL,
  `no_of_orders` smallint(6) DEFAULT NULL,
  `received_from` varchar(255) DEFAULT NULL,
  `clinical_lab_result` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `package_permissions` */

DROP TABLE IF EXISTS `package_permissions`;

CREATE TABLE `package_permissions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(200) DEFAULT NULL,
  `module_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Table structure for table `panel_mappings` */

DROP TABLE IF EXISTS `panel_mappings`;

CREATE TABLE `panel_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laboratory_id` int(11) NOT NULL,
  `underpanellab_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `past_medical_histories` */

DROP TABLE IF EXISTS `past_medical_histories`;

CREATE TABLE `past_medical_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `illness` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `past_medical_records` */

DROP TABLE IF EXISTS `past_medical_records`;

CREATE TABLE `past_medical_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `age_menses` int(11) DEFAULT NULL,
  `length_period` int(11) DEFAULT NULL,
  `days_betwn_period` int(11) DEFAULT NULL,
  `recent_change_period` varchar(255) DEFAULT NULL,
  `age_menopause` int(11) DEFAULT NULL,
  `present_symptom` varchar(10) DEFAULT NULL,
  `past_infection` varchar(10) DEFAULT NULL,
  `hx_abnormal_pap` varchar(10) DEFAULT NULL,
  `hx_cervical_bx` varchar(10) DEFAULT NULL,
  `hx_fertility_drug` varchar(10) DEFAULT NULL,
  `hx_hrt_use` varchar(10) DEFAULT NULL,
  `hx_irregular_menses` varchar(10) DEFAULT NULL,
  `lmp` datetime DEFAULT NULL,
  `symptom_lmp` varchar(10) DEFAULT NULL,
  `sexually_active` varchar(10) DEFAULT NULL,
  `birth_controll` varchar(10) DEFAULT NULL,
  `breast_self_exam` varchar(10) DEFAULT NULL,
  `new_partner` varchar(10) DEFAULT NULL,
  `partner_notification` varchar(10) DEFAULT NULL,
  `hiv_education` varchar(10) DEFAULT NULL,
  `pap_education` varchar(10) DEFAULT NULL,
  `gyn_referral` varchar(10) DEFAULT NULL,
  `abortions_miscarriage` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `preventive_care` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `past_medical_records_28jan` */

DROP TABLE IF EXISTS `past_medical_records_28jan`;

CREATE TABLE `past_medical_records_28jan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `illness` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_allergies` */

DROP TABLE IF EXISTS `patient_allergies`;

CREATE TABLE `patient_allergies` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_blood_sugar_monitoring` */

DROP TABLE IF EXISTS `patient_blood_sugar_monitoring`;

CREATE TABLE `patient_blood_sugar_monitoring` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `blood_sugar` varchar(200) DEFAULT NULL,
  `treatment` text,
  `created_by` int(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_blood_transfusion_form` */

DROP TABLE IF EXISTS `patient_blood_transfusion_form`;

CREATE TABLE `patient_blood_transfusion_form` (
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

/*Table structure for table `patient_centric_departments` */

DROP TABLE IF EXISTS `patient_centric_departments`;

CREATE TABLE `patient_centric_departments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Table structure for table `patient_characters` */

DROP TABLE IF EXISTS `patient_characters`;

CREATE TABLE `patient_characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lonic_code` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `character_name` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  `modify_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_data_forms` */

DROP TABLE IF EXISTS `patient_data_forms`;

CREATE TABLE `patient_data_forms` (
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

/*Table structure for table `patient_document_types` */

DROP TABLE IF EXISTS `patient_document_types`;

CREATE TABLE `patient_document_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Table structure for table `patient_documents` */

DROP TABLE IF EXISTS `patient_documents`;

CREATE TABLE `patient_documents` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `filename` text,
  `file` longblob,
  `link` text,
  `type` varchar(200) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `document_description` text,
  `document_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `patient_id` int(20) DEFAULT NULL,
  `sb_registrar` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `sign_document` tinyint(1) DEFAULT '0',
  `location_id` int(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_exposures` */

DROP TABLE IF EXISTS `patient_exposures`;

CREATE TABLE `patient_exposures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `surgical_procedure` varchar(255) DEFAULT NULL,
  `urinary_catheter` varchar(255) DEFAULT NULL,
  `mechanical_ventilation` varchar(255) DEFAULT NULL,
  `central_line` varchar(255) DEFAULT NULL,
  `peripheral_line` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_family_histories` */

DROP TABLE IF EXISTS `patient_family_histories`;

CREATE TABLE `patient_family_histories` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_forms` */

DROP TABLE IF EXISTS `patient_forms`;

CREATE TABLE `patient_forms` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` smallint(6) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_ivfs` */

DROP TABLE IF EXISTS `patient_ivfs`;

CREATE TABLE `patient_ivfs` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `intake_detail` text,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_orders` */

DROP TABLE IF EXISTS `patient_orders`;

CREATE TABLE `patient_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sentence` varchar(255) DEFAULT NULL,
  `overrideInstruction` varchar(255) DEFAULT NULL,
  `is_orverride` int(11) DEFAULT '0',
  `review_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `order_category_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Pending',
  `isMultiple` varchar(255) DEFAULT 'No',
  `location_id` int(11) DEFAULT NULL,
  `mapping_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `patient_past_histories` */

DROP TABLE IF EXISTS `patient_past_histories`;

CREATE TABLE `patient_past_histories` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_personal_histories` */

DROP TABLE IF EXISTS `patient_personal_histories`;

CREATE TABLE `patient_personal_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `psychology_history_id` int(11) DEFAULT NULL,
  `diagnosis_id` int(11) NOT NULL DEFAULT '0',
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
  `retired` varchar(25) DEFAULT '0',
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_referrals` */

DROP TABLE IF EXISTS `patient_referrals`;

CREATE TABLE `patient_referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `doctor_detail` text,
  `date_of_issue` datetime DEFAULT NULL,
  `patient_detials` varchar(255) DEFAULT NULL,
  `complaints` text,
  `dr_phone` varchar(50) NOT NULL COMMENT 'doctor contact number',
  `dr_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dr_address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `resion_refer` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `patient_smokings` */

DROP TABLE IF EXISTS `patient_smokings`;

CREATE TABLE `patient_smokings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `diagnosis_id` int(11) DEFAULT '0',
  `psychology_history_id` int(11) DEFAULT NULL,
  `smoking_fre` int(11) DEFAULT NULL,
  `current_smoking_fre` int(11) DEFAULT NULL,
  `current_from` date DEFAULT NULL COMMENT 'smoke start date',
  `current_to` date DEFAULT NULL COMMENT 'smoke end date',
  `created_date` datetime DEFAULT NULL,
  `pre_from` date DEFAULT NULL,
  `pre_to` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_surveys` */

DROP TABLE IF EXISTS `patient_surveys`;

CREATE TABLE `patient_surveys` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patient_ventilator_consents` */

DROP TABLE IF EXISTS `patient_ventilator_consents`;

CREATE TABLE `patient_ventilator_consents` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
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
  `demographic_date` date DEFAULT NULL,
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
  `treating_consultant_identifier` varchar(255) DEFAULT NULL,
  `dashboard_level` tinyint(4) DEFAULT NULL COMMENT 'level entered by doctor from dashboard ',
  `dashboard_status` varchar(20) DEFAULT NULL COMMENT 'status entered by doctor from dashboard ',
  `permissions` text COMMENT 'patient permissions for portal view',
  `visit_type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `arrive_by` varchar(255) DEFAULT NULL,
  `occurrence_code` varchar(255) DEFAULT NULL,
  `occurrence_date` datetime DEFAULT NULL,
  `select_type` varchar(255) DEFAULT NULL,
  `physician_tab` varchar(255) DEFAULT NULL,
  `nurse_id` tinyint(4) NOT NULL COMMENT 'nurse id from dashboard',
  `death_reason_date` datetime DEFAULT NULL,
  `death_recorded_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `deathreason` varchar(255) DEFAULT NULL,
  `patientdied` tinyint(1) NOT NULL DEFAULT '0',
  `phvs_visit_id` varchar(255) DEFAULT NULL,
  `observation_identifier_id` int(11) DEFAULT NULL,
  `phvs_icd9cm_id` varchar(255) DEFAULT NULL,
  `visit_purpose2` varchar(255) DEFAULT NULL,
  `visit_purpose` varchar(255) DEFAULT NULL,
  `newmedicationqr_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admission_id` (`admission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `persons` */

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_id` int(11) DEFAULT NULL,
  `name_type` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `maritail_status` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `suffix1` varchar(255) NOT NULL,
  `portal` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `patient_uid` varchar(20) NOT NULL,
  `admission_type` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uiddate` datetime NOT NULL,
  `passport_no` varchar(50) DEFAULT NULL,
  `ssn_us` varchar(255) NOT NULL,
  `identification_card_no` varchar(100) DEFAULT NULL,
  `plot_no` varchar(100) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `taluka` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pin_code` varchar(20) DEFAULT NULL,
  `zip_four` int(11) DEFAULT NULL,
  `insurance_company_id` int(11) DEFAULT NULL,
  `credit_type_id` int(11) DEFAULT NULL,
  `payment_category` varchar(10) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `insurance_type_id` int(11) DEFAULT NULL,
  `corporate_location_id` int(11) DEFAULT NULL,
  `corporate_id` int(11) DEFAULT NULL,
  `corporate_sublocation_id` int(11) DEFAULT NULL,
  `corporate_otherdetails` text NOT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `patient_owner` varchar(255) DEFAULT NULL,
  `asst_phone` varchar(20) DEFAULT NULL,
  `description` text,
  `skype_id` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `secondary_email` varchar(150) NOT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `nationality` varchar(255) NOT NULL,
  `ethnicity` varchar(255) DEFAULT NULL,
  `alt_ethinicity` varchar(20) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `alt_race` varchar(20) DEFAULT NULL,
  `P_comm` int(11) DEFAULT NULL,
  `executive_emp_id_no` varchar(255) DEFAULT NULL,
  `gau_state` varchar(255) NOT NULL,
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
  `merge_source` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` tinyint(11) DEFAULT NULL,
  `modified_by` tinyint(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `phvs_visit_id` int(11) DEFAULT NULL,
  `observation_identifier_id` int(11) DEFAULT NULL,
  `phvs_icd9cm_id` varchar(255) DEFAULT NULL,
  `visit_purpose` varchar(500) DEFAULT NULL,
  `mrn_number` varchar(255) NOT NULL,
  `birth_order` varchar(255) NOT NULL,
  `guardian_middle_name` varchar(255) NOT NULL,
  `guardian_last_name` varchar(255) NOT NULL,
  `guardian_relation` varchar(255) NOT NULL,
  `guardian_address` text NOT NULL,
  `guardian_country` varchar(255) NOT NULL,
  `guardian_home_phone` varchar(255) NOT NULL,
  `guardian_email` varchar(255) NOT NULL,
  `alt_initial_id` varchar(255) DEFAULT NULL,
  `alt_first_name` varchar(255) DEFAULT NULL,
  `alt_middle_name` varchar(255) DEFAULT NULL,
  `alt_last_name` varchar(255) DEFAULT NULL,
  `alt_name_type` varchar(255) DEFAULT NULL,
  `alt_suffix` varchar(255) DEFAULT NULL,
  `patient_alt_prof_suffix` varchar(255) DEFAULT NULL,
  `mother_initial_id` varchar(255) DEFAULT NULL,
  `mother_first_name` varchar(255) DEFAULT NULL,
  `mother_middle_name` varchar(255) DEFAULT NULL,
  `mother_last_name` varchar(255) DEFAULT NULL,
  `mother_name_type` varchar(255) DEFAULT NULL,
  `mother_suffix` varchar(255) DEFAULT NULL,
  `mother_prof_suffix` varchar(255) DEFAULT NULL,
  `person_address_type_first` varchar(255) DEFAULT NULL,
  `person_parish_code_first` varchar(255) DEFAULT NULL,
  `address_line_1_second` text,
  `address_line_2_second` text,
  `pin_code_second` varchar(255) DEFAULT NULL,
  `country_second` varchar(255) DEFAULT NULL,
  `state_second` varchar(255) DEFAULT NULL,
  `city_second` varchar(255) DEFAULT NULL,
  `person_address_type_second` varchar(255) DEFAULT NULL,
  `person_parish_code_second` varchar(255) DEFAULT NULL,
  `person_tele_code` varchar(255) DEFAULT NULL,
  `person_tele_equip_type` varchar(255) DEFAULT NULL,
  `person_email_address` varchar(255) DEFAULT NULL,
  `person_country_code` varchar(255) DEFAULT NULL,
  `person_city_code` varchar(255) DEFAULT NULL,
  `person_local_number` varchar(255) DEFAULT NULL,
  `person_extension` varchar(255) DEFAULT NULL,
  `person_any_text` varchar(255) DEFAULT NULL,
  `person_tele_code_second` varchar(255) DEFAULT NULL,
  `person_tele_equip_type_second` varchar(255) DEFAULT NULL,
  `person_email_address_second` varchar(255) DEFAULT NULL,
  `person_country_code_second` varchar(255) DEFAULT NULL,
  `person_city_code_second` varchar(255) DEFAULT NULL,
  `person_local_number_second` varchar(255) DEFAULT NULL,
  `person_extension_second` varchar(255) DEFAULT NULL,
  `person_any_text_second` varchar(255) DEFAULT NULL,
  `person_tele_code_business` varchar(255) DEFAULT NULL,
  `person_tele_equip_type_business` varchar(255) DEFAULT NULL,
  `person_email_address_business` varchar(255) DEFAULT NULL,
  `person_country_code_business` varchar(255) DEFAULT NULL,
  `person_city_code_business` varchar(255) DEFAULT NULL,
  `person_local_number_business` varchar(255) DEFAULT NULL,
  `person_extension_business` varchar(255) DEFAULT NULL,
  `person_any_text_business` text,
  `is_first_login` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_birth_indicator` varchar(255) DEFAULT NULL,
  `patient_portal` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `visit_purpose2` varchar(255) DEFAULT NULL,
  `notes_comment` varchar(255) DEFAULT NULL,
  `guar_prof_suffix` varchar(255) DEFAULT NULL,
  `guar_country_code` varchar(255) DEFAULT NULL,
  `guar_text` varchar(255) DEFAULT NULL,
  `guar_phone1` varchar(255) DEFAULT NULL,
  `guar_mobile1` varchar(255) DEFAULT NULL,
  `guar_company_name` varchar(255) DEFAULT NULL,
  `patient_credentials_created_date` datetime DEFAULT NULL,
  `professional_suffix` varchar(255) DEFAULT NULL,
  `first_login_date` datetime DEFAULT NULL,
  `guar_country_code1` varchar(255) DEFAULT NULL,
  `guar_localno1` varchar(255) DEFAULT NULL,
  `guar_area_code1` varchar(255) DEFAULT NULL,
  `guar_extension1` varchar(255) DEFAULT NULL,
  `driver1` varchar(50) DEFAULT NULL,
  `registering_organisation` varchar(255) DEFAULT NULL,
  `organ_donor` varchar(255) DEFAULT NULL,
  `doc_chart` varchar(255) DEFAULT NULL,
  `driver2` varchar(255) DEFAULT NULL,
  `adv_directive` varchar(255) DEFAULT NULL,
  `adv_note` varchar(255) DEFAULT NULL,
  `privacy_notify` datetime DEFAULT NULL,
  `guarantor_id` varchar(255) DEFAULT NULL,
  `special_need` varchar(255) DEFAULT NULL,
  `epi_id` varchar(255) DEFAULT NULL,
  `venteran` varchar(10) DEFAULT NULL,
  `vip` varchar(10) DEFAULT NULL,
  `vip1` varchar(255) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `death_certificate_no` varchar(255) DEFAULT NULL,
  `death_time` datetime DEFAULT NULL,
  `calling_name` varchar(255) DEFAULT NULL,
  `emergency_contact` varchar(255) DEFAULT NULL,
  `ub_data_tab1` varchar(255) DEFAULT NULL,
  `ub_data_tab2` varchar(255) DEFAULT NULL,
  `primary_chk` varchar(255) DEFAULT NULL,
  `eff_date_add` datetime DEFAULT NULL,
  `end_date_add` datetime DEFAULT NULL,
  `phon_primary_chk` varchar(255) DEFAULT NULL,
  `phon_eff_date_add` datetime DEFAULT NULL,
  `phon_end_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pharmacy_item_details` */

DROP TABLE IF EXISTS `pharmacy_item_details`;

CREATE TABLE `pharmacy_item_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MEDID` int(11) NOT NULL,
  `GCN_SEQNO` int(11) NOT NULL,
  `MED_NAME_ID` int(11) NOT NULL,
  `MED_NAME` varchar(255) NOT NULL,
  `MED_ROUTED_MED_ID_DESC` varchar(255) NOT NULL,
  `MED_ROUTED_DF_MED_ID_DESC` varchar(255) NOT NULL,
  `MED_MEDID_DESC` text NOT NULL,
  `MED_STATUS_CD` varchar(255) NOT NULL,
  `MED_ROUTE_ID` int(11) NOT NULL,
  `ROUTED_MED_ID` int(11) NOT NULL,
  `ROUTED_DOSAGE_FORM_MED_ID` int(11) NOT NULL,
  `MED_STRENGTH` varchar(255) NOT NULL,
  `MED_STRENGTH_UOM` varchar(100) NOT NULL,
  `MED_ROUTE_ABBR` varchar(100) NOT NULL,
  `MED_ROUTE_DESC` int(100) NOT NULL,
  `MED_DOSAGE_FORM_ABBR` int(100) NOT NULL,
  `MED_DOSAGE_FORM_DESC` int(100) NOT NULL,
  `GenericDrugName` int(100) NOT NULL,
  `DosageFormOverride` int(100) NOT NULL,
  `MED_REF_DEA_CD` int(11) NOT NULL,
  `MED_REF_DEA_CD_DESC` varchar(100) NOT NULL,
  `MED_REF_MULTI_SOURCE_CD` varchar(50) NOT NULL,
  `MED_REF_MULTI_SOURCE_CD_DESC` varchar(100) NOT NULL,
  `MED_REF_GEN_DRUG_NAME_CD` varchar(50) NOT NULL,
  `MED_REF_GEN_DRUG_NAME_CD_DESC` varchar(50) NOT NULL,
  `MED_REF_FED_LEGEND_IND` varchar(50) NOT NULL,
  `MED_REF_FED_LEGEND_IND_DESC` varchar(50) NOT NULL,
  `GENERIC_MEDID` varchar(50) NOT NULL,
  `MED_NAME_TYPE_CD` int(255) NOT NULL,
  `GENERIC_MED_REF_GEN_DRUG_NAME_CD` varchar(50) NOT NULL,
  `MED_NAME_SOURCE_CD` varchar(50) NOT NULL,
  `etc` varchar(50) NOT NULL,
  `DrugInfo` varchar(255) NOT NULL,
  `GenericDrugNameOverride` varchar(255) NOT NULL,
  `FormularyDrugID` int(100) NOT NULL,
  `Manufacturer` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `TouchDate` varchar(100) NOT NULL,
  `DrugTypeID` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92006 DEFAULT CHARSET=latin1;

/*Table structure for table `pharmacy_item_rates` */

DROP TABLE IF EXISTS `pharmacy_item_rates`;

CREATE TABLE `pharmacy_item_rates` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) NOT NULL,
  `batch_number` varchar(200) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `mrp` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `mstpflag` char(1) DEFAULT NULL,
  `purchase_price` float DEFAULT '0',
  `cst` float DEFAULT NULL,
  `cost_price` float DEFAULT '0',
  `sale_price` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16435 DEFAULT CHARSET=latin1;

/*Table structure for table `pharmacy_items` */

DROP TABLE IF EXISTS `pharmacy_items`;

CREATE TABLE `pharmacy_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` int(11) NOT NULL,
  `aui` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `rxcui` varchar(255) NOT NULL,
  `rxnorm_code` varchar(255) NOT NULL,
  `GCN_SEQNO` int(11) NOT NULL,
  `MED_NAME_ID` int(11) NOT NULL,
  `MED_NAME` varchar(255) NOT NULL,
  `MED_ROUTED_MED_ID_DESC` varchar(255) NOT NULL,
  `MED_ROUTED_DF_MED_ID_DESC` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `MED_STATUS_CD` varchar(255) NOT NULL,
  `MED_ROUTE_ID` int(11) NOT NULL,
  `ROUTED_MED_ID` int(11) NOT NULL,
  `ROUTED_DOSAGE_FORM_MED_ID` int(11) NOT NULL,
  `MED_STRENGTH` varchar(255) NOT NULL,
  `MED_STRENGTH_UOM` varchar(100) NOT NULL,
  `MED_ROUTE_ABBR` varchar(100) NOT NULL,
  `MED_ROUTE_DESC` int(100) NOT NULL,
  `MED_DOSAGE_FORM_ABBR` int(100) NOT NULL,
  `MED_DOSAGE_FORM_DESC` int(100) NOT NULL,
  `GenericDrugName` int(100) NOT NULL,
  `DosageFormOverride` int(100) NOT NULL,
  `MED_REF_DEA_CD` int(11) NOT NULL,
  `MED_REF_DEA_CD_DESC` varchar(100) NOT NULL,
  `MED_REF_MULTI_SOURCE_CD` varchar(50) NOT NULL,
  `MED_REF_MULTI_SOURCE_CD_DESC` varchar(100) NOT NULL,
  `MED_REF_GEN_DRUG_NAME_CD` varchar(50) NOT NULL,
  `MED_REF_GEN_DRUG_NAME_CD_DESC` varchar(50) NOT NULL,
  `MED_REF_FED_LEGEND_IND` varchar(50) NOT NULL,
  `MED_REF_FED_LEGEND_IND_DESC` varchar(50) NOT NULL,
  `GENERIC_MEDID` varchar(50) NOT NULL,
  `MED_NAME_TYPE_CD` int(255) NOT NULL,
  `GENERIC_MED_REF_GEN_DRUG_NAME_CD` varchar(50) NOT NULL,
  `MED_NAME_SOURCE_CD` varchar(50) NOT NULL,
  `etc` varchar(50) NOT NULL,
  `DrugInfo` varchar(255) NOT NULL,
  `GenericDrugNameOverride` varchar(255) NOT NULL,
  `FormularyDrugID` int(100) NOT NULL,
  `Manufacturer` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `TouchDate` varchar(100) NOT NULL,
  `DrugTypeID` varchar(100) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `pack` varchar(255) NOT NULL,
  `stock` double NOT NULL,
  `generic` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `minimum` int(11) NOT NULL,
  `maximum` int(11) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `shelf` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `common` int(11) DEFAULT NULL,
  `favourite` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92020 DEFAULT CHARSET=latin1;

/*Table structure for table `pharmacy_items_7march` */

DROP TABLE IF EXISTS `pharmacy_items_7march`;

CREATE TABLE `pharmacy_items_7march` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `drug_id` varchar(255) NOT NULL,
  `aui` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `rxcui` varchar(255) NOT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `pack` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
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
  `common` int(11) DEFAULT NULL,
  `favourite` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32803 DEFAULT CHARSET=latin1;

/*Table structure for table `pharmacy_sales_bill_details` */

DROP TABLE IF EXISTS `pharmacy_sales_bill_details`;

CREATE TABLE `pharmacy_sales_bill_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(20) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `pharmacy_sales_bill_id` int(20) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `batch_number` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pharmacy_sales_bills` */

DROP TABLE IF EXISTS `pharmacy_sales_bills`;

CREATE TABLE `pharmacy_sales_bills` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `doctor_id` int(20) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment_mode` enum('cash','credit') NOT NULL DEFAULT 'credit',
  `bill_code` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_adminsites` */

DROP TABLE IF EXISTS `phvs_adminsites`;

CREATE TABLE `phvs_adminsites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_adminsroutes` */

DROP TABLE IF EXISTS `phvs_adminsroutes`;

CREATE TABLE `phvs_adminsroutes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_financial_class` */

DROP TABLE IF EXISTS `phvs_financial_class`;

CREATE TABLE `phvs_financial_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_financial_classes` */

DROP TABLE IF EXISTS `phvs_financial_classes`;

CREATE TABLE `phvs_financial_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_icd9cms` */

DROP TABLE IF EXISTS `phvs_icd9cms`;

CREATE TABLE `phvs_icd9cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_immunization_registry_status` */

DROP TABLE IF EXISTS `phvs_immunization_registry_status`;

CREATE TABLE `phvs_immunization_registry_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_immunizationinformationsource` */

DROP TABLE IF EXISTS `phvs_immunizationinformationsource`;

CREATE TABLE `phvs_immunizationinformationsource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_measureofunit` */

DROP TABLE IF EXISTS `phvs_measureofunit`;

CREATE TABLE `phvs_measureofunit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_modifierorqualifier_cdc` */

DROP TABLE IF EXISTS `phvs_modifierorqualifier_cdc`;

CREATE TABLE `phvs_modifierorqualifier_cdc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_observation_identifiers` */

DROP TABLE IF EXISTS `phvs_observation_identifiers`;

CREATE TABLE `phvs_observation_identifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_publicity_codes` */

DROP TABLE IF EXISTS `phvs_publicity_codes`;

CREATE TABLE `phvs_publicity_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_relationships` */

DROP TABLE IF EXISTS `phvs_relationships`;

CREATE TABLE `phvs_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_vaccines_mvxs` */

DROP TABLE IF EXISTS `phvs_vaccines_mvxs`;

CREATE TABLE `phvs_vaccines_mvxs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_value_types` */

DROP TABLE IF EXISTS `phvs_value_types`;

CREATE TABLE `phvs_value_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `phvs_visits` */

DROP TABLE IF EXISTS `phvs_visits`;

CREATE TABLE `phvs_visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code_system` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `physiotherapy_assessments` */

DROP TABLE IF EXISTS `physiotherapy_assessments`;

CREATE TABLE `physiotherapy_assessments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `planned_problems` */

DROP TABLE IF EXISTS `planned_problems`;

CREATE TABLE `planned_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `snomed_description` varchar(255) DEFAULT NULL,
  `sct_us_concept_id` varchar(255) DEFAULT NULL,
  `sct_concept_id` varchar(255) DEFAULT NULL,
  `instruction` varchar(255) DEFAULT NULL,
  `plan_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `police_forms` */

DROP TABLE IF EXISTS `police_forms`;

CREATE TABLE `police_forms` (
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

/*Table structure for table `post_operative_checklists` */

DROP TABLE IF EXISTS `post_operative_checklists`;

CREATE TABLE `post_operative_checklists` (
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

/*Table structure for table `pre_operative_checklists` */

DROP TABLE IF EXISTS `pre_operative_checklists`;

CREATE TABLE `pre_operative_checklists` (
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
  `blood_pressure_di` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `bmi` varchar(255) DEFAULT NULL,
  `pre_given` varchar(10) DEFAULT NULL,
  `pre_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `preferencecard_instrumentitems` */

DROP TABLE IF EXISTS `preferencecard_instrumentitems`;

CREATE TABLE `preferencecard_instrumentitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preferencecard_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `preferencecard_oritems` */

DROP TABLE IF EXISTS `preferencecard_oritems`;

CREATE TABLE `preferencecard_oritems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preferencecard_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `preferencecard_spditems` */

DROP TABLE IF EXISTS `preferencecard_spditems`;

CREATE TABLE `preferencecard_spditems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preferencecard_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `preferencecards` */

DROP TABLE IF EXISTS `preferencecards`;

CREATE TABLE `preferencecards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `card_title` varchar(255) NOT NULL,
  `procedure_id` varchar(255) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `equipment_name` tinytext NOT NULL,
  `medications` tinytext NOT NULL,
  `dressing` tinytext NOT NULL,
  `position` tinytext NOT NULL,
  `notes` text NOT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pregnancy_counts` */

DROP TABLE IF EXISTS `pregnancy_counts`;

CREATE TABLE `pregnancy_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `counts` tinyint(2) DEFAULT NULL,
  `date_birth` datetime DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `baby_gender` enum('M','F') DEFAULT NULL,
  `week_pregnant` varchar(100) DEFAULT NULL,
  `type_delivery` varchar(255) DEFAULT NULL,
  `complication` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `prescription_records` */

DROP TABLE IF EXISTS `prescription_records`;

CREATE TABLE `prescription_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_uid` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `administer_by` varchar(255) DEFAULT NULL,
  `medication` text,
  `location_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `procedure_histories` */

DROP TABLE IF EXISTS `procedure_histories`;

CREATE TABLE `procedure_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `procedure` varchar(255) DEFAULT NULL,
  `procedure_name` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `age_value` int(11) DEFAULT NULL,
  `age_unit` varchar(11) DEFAULT NULL,
  `procedure_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `procedure_masters` */

DROP TABLE IF EXISTS `procedure_masters`;

CREATE TABLE `procedure_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_value` varchar(25) NOT NULL,
  `procedure_name` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  `modify_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Table structure for table `procedure_performs` */

DROP TABLE IF EXISTS `procedure_performs`;

CREATE TABLE `procedure_performs` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `procedure_name` varchar(255) DEFAULT NULL,
  `snowmed_code` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `procedure_note` text NOT NULL,
  `procedure_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `psychology_histories` */

DROP TABLE IF EXISTS `psychology_histories`;

CREATE TABLE `psychology_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `medicaid_number` varchar(255) DEFAULT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `taxonomy` varchar(255) DEFAULT NULL,
  `tpi` varchar(255) DEFAULT NULL,
  `facility_address` varchar(255) DEFAULT NULL,
  `benifit_code` varchar(255) DEFAULT NULL,
  `date_of_assessment` datetime DEFAULT NULL,
  `commitment_type` varchar(255) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `judge` varchar(255) DEFAULT NULL,
  `referral_source` tinyint(1) DEFAULT '0',
  `admitting_md` tinyint(1) DEFAULT '0',
  `mh_professional` tinyint(1) DEFAULT '0',
  `other_chckclick1` tinyint(1) DEFAULT '0',
  `living_arrangemnt` tinyint(1) DEFAULT '0',
  `with_parents` tinyint(1) DEFAULT '0',
  `grp_home` tinyint(1) DEFAULT '0',
  `other_chckclick2` tinyint(1) DEFAULT '0',
  `primary_symptom` varchar(255) DEFAULT NULL,
  `clinical_info` varchar(255) DEFAULT NULL,
  `no_of_addmission` varchar(255) DEFAULT NULL,
  `inpatient_date1` datetime DEFAULT NULL,
  `inpatient_date2` datetime DEFAULT NULL,
  `ambu_treatmnt` varchar(255) DEFAULT NULL,
  `current_diag` varchar(255) DEFAULT NULL,
  `additional_diag` varchar(255) DEFAULT NULL,
  `functional_assessment` varchar(255) DEFAULT NULL,
  `hosp_day` varchar(255) DEFAULT NULL,
  `proj_discharge_date` datetime DEFAULT NULL,
  `aftercare_plan` varchar(255) DEFAULT NULL,
  `provider_or_facility` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `last_date` datetime DEFAULT NULL,
  `print_name` varchar(255) DEFAULT NULL,
  `provider_licence_number` varchar(255) DEFAULT NULL,
  `provider_tpi` varchar(255) DEFAULT NULL,
  `provider_npi` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `quality_monitoring_formats` */

DROP TABLE IF EXISTS `quality_monitoring_formats`;

CREATE TABLE `quality_monitoring_formats` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `races` */

DROP TABLE IF EXISTS `races`;

CREATE TABLE `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(200) NOT NULL,
  `race_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Table structure for table `radiologies` */

DROP TABLE IF EXISTS `radiologies`;

CREATE TABLE `radiologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `test_code` varchar(255) DEFAULT NULL,
  `cpt_code` varchar(255) DEFAULT NULL,
  `sct_concept_id` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `speciality_cat_id` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `service_group_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  `test_group_id` int(11) DEFAULT NULL,
  `is_active` tinyint(3) NOT NULL DEFAULT '1',
  `is_orderset` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `common` int(11) DEFAULT NULL,
  `favourite` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_doctor_notes` */

DROP TABLE IF EXISTS `radiology_doctor_notes`;

CREATE TABLE `radiology_doctor_notes` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_manual_entry` */

DROP TABLE IF EXISTS `radiology_manual_entry`;

CREATE TABLE `radiology_manual_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `rad_count` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_reports` */

DROP TABLE IF EXISTS `radiology_reports`;

CREATE TABLE `radiology_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `radiology_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `radiology_result_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_results` */

DROP TABLE IF EXISTS `radiology_results`;

CREATE TABLE `radiology_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `radiology_test_order_id` int(11) NOT NULL,
  `radiology_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `img_impression` varchar(25) NOT NULL,
  `note` text NOT NULL,
  `split` varchar(255) NOT NULL,
  `adverse_event` tinyint(4) NOT NULL DEFAULT '0',
  `confirm_result` int(3) DEFAULT '0',
  `result_publish_date` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_template_texts` */

DROP TABLE IF EXISTS `radiology_template_texts`;

CREATE TABLE `radiology_template_texts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_templates` */

DROP TABLE IF EXISTS `radiology_templates`;

CREATE TABLE `radiology_templates` (
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_test_orders` */

DROP TABLE IF EXISTS `radiology_test_orders`;

CREATE TABLE `radiology_test_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radiology_id` int(11) NOT NULL,
  `patient_order_id` int(11) DEFAULT NULL,
  `collection_priority` varchar(255) DEFAULT NULL,
  `frequency_r` varchar(255) DEFAULT NULL,
  `order_future_visit` varchar(255) DEFAULT NULL,
  `duration_l` varchar(255) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT NULL,
  `reason_exam` varchar(255) DEFAULT NULL,
  `reason_exam_instruction` varchar(255) DEFAULT NULL,
  `Pregnant` varchar(255) DEFAULT NULL,
  `special_instruction` varchar(255) DEFAULT NULL,
  `is_procedure` tinyint(4) NOT NULL DEFAULT '0',
  `order_id` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `test_done` varchar(10) DEFAULT NULL COMMENT '"Yes" if test has been done(May be waiting for reports).',
  `is_external` int(3) DEFAULT NULL,
  `testname` varchar(255) NOT NULL,
  `service_provider_id` int(11) DEFAULT NULL,
  `from_assessment` tinyint(3) NOT NULL DEFAULT '0',
  `batch_identifier` varchar(255) NOT NULL,
  `sct_concept_id` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `radDash_date` datetime DEFAULT NULL,
  `checkup` varchar(255) DEFAULT NULL,
  `resultby` varchar(255) DEFAULT NULL,
  `xrayjacket` varchar(255) DEFAULT NULL,
  `radiology_order` int(25) DEFAULT NULL,
  `radiology_order_date` date DEFAULT NULL,
  `is_deleted` int(3) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  `collected_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `radiology_test_payments` */

DROP TABLE IF EXISTS `radiology_test_payments`;

CREATE TABLE `radiology_test_payments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `recipients` */

DROP TABLE IF EXISTS `recipients`;

CREATE TABLE `recipients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `report_name` varchar(255) NOT NULL,
  `is_generated` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `referring_providers` */

DROP TABLE IF EXISTS `referring_providers`;

CREATE TABLE `referring_providers` (
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

/*Table structure for table `refferer_doctors` */

DROP TABLE IF EXISTS `refferer_doctors`;

CREATE TABLE `refferer_doctors` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `religions` */

DROP TABLE IF EXISTS `religions`;

CREATE TABLE `religions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_status_0123s` */

DROP TABLE IF EXISTS `result_status_0123s`;

CREATE TABLE `result_status_0123s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `review_categories` */

DROP TABLE IF EXISTS `review_categories`;

CREATE TABLE `review_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Main categories for nursing observation data';

/*Table structure for table `review_category_customizations` */

DROP TABLE IF EXISTS `review_category_customizations`;

CREATE TABLE `review_category_customizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `category_options` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table contents customize data at patient level';

/*Table structure for table `review_date_time_slots` */

DROP TABLE IF EXISTS `review_date_time_slots`;

CREATE TABLE `review_date_time_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hours` varchar(10) DEFAULT NULL COMMENT 'actual hours of time slot selection',
  `time_slot` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contents the date with time slot for the same date';

/*Table structure for table `review_patient_details` */

DROP TABLE IF EXISTS `review_patient_details`;

CREATE TABLE `review_patient_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `review_sub_categories_options_id` varchar(11) NOT NULL COMMENT 'data type changes to obserbe new changes of new crop prescription',
  `review_sub_categories_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `values` text NOT NULL COMMENT 'serialized data for every hour for the day',
  `hourSlot` varchar(10) NOT NULL COMMENT 'hour slot',
  `actualTime` varchar(10) NOT NULL COMMENT 'actual time for entering',
  `edited_on` datetime DEFAULT NULL COMMENT 'maintaing date for edited entries',
  `is_edited` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'flag to set edited entry , default \nto 0',
  `flag` tinyint(4) DEFAULT NULL COMMENT 'flag 1 or 0',
  `flag_comment` varchar(1000) DEFAULT NULL COMMENT 'falg comment',
  `flag_date` datetime DEFAULT NULL COMMENT 'flag date',
  `unchart_reason` varchar(255) DEFAULT NULL COMMENT 'seleted reason for uncharting',
  `unchart_comment` tinytext COMMENT 'comment for uncharting',
  `uncharted_on` datetime DEFAULT NULL COMMENT 'date of uncharted',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Per hour entries of nursing observation';

/*Table structure for table `review_sub_categories` */

DROP TABLE IF EXISTS `review_sub_categories`;

CREATE TABLE `review_sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parameter` varchar(255) DEFAULT NULL COMMENT 'for intake and output.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COMMENT='Subcategory for observation data';

/*Table structure for table `review_sub_categories_options` */

DROP TABLE IF EXISTS `review_sub_categories_options`;

CREATE TABLE `review_sub_categories_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `values` text COMMENT 'dropdown values for sub category option',
  `unit` varchar(10) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL COMMENT 'score of options',
  `score_total` varchar(50) DEFAULT NULL COMMENT 'display \ntotal in mentioned row',
  `is_conditional` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'flag to identify conditional option',
  `trigger` varchar(10) DEFAULT NULL COMMENT 'display conditional rows',
  `trigger_on` varchar(255) DEFAULT NULL COMMENT 'display rows on this option value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;

/*Table structure for table `risk_categories` */

DROP TABLE IF EXISTS `risk_categories`;

CREATE TABLE `risk_categories` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `risk_category_name` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `risk_category_note` text NOT NULL,
  `risk_category_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `reason_type` varchar(55) DEFAULT NULL,
  `risk_reason_type` varchar(255) NOT NULL,
  `is_riskcheck` tinyint(1) DEFAULT NULL,
  `risk_type_note` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `riskcategoryassesment_masters` */

DROP TABLE IF EXISTS `riskcategoryassesment_masters`;

CREATE TABLE `riskcategoryassesment_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imo_code` varchar(255) NOT NULL,
  `icd_id` varchar(255) NOT NULL,
  `sct_us_concept_id` varchar(225) DEFAULT NULL,
  `diagnoses_name` varchar(255) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `send_referral` */

DROP TABLE IF EXISTS `send_referral`;

CREATE TABLE `send_referral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) NOT NULL,
  `is_generated` tinyint(1) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `send_referrals` */

DROP TABLE IF EXISTS `send_referrals`;

CREATE TABLE `send_referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) NOT NULL,
  `is_generated` tinyint(1) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `service_bills` */

DROP TABLE IF EXISTS `service_bills`;

CREATE TABLE `service_bills` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `service_categories` */

DROP TABLE IF EXISTS `service_categories`;

CREATE TABLE `service_categories` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `location_id` int(20) DEFAULT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` varchar(200) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Table structure for table `service_providers` */

DROP TABLE IF EXISTS `service_providers`;

CREATE TABLE `service_providers` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Table structure for table `service_sub_categories` */

DROP TABLE IF EXISTS `service_sub_categories`;

CREATE TABLE `service_sub_categories` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `service_category_id` int(20) DEFAULT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(20) DEFAULT NULL,
  `create_time` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=latin1;

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
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

/*Table structure for table `services_wards` */

DROP TABLE IF EXISTS `services_wards`;

CREATE TABLE `services_wards` (
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

/*Table structure for table `session_permissions` */

DROP TABLE IF EXISTS `session_permissions`;

CREATE TABLE `session_permissions` (
  `id` varchar(255) NOT NULL,
  `data` longtext,
  `expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `settlement_billing_options` */

DROP TABLE IF EXISTS `settlement_billing_options`;

CREATE TABLE `settlement_billing_options` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `settlement_billings` */

DROP TABLE IF EXISTS `settlement_billings`;

CREATE TABLE `settlement_billings` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sign_symptoms` */

DROP TABLE IF EXISTS `sign_symptoms`;

CREATE TABLE `sign_symptoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `fever` varchar(255) DEFAULT NULL,
  `chills` varchar(255) DEFAULT NULL,
  `local_pain` varchar(255) DEFAULT NULL,
  `swelling` varchar(255) DEFAULT NULL,
  `redness` varchar(255) DEFAULT NULL,
  `pus_discharge` varchar(255) DEFAULT NULL,
  `urinary_frequency` varchar(255) DEFAULT NULL,
  `respiratory_secretion` varchar(255) DEFAULT NULL,
  `dysuria` varchar(255) DEFAULT NULL,
  `suprapubic_tenderness` varchar(255) DEFAULT NULL,
  `oliguria` varchar(255) DEFAULT NULL,
  `pyuria` varchar(255) DEFAULT NULL,
  `cough` varchar(255) DEFAULT NULL,
  `blood_clot` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `smart_phrase_multiple` */

DROP TABLE IF EXISTS `smart_phrase_multiple`;

CREATE TABLE `smart_phrase_multiple` (
  `phrase_id` varchar(255) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL,
  `list_content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `smart_phrases` */

DROP TABLE IF EXISTS `smart_phrases`;

CREATE TABLE `smart_phrases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(255) DEFAULT NULL,
  `synonyms` varchar(255) DEFAULT NULL,
  `phrase_text` text,
  `has_multiple` tinyint(1) DEFAULT '0',
  `has_custom` tinyint(1) DEFAULT '0',
  `department_id` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3020 DEFAULT CHARSET=latin1;

/*Table structure for table `smoking_status_oncs` */

DROP TABLE IF EXISTS `smoking_status_oncs`;

CREATE TABLE `smoking_status_oncs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `detail` text NOT NULL,
  `snomed_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Table structure for table `snomed_mapping_masters` */

DROP TABLE IF EXISTS `snomed_mapping_masters`;

CREATE TABLE `snomed_mapping_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `mapping_id` varchar(255) NOT NULL,
  `effectiveTime` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `moduleId` varchar(255) NOT NULL,
  `refSetId` varchar(255) NOT NULL,
  `referencedComponentId` varchar(255) NOT NULL,
  `sctName` varchar(255) NOT NULL,
  `mapGroup` tinyint(2) NOT NULL,
  `mapPriority` tinyint(2) NOT NULL,
  `mapRule` text NOT NULL,
  `mapAdvice` text NOT NULL,
  `mapTarget` varchar(255) NOT NULL,
  `icdName` varchar(255) NOT NULL,
  `mapCategoryValueId` varchar(255) NOT NULL,
  `mapCategoryValue` varchar(255) NOT NULL,
  `is_deleted` tinyint(2) NOT NULL,
  `tariff_list_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58932 DEFAULT CHARSET=latin1;

/*Table structure for table `snomed_masters` */

DROP TABLE IF EXISTS `snomed_masters`;

CREATE TABLE `snomed_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_id` bigint(11) NOT NULL COMMENT 'Unique ID from Snomed database',
  `effectiveTime` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `moduleId` varchar(255) NOT NULL,
  `conceptId` varchar(255) NOT NULL,
  `languageCode` varchar(10) NOT NULL,
  `typeId` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `caseSignificanceId` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `location_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000562 DEFAULT CHARSET=latin1;

/*Table structure for table `snomed_sct_hl7` */

DROP TABLE IF EXISTS `snomed_sct_hl7`;

CREATE TABLE `snomed_sct_hl7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `alternate_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Table structure for table `speciality_cats` */

DROP TABLE IF EXISTS `speciality_cats`;

CREATE TABLE `speciality_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_action_code_0065` */

DROP TABLE IF EXISTS `specimen_action_code_0065`;

CREATE TABLE `specimen_action_code_0065` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_actions` */

DROP TABLE IF EXISTS `specimen_actions`;

CREATE TABLE `specimen_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_addictives` */

DROP TABLE IF EXISTS `specimen_addictives`;

CREATE TABLE `specimen_addictives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_condition_0493` */

DROP TABLE IF EXISTS `specimen_condition_0493`;

CREATE TABLE `specimen_condition_0493` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `alternate_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_conditions` */

DROP TABLE IF EXISTS `specimen_conditions`;

CREATE TABLE `specimen_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `alternate_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_reject_reason_0490` */

DROP TABLE IF EXISTS `specimen_reject_reason_0490`;

CREATE TABLE `specimen_reject_reason_0490` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `alternate_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_rejections` */

DROP TABLE IF EXISTS `specimen_rejections`;

CREATE TABLE `specimen_rejections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `alternate_identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `value_code` (`value_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_role` */

DROP TABLE IF EXISTS `specimen_role`;

CREATE TABLE `specimen_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `specimen_types` */

DROP TABLE IF EXISTS `specimen_types`;

CREATE TABLE `specimen_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_code` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Table structure for table `staff_plans` */

DROP TABLE IF EXISTS `staff_plans`;

CREATE TABLE `staff_plans` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `staff_surveys` */

DROP TABLE IF EXISTS `staff_surveys`;

CREATE TABLE `staff_surveys` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

/*Table structure for table `store_requisition_details` */

DROP TABLE IF EXISTS `store_requisition_details`;

CREATE TABLE `store_requisition_details` (
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
  `admission_id` int(11) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `sub_services` */

DROP TABLE IF EXISTS `sub_services`;

CREATE TABLE `sub_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `suggested_drugs` */

DROP TABLE IF EXISTS `suggested_drugs`;

CREATE TABLE `suggested_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) DEFAULT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `rxnorm_code` varchar(255) NOT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `route` varchar(10) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `strength` varchar(20) DEFAULT NULL,
  `refills` varchar(20) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `prn` int(11) DEFAULT NULL,
  `daw` int(11) DEFAULT NULL,
  `first` varchar(20) DEFAULT NULL,
  `second` varchar(20) DEFAULT NULL,
  `third` varchar(20) DEFAULT NULL,
  `forth` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `special_instruction` text,
  `patient_id` int(11) NOT NULL,
  `batch_identifier` int(11) NOT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `suggested_drugs_bk` */

DROP TABLE IF EXISTS `suggested_drugs_bk`;

CREATE TABLE `suggested_drugs_bk` (
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
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `surgeries` */

DROP TABLE IF EXISTS `surgeries`;

CREATE TABLE `surgeries` (
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Table structure for table `surgery_categories` */

DROP TABLE IF EXISTS `surgery_categories`;

CREATE TABLE `surgery_categories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Table structure for table `surgery_consent_forms` */

DROP TABLE IF EXISTS `surgery_consent_forms`;

CREATE TABLE `surgery_consent_forms` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `surgery_subcategories` */

DROP TABLE IF EXISTS `surgery_subcategories`;

CREATE TABLE `surgery_subcategories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `surgical_safety_checklists` */

DROP TABLE IF EXISTS `surgical_safety_checklists`;

CREATE TABLE `surgical_safety_checklists` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `surgical_site_infections` */

DROP TABLE IF EXISTS `surgical_site_infections`;

CREATE TABLE `surgical_site_infections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `wound_location` varchar(255) DEFAULT NULL,
  `wound_type` varchar(255) DEFAULT NULL,
  `asa_scoretype` varchar(255) DEFAULT NULL,
  `antimicrobial_prophylaxis` varchar(255) DEFAULT NULL,
  `ssi_infection` varchar(100) DEFAULT NULL,
  `ssi_micro1` varchar(255) DEFAULT NULL,
  `ssi_micro2` varchar(255) DEFAULT NULL,
  `ssi_lastcontact` date DEFAULT NULL,
  `comments` text,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `symptom_masters` */

DROP TABLE IF EXISTS `symptom_masters`;

CREATE TABLE `symptom_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_value` int(255) NOT NULL,
  `symptom_name` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  `modify_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `symptoms` */

DROP TABLE IF EXISTS `symptoms`;

CREATE TABLE `symptoms` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `symptom_name` varchar(255) DEFAULT NULL,
  `snomed_code` varchar(255) DEFAULT NULL,
  `lonic_code` varchar(255) DEFAULT NULL,
  `symptom_note` text NOT NULL,
  `symptom_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_deleted` char(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modifid_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tariff_amounts` */

DROP TABLE IF EXISTS `tariff_amounts`;

CREATE TABLE `tariff_amounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `tariff_list_id` int(11) NOT NULL,
  `tariff_standard_id` int(11) NOT NULL,
  `nabh_charges` varchar(255) DEFAULT NULL,
  `non_nabh_charges` varchar(255) DEFAULT NULL,
  `unit_days` smallint(6) NOT NULL DEFAULT '1',
  `moa_sr_no` varchar(255) DEFAULT NULL,
  `allowed_amount` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21140 DEFAULT CHARSET=latin1;

/*Table structure for table `tariff_lists` */

DROP TABLE IF EXISTS `tariff_lists`;

CREATE TABLE `tariff_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `revenue_code` varchar(255) DEFAULT NULL,
  `revenue_code_description` varchar(255) DEFAULT NULL,
  `name` text NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `service_group` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `code_type` varchar(50) NOT NULL,
  `cbt` varchar(255) DEFAULT NULL,
  `custom_code` int(11) DEFAULT NULL,
  `hcpcs` int(11) DEFAULT NULL,
  `icd_9` int(11) DEFAULT NULL,
  `icd_10` int(11) DEFAULT NULL,
  `ndc_code` int(11) DEFAULT NULL,
  `cdm` varchar(255) DEFAULT NULL,
  `NdcQuality` varchar(255) DEFAULT NULL,
  `NdcUnit` varchar(255) DEFAULT NULL,
  `allowed_amount` double DEFAULT '0',
  `cghs_nabh` varchar(255) DEFAULT NULL,
  `cghs_non_nabh` varchar(255) DEFAULT NULL,
  `cghs_code` varchar(200) DEFAULT NULL,
  `apply_in_a_day` varchar(20) DEFAULT '1',
  `price_for_private` double DEFAULT '0',
  `price_for_cghs` double DEFAULT '0',
  `price_for_other` double DEFAULT '0',
  `service_category_id` int(20) DEFAULT NULL,
  `service_sub_category_id` int(20) DEFAULT NULL,
  `service_account_code` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20446 DEFAULT CHARSET=latin1;

/*Table structure for table `tariff_standards` */

DROP TABLE IF EXISTS `tariff_standards`;

CREATE TABLE `tariff_standards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `professional_claims` varchar(10) DEFAULT NULL COMMENT 'X = Requires Enrollment, O = Does not require enrollment, (Blank) = Application not active for this payer',
  `institutional_claims` varchar(10) DEFAULT NULL COMMENT 'X = Requires Enrollment, O = Does not require enrollment, (Blank) = Application not active for this payer',
  `remits` varchar(10) DEFAULT NULL COMMENT 'X = Requires Enrollment, O = Does not require enrollment, (Blank) = Application not active for this payer',
  `eligibility` varchar(10) DEFAULT NULL COMMENT 'X = Requires Enrollment, O = Does not require enrollment, (Blank) = Application not active for this payer',
  `claim_status_zirmed` varchar(10) DEFAULT NULL COMMENT 'X = Requires Enrollment, O = Does not require enrollment, (Blank) = Application not active for this payer',
  `accepts_electronic_secondary` varchar(255) DEFAULT NULL,
  `accepts_dual_clearinghouses` varchar(255) DEFAULT NULL,
  `claims_attachments` varchar(255) DEFAULT NULL,
  `estimation` varchar(255) DEFAULT NULL,
  `agreement_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_payer` varchar(255) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `outpatient_claim` varchar(255) DEFAULT NULL,
  `inpatient_claim` varchar(255) DEFAULT NULL,
  `nonpatient_claim` varchar(255) DEFAULT NULL,
  `reimbursement` varchar(255) DEFAULT NULL,
  `participant` varchar(255) DEFAULT NULL,
  `reimbursement_methods` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `outpatient_gov_cat1` varchar(255) DEFAULT NULL,
  `inpatient_gov_cat2` varchar(255) DEFAULT NULL,
  `nonpatient_gov_cat3` varchar(255) DEFAULT NULL,
  `outpatient_gov_sub1` varchar(255) DEFAULT NULL,
  `inpatient_gov_sub2` varchar(255) DEFAULT NULL,
  `nonpatient_gov_sub3` varchar(255) DEFAULT NULL,
  `outpatient_commercial_cat1` varchar(255) DEFAULT NULL,
  `inpatient_commercial_cat2` varchar(255) DEFAULT NULL,
  `nonpatient_commercial_cat3` varchar(255) DEFAULT NULL,
  `outpatient_commercial_sub1` varchar(255) DEFAULT NULL,
  `inpatient_commercial_sub2` varchar(255) DEFAULT NULL,
  `nonpatient_commercial_sub3` varchar(255) DEFAULT NULL,
  `outpatient_plan_cat1` varchar(255) DEFAULT NULL,
  `inpatient_plan_cat2` varchar(255) DEFAULT NULL,
  `nonpatient_plan_cat3` varchar(255) DEFAULT NULL,
  `outpatient_plan_sub1` varchar(255) DEFAULT NULL,
  `inpatient_plan_sub2` varchar(255) DEFAULT NULL,
  `nonpatient_plan_sub3` varchar(255) DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `chkclick` tinyint(1) NOT NULL DEFAULT '0',
  `hospital_name` varchar(255) DEFAULT NULL,
  `claim_status` varchar(255) DEFAULT NULL,
  `era_status` varchar(255) DEFAULT NULL,
  `eligibility_status` varchar(255) DEFAULT NULL,
  `billing_npi` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `provider_no` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `balance_billing` varchar(255) DEFAULT NULL,
  `accept_assignment` tinyint(1) NOT NULL DEFAULT '0',
  `capitated` tinyint(1) NOT NULL DEFAULT '0',
  `description_tme` varchar(255) DEFAULT NULL,
  `anesthesia` varchar(255) DEFAULT NULL,
  `paper_claims` varchar(255) DEFAULT NULL,
  `electronic_claims` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3882 DEFAULT CHARSET=latin1;

/*Table structure for table `template_categories` */

DROP TABLE IF EXISTS `template_categories`;

CREATE TABLE `template_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `template_sub_categories` */

DROP TABLE IF EXISTS `template_sub_categories`;

CREATE TABLE `template_sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_category_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=latin1;

/*Table structure for table `template_type_contents` */

DROP TABLE IF EXISTS `template_type_contents`;

CREATE TABLE `template_type_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `template_category_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `template_subcategory_id` varchar(255) NOT NULL COMMENT 'seriliaze array of selection',
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `patientid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `test_groups` */

DROP TABLE IF EXISTS `test_groups`;

CREATE TABLE `test_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Table structure for table `time_slots` */

DROP TABLE IF EXISTS `time_slots`;

CREATE TABLE `time_slots` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tracheostomy_consents` */

DROP TABLE IF EXISTS `tracheostomy_consents`;

CREATE TABLE `tracheostomy_consents` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_id` int(20) DEFAULT NULL,
  `reason` text,
  `date2` date DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patient_sign` varchar(255) DEFAULT NULL,
  `doctor_sign` varchar(255) DEFAULT NULL,
  `witness_sign` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `transmitted_ccda` */

DROP TABLE IF EXISTS `transmitted_ccda`;

CREATE TABLE `transmitted_ccda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `referral_date` date DEFAULT NULL,
  `subject` text,
  `file_name` varchar(255) DEFAULT NULL,
  `xml_note_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ucums` */

DROP TABLE IF EXISTS `ucums`;

CREATE TABLE `ucums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1198 DEFAULT CHARSET=latin1;

/*Table structure for table `user_dashboard_charts` */

DROP TABLE IF EXISTS `user_dashboard_charts`;

CREATE TABLE `user_dashboard_charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `chartname` varchar(255) DEFAULT NULL,
  `ordervalue` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `is_emergency` char(1) NOT NULL DEFAULT '0',
  `expiary_date` datetime DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `npi` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `gender` varchar(4) NOT NULL,
  `dob` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `address1` text,
  `address2` text,
  `city_id` int(11) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
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
  `suffix` varchar(255) DEFAULT NULL,
  `name_type` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_fk_constraint` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ventilator_check_lists` */

DROP TABLE IF EXISTS `ventilator_check_lists`;

CREATE TABLE `ventilator_check_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `ventilator_date` datetime NOT NULL,
  `vent_management` varchar(50) NOT NULL,
  `vent_priority` varchar(20) NOT NULL,
  `vent_setting` varchar(50) NOT NULL,
  `vent_setting_priority` varchar(20) NOT NULL,
  `tidal_volume` double(11,2) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `fio2` double(11,2) DEFAULT NULL,
  `psv` double(11,2) DEFAULT NULL,
  `spo2` double(11,2) DEFAULT NULL,
  `peep` double(11,2) DEFAULT NULL,
  `vte_prophylaxis` varchar(50) NOT NULL,
  `vte_priority` varchar(20) NOT NULL,
  `hob` varchar(50) NOT NULL,
  `hob_priority` varchar(20) NOT NULL,
  `oral_care` varchar(50) NOT NULL,
  `oral_care_priority` varchar(20) NOT NULL,
  `gi_proph` varchar(50) NOT NULL,
  `gi_proph_priority` varchar(20) NOT NULL,
  `ventilator_management` varchar(255) DEFAULT NULL,
  `ventilator_setting` varchar(255) DEFAULT NULL,
  `radiology` varchar(255) DEFAULT NULL,
  `lab` varchar(255) DEFAULT NULL,
  `studies` varchar(255) DEFAULT NULL,
  `vital_sign` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `consult_name` varchar(255) DEFAULT NULL,
  `sedation` varchar(300) DEFAULT NULL,
  `sedation_vol` double(11,2) DEFAULT NULL,
  `analgesia` varchar(255) DEFAULT NULL,
  `analgesia_dose` double(11,2) DEFAULT NULL,
  `analgesia_rate` double(11,2) DEFAULT NULL,
  `oral_care_order_set` varchar(255) DEFAULT NULL,
  `dvt_prophaxis` varchar(255) DEFAULT NULL,
  `pud_prophaxis` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ventilator_nurse_check_lists` */

DROP TABLE IF EXISTS `ventilator_nurse_check_lists`;

CREATE TABLE `ventilator_nurse_check_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `ventilator_check_list_id` int(11) NOT NULL,
  `ventilator_management` tinyint(4) NOT NULL DEFAULT '0',
  `ventilator_setting` tinyint(4) NOT NULL DEFAULT '0',
  `radiology` tinyint(4) NOT NULL DEFAULT '0',
  `lab` tinyint(4) NOT NULL DEFAULT '0',
  `studies` tinyint(4) NOT NULL DEFAULT '0',
  `vital_sign` tinyint(4) NOT NULL DEFAULT '0',
  `activity` tinyint(4) NOT NULL DEFAULT '0',
  `consult_name` tinyint(4) NOT NULL DEFAULT '0',
  `sedation` tinyint(4) NOT NULL DEFAULT '0',
  `analgesia` tinyint(4) NOT NULL DEFAULT '0',
  `oral_care_order_set` tinyint(4) NOT NULL DEFAULT '0',
  `dvt_prophaxis` tinyint(4) NOT NULL DEFAULT '0',
  `pud_prophaxis` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ward_billings` */

DROP TABLE IF EXISTS `ward_billings`;

CREATE TABLE `ward_billings` (
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

/*Table structure for table `ward_patients` */

DROP TABLE IF EXISTS `ward_patients`;

CREATE TABLE `ward_patients` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `wards` */

DROP TABLE IF EXISTS `wards`;

CREATE TABLE `wards` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `widgets` */

DROP TABLE IF EXISTS `widgets`;

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `application_screen_name` varchar(255) NOT NULL,
  `column_id` int(11) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `collapsed` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `section` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2158 DEFAULT CHARSET=latin1;

/*Table structure for table `widgets_17jan` */

DROP TABLE IF EXISTS `widgets_17jan`;

CREATE TABLE `widgets_17jan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `application_screen_name` varchar(255) NOT NULL,
  `column_id` int(11) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `collapsed` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Table structure for table `xml_notes` */

DROP TABLE IF EXISTS `xml_notes`;

CREATE TABLE `xml_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `xml_type` varchar(255) NOT NULL,
  `ccda_id` varchar(100) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `patient_permission` varchar(255) DEFAULT NULL,
  `e2_filename` varchar(255) DEFAULT NULL COMMENT 'for e2 admin/doctor user',
  `patients_e2_filename` varchar(255) DEFAULT NULL COMMENT 'xml name for patient view',
  `option` varchar(255) NOT NULL,
  `clinical_date` date DEFAULT NULL,
  `patient_referral_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
