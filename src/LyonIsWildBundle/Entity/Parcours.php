<?php

namespace LyonIsWildBundle\Entity;

/**
 * Parcours
 */
class Parcours
{
    /**
     * @var int
     */
    private $id;

    /**
     * @var string
     */
    private $parcours;

    /**
     * @var string
     */
    private $type;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set parcours
     *
     * @param string $parcours
     *
     * @return Parcours
     */
    public function setParcours($parcours)
    {
        $this->parcours = $parcours;

        return $this;
    }

    /**
     * Get parcours
     *
     * @return string
     */
    public function getParcours()
    {
        return $this->parcours;
    }

    /**
     * Set type
     *
     * @param string $type
     *
     * @return Parcours
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }
    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    private $place;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->place = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add place
     *
     * @param \LyonIsWildBundle\Entity\Place $place
     *
     * @return Parcours
     */
    public function addPlace(\LyonIsWildBundle\Entity\Place $place)
    {
        $this->place[] = $place;

        return $this;
    }

    /**
     * Remove place
     *
     * @param \LyonIsWildBundle\Entity\Place $place
     */
    public function removePlace(\LyonIsWildBundle\Entity\Place $place)
    {
        $this->place->removeElement($place);
    }

    /**
     * Get place
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getPlace()
    {
        return $this->place;
    }
}
