<?php
/* BeneficiaryPayment Test cases generated on: 2024-01-12 16:07:15 : 1705075635*/
App::uses('BeneficiaryPayment', 'Model');

/**
 * BeneficiaryPayment Test Case
 *
 */
class BeneficiaryPaymentTestCase extends CakeTestCase {
/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array('app.beneficiary_payment', 'app.beneficiary');

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();

		$this->BeneficiaryPayment = ClassRegistry::init('BeneficiaryPayment');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->BeneficiaryPayment);

		parent::tearDown();
	}

}
