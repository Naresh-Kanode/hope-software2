<?php
/* Beneficiary Fixture generated on: 2024-01-12 13:56:34 : 1705067794 */

/**
 * BeneficiaryFixture
 *
 */
class BeneficiaryFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'name' => array('type' => 'string', 'null' => false, 'default' => NULL, 'length' => 90, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'mobile' => array('type' => 'string', 'null' => false, 'default' => NULL, 'length' => 90, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'otp' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 4),
		'created' => array('type' => 'date', 'null' => false, 'default' => NULL),
		'last_login' => array('type' => 'date', 'null' => false, 'default' => NULL),
		'modified' => array('type' => 'date', 'null' => false, 'default' => NULL),
		'indexes' => array(),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'MyISAM')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'name' => 'Lorem ipsum dolor sit amet',
			'mobile' => 'Lorem ipsum dolor sit amet',
			'otp' => 1,
			'created' => '2024-01-12',
			'last_login' => '2024-01-12',
			'modified' => '2024-01-12'
		),
	);
}
