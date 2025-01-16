<?php

namespace App\DataFixtures;

use App\Entity\Choice;
use App\Entity\Episode;
use App\Entity\Race;
use App\Entity\Story;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {

        
        

        $manager->flush();
    }
}
