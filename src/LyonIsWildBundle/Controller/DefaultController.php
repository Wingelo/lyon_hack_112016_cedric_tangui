<?php

namespace LyonIsWildBundle\Controller;

use LyonIsWildBundle\Entity\Place;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('LyonIsWildBundle:Default:index.html.twig');
    }

    public function loadAction()
    {
        $em = $this->getDoctrine()->getManager();

        $url = 'json/rdata.json';
        $contents = file_get_contents($url);
        $results = json_decode($contents, true);
        $sites = $results["features"];
        foreach ($sites as $site){
                $siteData = new Place();
                $siteData->setType($site["properties"]["type"]);
                $siteData->setName($site["properties"]["nom"]);
                $siteData->setAddress($site["properties"]["adresse"]);
                $siteData->setPostal($site["properties"]["codepostal"]);
                $siteData->setCity($site["properties"]["commune"]);
                $siteData->setPhonenumber($site["properties"]["telephone"]);
                $siteData->setEmail($site["properties"]["email"]);
                $siteData->setWebsite($site["properties"]["siteweb"]);
                $siteData->setFecebook($site["properties"]["facebook"]);
                $siteData->setPrice($site["properties"]["tarifsmax"]);
                $siteData->setLongitude($site["geometry"]["coordinates"][0]);
                $siteData->setLatitude($site["geometry"]["coordinates"][1]);
                $em->persist($siteData);

        }
        $em->flush();


        return $em;


    }
}
