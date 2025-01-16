<?php

namespace App\Entity;

use App\Repository\PlayerRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlayerRepository::class)]
class Player
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $pseudo = null;

    #[ORM\ManyToOne]
    #[ORM\JoinColumn(nullable: false)]
    private ?Race $SelectedRace = null;

    #[ORM\ManyToOne(inversedBy: 'playerPseudo')]
    private ?LeaderBoard $leaderBoard = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPseudo(): ?string
    {
        return $this->pseudo;
    }

    public function setPseudo(string $pseudo): static
    {
        $this->pseudo = $pseudo;

        return $this;
    }

    public function getSelectedRace(): ?Race
    {
        return $this->SelectedRace;
    }

    public function setSelectedRace(?Race $SelectedRace): static
    {
        $this->SelectedRace = $SelectedRace;

        return $this;
    }

    public function getLeaderBoard(): ?LeaderBoard
    {
        return $this->leaderBoard;
    }

    public function setLeaderBoard(?LeaderBoard $leaderBoard): static
    {
        $this->leaderBoard = $leaderBoard;

        return $this;
    }
}
