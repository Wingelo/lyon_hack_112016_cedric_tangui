<?php

namespace LyonIsWildBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('LyonIsWildBundle:Default:index.html.twig');
    }
    public function register_contentAction()
	{
		return $this->render('LyonIsWildBundle:Registration:register_content.html.twig');
	}
}
