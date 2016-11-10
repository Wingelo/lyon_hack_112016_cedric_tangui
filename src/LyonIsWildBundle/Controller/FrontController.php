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
    public function ParcoursAleatoireAction(){
        $repository = $this->getDoctrine()->getRepository("LyonIsWildBundle:Place");
        $parcoursAleatoires = $repository->getParcoursAleatoire();
        return $this->render('front/ParcoursAleatoire.html.twig',
            array("parcoursAleatoires" => $parcoursAleatoires)
        );

    }
	public function ParcoursPatrimoineCulturelAction(){
		$repository = $this->getDoctrine()->getRepository("LyonIsWildBundle:Place");
		$parcoursPatrimoine = $repository->getParcoursPatrimoineCulturel();
		return $this->render('front/ParcoursPatrimoineCulturel.html.twig',
			array("parcoursPatrimoine" => $parcoursPatrimoine)
		);

	}
	public function ParcoursRestaurationsAction(){
		$repository = $this->getDoctrine()->getRepository("LyonIsWildBundle:Place");
		$parcoursRestaurations = $repository->getParcoursRestaurations();
		return $this->render('front/ParcoursRestaurations.html.twig',
			array("parcoursRestaurations" => $parcoursRestaurations)
		);
	}
	public function ParcoursRestaurationsLuxeAction(){
		$repository = $this->getDoctrine()->getRepository("LyonIsWildBundle:Place");
		$parcoursRestaurationsLuxe = $repository->getParcoursRestaurationsLuxe();
		return $this->render('front/ParcoursRestaurationsLuxe.html.twig',
			array("ParcoursRestaurationsLuxe" => $parcoursRestaurationsLuxe)
			);
	}




}