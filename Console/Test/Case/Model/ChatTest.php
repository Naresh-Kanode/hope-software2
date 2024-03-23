<?php
/* Chat Test cases generated on: 2024-01-22 12:32:18 : 1705926738*/
App::uses('Chat', 'Model');

/**
 * Chat Test Case
 *
 */
class ChatTestCase extends CakeTestCase {
/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();

		$this->Chat = ClassRegistry::init('Chat');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Chat);

		parent::tearDown();
	}

}
