<?php
/* Beneficiary Test cases generated on: 2024-01-12 13:56:34 : 1705067794*/
App::uses('Beneficiary', 'Model');

/**
 * Beneficiary Test Case
 *
 */
class BeneficiaryTestCase extends CakeTestCase {
/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array('app.beneficiary');

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();

		$this->Beneficiary = ClassRegistry::init('Beneficiary');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Beneficiary);

		parent::tearDown();
	}

}
