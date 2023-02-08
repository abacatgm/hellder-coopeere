<?php
namespace Piggly\Tests\Pix\Api\Entities;

use DateTime;
use PHPUnit\Framework\TestCase;
use Piggly\Pix\Api\Payloads\Entities\Refund;
use Piggly\Pix\Exceptions\InvalidFieldException;

/**
 * @coversDefaultClass \Piggly\Pix\Api\Payloads\Entities\Refund
 */
class RefundTest extends TestCase
{
	/**
	 * Assert if $payload is equals to $obj exported.
	 * 
	 * Anytime it runs will create 100 random unique
	 * payloads. It must assert all anytime.
	 *
	 * @covers ::import
	 * @covers ::export
	 * @dataProvider dataRefunds
	 * @test Expecting positive assertion.
	 * @param array $payload
	 * @param Refund $obj
	 * @return void
	 */
	public function isMatching ( array $payload, Refund $obj )
	{ $this->assertEquals($payload, $obj->export()); }

	/**
	 * Assert if $actual is equals to $expected.
	 * 
	 * Anytime it runs will create 100 random unique
	 * payloads. It must assert all anytime.
	 *
	 * @covers ::setAmount
	 * @covers ::setRequestedAt
	 * @covers ::setPaidAt
	 * @covers ::getAmount
	 * @covers ::getRequestedAt
	 * @covers ::getPaidAt
	 * @dataProvider dataFormats
	 * @test Expecting positive assertion.
	 * @param mixed $expected
	 * @param mixed $actual
	 * @return void
	 */
	public function isMatchingFormat ( $expected, $actual )
	{ $this->assertEquals($expected, $actual); }

	/**
	 * Assert if throw an exception.
	 *
	 * @covers ::setStatus
	 * @test Expecting positive assertion.
	 * @return void
	 */
	public function throwStatusException ()
	{ 
		$this->expectException(InvalidFieldException::class); 
		(new Refund())->setStatus('unknown');
	}

	/**
	 * A bunch of refunds to import to Refund payload.
	 * Provider to isMatching() method.
	 * Generated by fakerphp.
	 * @return array
	 */
	public function dataRefunds () : array
	{
		$arr = [];
		$faker = \Faker\Factory::create('pt_BR');

		for ( $i = 0; $i < 100; $i++ )
		{
			$payload = [
				'id' => $faker->regexify('[0-9A-Za-z]{25}'),
				'rtrId' => $faker->regexify('[0-9A-Za-z]{25}'),
				'valor' => \number_format($faker->randomFloat(2, 1, 999), 2, '.', ''),
				'status' => $faker->randomElement(Refund::STATUSES)
			];

			if ( $faker->boolean() )
			{ $payload['motivo'] = $faker->sentence(3); }

			if ( $faker->boolean() )
			{ 
				$payload['horario'] = []; 

				if ( $faker->boolean() )
				{ $payload['horario']['solicitacao'] = $faker->dateTimeBetween('-1 week', '+1 week')->format(DateTime::RFC3339); }

				if ( $faker->boolean() )
				{ $payload['horario']['liquidacao'] = $faker->dateTimeBetween('-1 week', '+1 week')->format(DateTime::RFC3339); }
			
				if ( empty($payload['horario']) )
				{ unset($payload['horario']); }
			}

			$arr[] = [ $payload, (new Refund())->import($payload) ];
		}

		return $arr;
	}

	/**
	 * A bunch of refunds to validate data.
	 * Provider to isMatchingFormat() method.
	 * Generated by fakerphp.
	 * @return array
	 */
	public function dataFormats () : array
	{
		$arr = [];
		$faker = \Faker\Factory::create('pt_BR');

		for ( $i = 0; $i < 100; $i++ )
		{
			$amount = $faker->randomFloat(2, 1, 999);
			$requestAt = $faker->dateTimeBetween('-1 week', '+1 week');
			$paidAt = $faker->dateTimeBetween('-1 week', '+1 week');

			$refund = new Refund();

			$refund
				->setAmount(\number_format($amount, 2, '.', ''))
				->setRequestedAt($requestAt->format(DateTime::RFC3339))
				->setPaidAt($paidAt->format(DateTime::RFC3339));

			$arr[] = [ $amount, $refund->getAmount() ];
			$arr[] = [ $requestAt, $refund->getRequestedAt() ];
			$arr[] = [ $paidAt, $refund->getPaidAt() ];
		}

		return $arr;
	}
}