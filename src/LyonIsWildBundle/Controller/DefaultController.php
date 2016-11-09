<?php

namespace LyonIsWildBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('LyonIsWildBundle:Default:index.html.twig');
    }
}
