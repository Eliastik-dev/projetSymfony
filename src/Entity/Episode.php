<?php

namespace App\Entity;

use App\Repository\EpisodeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EpisodeRepository::class)]
class Episode
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $episodeDescription = null;

    #[ORM\ManyToOne(inversedBy: 'whatEpisode')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Story $story = null;

    /**
     * @var Collection<int, Choice>
     */
    #[ORM\OneToMany(targetEntity: Choice::class, mappedBy: 'episode')]
    private Collection $whatChoice;

    public function __construct()
    {
        $this->whatChoice = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEpisodeDescription(): ?string
    {
        return $this->episodeDescription;
    }

    public function setEpisodeDescription(string $episodeDescription): static
    {
        $this->episodeDescription = $episodeDescription;

        return $this;
    }

    public function getStory(): ?Story
    {
        return $this->story;
    }

    public function setStory(?Story $story): static
    {
        $this->story = $story;

        return $this;
    }

    /**
     * @return Collection<int, Choice>
     */
    public function getWhatChoice(): Collection
    {
        return $this->whatChoice;
    }

    public function addWhatChoice(Choice $whatChoice): static
    {
        if (!$this->whatChoice->contains($whatChoice)) {
            $this->whatChoice->add($whatChoice);
            $whatChoice->setEpisode($this);
        }

        return $this;
    }

    public function removeWhatChoice(Choice $whatChoice): static
    {
        if ($this->whatChoice->removeElement($whatChoice)) {
            // set the owning side to null (unless already changed)
            if ($whatChoice->getEpisode() === $this) {
                $whatChoice->setEpisode(null);
            }
        }

        return $this;
    }
}
