<?php

namespace App\Entity;

use App\Repository\LeaderBoardRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LeaderBoardRepository::class)]
class LeaderBoard
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    /**
     * @var Collection<int, Player>
     */
    #[ORM\OneToMany(targetEntity: Player::class, mappedBy: 'leaderBoard')]
    private Collection $playerPseudo;

    /**
     * @var Collection<int, Race>
     */
    #[ORM\OneToMany(targetEntity: Race::class, mappedBy: 'leaderBoard')]
    private Collection $playerStats;

    public function __construct()
    {
        $this->playerPseudo = new ArrayCollection();
        $this->playerStats = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Player>
     */
    public function getPlayerPseudo(): Collection
    {
        return $this->playerPseudo;
    }

    public function addPlayerPseudo(Player $playerPseudo): static
    {
        if (!$this->playerPseudo->contains($playerPseudo)) {
            $this->playerPseudo->add($playerPseudo);
            $playerPseudo->setLeaderBoard($this);
        }

        return $this;
    }

    public function removePlayerPseudo(Player $playerPseudo): static
    {
        if ($this->playerPseudo->removeElement($playerPseudo)) {
            // set the owning side to null (unless already changed)
            if ($playerPseudo->getLeaderBoard() === $this) {
                $playerPseudo->setLeaderBoard(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Race>
     */
    public function getPlayerStats(): Collection
    {
        return $this->playerStats;
    }

    public function addPlayerStat(Race $playerStat): static
    {
        if (!$this->playerStats->contains($playerStat)) {
            $this->playerStats->add($playerStat);
            $playerStat->setLeaderBoard($this);
        }

        return $this;
    }

    public function removePlayerStat(Race $playerStat): static
    {
        if ($this->playerStats->removeElement($playerStat)) {
            // set the owning side to null (unless already changed)
            if ($playerStat->getLeaderBoard() === $this) {
                $playerStat->setLeaderBoard(null);
            }
        }

        return $this;
    }
}
