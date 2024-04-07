<?php

class CalculatorTest extends \PHPUnit\Framework\TestCase {
    public function testAdd(){
        $calculator = new App\Calculator; 
        $result = $calculator->add(20,5);

        $this->assertEquals(25, $result);
    }
    public function testMultiply(){
        $calculator= new App\Calculator;
        $result = $calculator->multiply(10,5);
        $this->assertEquals(50, $result);
    }
}

?>