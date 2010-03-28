<?php

class AppPermissionsTask extends Shell {
	
	/**
	* Will hold a reference to the Aro model
	*/
	
	var $Aro;
	
	/**
	* Will hold a reference to the Acl component
	*/
	
	var $Acl;
	
	/**
	* This method should be filled with stuff like this:
	* $this->Acl->deny(array('model'=>'Group','foreign_key'=>3),'controllers/Accounts');
	* $this->Acl->allow(array('model'=>'Group','foreign_key'=>3),'controllers/Accounts/edit');
	* 
	* You can also give some feedback to the screen with:
	* $this->out(__('Working hard...', true));
	* 
	*/

	function execute() {	
		

	}
	
	function allow($item, $path) {
		if($this->Acl->allow($item, $path)) {
			$this->out('Allowed '.$item['model'].' '.$item['foreign_key'].' to '.$path."\n");
		} else {
			$this->out('ERROR: Allowing '.$item['model'].' '.$item['foreign_key'].' to '.$path."\n");
		}
	}
}
?>