<?php

namespace LyonIsWildBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class LyonIsWildBundle extends Bundle
{
	public function getParent(){
		return "FOSUserBundle";

	}
}
