<?php

class QuickstartDataGrid4TestCase extends PradoGenericSeleniumTest
{
	function test()
	{
		$this->open("../../demos/quickstart/index.php?page=Controls.Samples.TDataGrid.Sample4&amp;notheme=true&amp;lang=en", "");

		// verify the 2nd row of data
		$this->verifyTextPresent("Design Patterns: Elements of Reusable Object-Oriented Software", "");
		$this->verifyTextPresent("Addison-Wesley Professional", "");
		$this->verifyTextPresent("$47.04", "");
		$this->verifyAttribute('ctl0_body_DataGrid_ctl2_ctl5@checked','regexp:true|checked');
		$this->verifyAttribute('ctl0_body_DataGrid_ctl2_ctl5@disabled','regexp:true|disabled');

		// verify sorting
		$this->clickAndWait("link=Book Title", "");
		$this->assertEquals($this->getEval('this.browserbot.findElement("ctl0_body_DataGrid_ctl1_ctl5").hasAttribute("checked")'), 'false');
		$this->clickAndWait("link=Publisher", "");
		$this->assertEquals($this->getEval('this.browserbot.findElement("ctl0_body_DataGrid_ctl6_ctl5").hasAttribute("checked")'), 'false');
		$this->clickAndWait("link=Price", "");
		$this->assertEquals($this->getEval('this.browserbot.findElement("ctl0_body_DataGrid_ctl2_ctl5").hasAttribute("checked")'), 'false');
		$this->clickAndWait("link=In-stock", "");
		$this->assertEquals($this->getEval('this.browserbot.findElement("ctl0_body_DataGrid_ctl1_ctl5").hasAttribute("checked")'), 'false');
		$this->clickAndWait("link=Rating", "");
		$this->assertEquals($this->getEval('this.browserbot.findElement("ctl0_body_DataGrid_ctl4_ctl5").hasAttribute("checked")'), 'false');
	}
}
