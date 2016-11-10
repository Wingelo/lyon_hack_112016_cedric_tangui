<?php
/**
 * Created by PhpStorm.
 * User: tangui
 * Date: 09/11/16
 * Time: 14:47
 */

namespace LyonIsWildBundle\Services;
use Symfony\Component\DependencyInjection\Container;



class CategoryGenerator
{
    private $quantity;

    public function __construct($container, $quantity)
    {
        $this->quantity = $quantity;
        $this->container = $container;
    }

    public function getCategory()
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://download.data.grandlyon.com/wfs/rdata?SERVICE=WFS&VERSION=2.0.0&outputformat=GEOJSON&maxfeatures=" . $this->quantity );
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $output = json_decode(curl_exec($ch));
        curl_close($ch); // on ferme la connexion

        return $output->results;
    }
}