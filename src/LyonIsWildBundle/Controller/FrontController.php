<?php
/**
 * Created by PhpStorm.
 * User: tangui
 * Date: 09/11/16
 * Time: 23:05
 */

namespace LyonIsWildBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class FrontController extends Controller
{
    public function indexAction(){
        $repository = $this->getDoctrine()->getRepository("LyonIsWildBundle:Place");
        $parcoursPats = $repository->getParcoursAleatoire();

        $parcoursRests = $repository->getParcoursRestauration();
        return $this->render('front/index.html.twig',
            array("parcoursPats" => $parcoursPats, "parcoursRests" => $parcoursRests)
        );

    }

}