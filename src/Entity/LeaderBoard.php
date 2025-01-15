<?php

namespace App\Entity;

use App\Repository\LeaderBoardRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LeaderBoardRepository::class)]
class LeaderBoard
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    public function getId(): ?int
    {
        return $this->id;
    }
}
