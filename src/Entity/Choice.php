<?php

namespace App\Entity;

use App\Repository\ChoiceRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ChoiceRepository::class)]
class Choice
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $choiceDescription = null;

    #[ORM\ManyToOne(inversedBy: 'whatChoice')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Episode $episode = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getChoiceDescription(): ?string
    {
        return $this->choiceDescription;
    }

    public function setChoiceDescription(string $choiceDescription): static
    {
        $this->choiceDescription = $choiceDescription;

        return $this;
    }

    public function getEpisode(): ?Episode
    {
        return $this->episode;
    }

    public function setEpisode(?Episode $episode): static
    {
        $this->episode = $episode;

        return $this;
    }
}
