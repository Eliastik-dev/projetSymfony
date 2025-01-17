<?php

namespace App\Repository;

use App\Entity\Story;
use App\Entity\Episode;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

class EpisodeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Episode::class);
    }

    /**
     * Récupère les épisodes liés à une histoire spécifique.
     */
    public function findByStory(Story $story): array
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.story = :story')
            ->setParameter('story', $story)
            ->orderBy('e.id', 'ASC')
            ->getQuery()
            ->getResult();
    }
}
