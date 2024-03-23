<?php
/* BeneficiaryPayment Fixture generated on: 2024-01-12 16:07:15 : 1705075635 */

/**
 * BeneficiaryPaymentFixture
 *
 */
class BeneficiaryPaymentFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'beneficiary_id' => array('type' => 'integer', 'null' => false, 'default' => NULL),
		'payment_reference' => array('type' => 'string', 'null' => false, 'default' => NULL, 'length' => 90, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'consulted' => array('type' => 'boolean', 'null' => false, 'default' => '0'),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1)),
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
			'beneficiary_id' => 1,
			'payment_reference' => 'Lorem ipsum dolor sit amet',
			'consulted' => 1
		),
	);
}
