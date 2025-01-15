<?php

namespace App\Entity;

use App\Repository\StoryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: StoryRepository::class)]
class Story
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $storyDescription = null;

    /**
     * @var Collection<int, Episode>
     */
    #[ORM\OneToMany(targetEntity: Episode::class, mappedBy: 'story')]
    private Collection $whatEpisode;

    public function __construct()
    {
        $this->whatEpisode = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getStoryDescription(): ?string
    {
        return $this->storyDescription;
    }

    public function setStoryDescription(string $storyDescription): static
    {
        $this->storyDescription = $storyDescription;

        return $this;
    }

    /**
     * @return Collection<int, Episode>
     */
    public function getWhatEpisode(): Collection
    {
        return $this->whatEpisode;
    }

    public function addWhatEpisode(Episode $whatEpisode): static
    {
        if (!$this->whatEpisode->contains($whatEpisode)) {
            $this->whatEpisode->add($whatEpisode);
            $whatEpisode->setStory($this);
        }

        return $this;
    }

    public function removeWhatEpisode(Episode $whatEpisode): static
    {
        if ($this->whatEpisode->removeElement($whatEpisode)) {
            // set the owning side to null (unless already changed)
            if ($whatEpisode->getStory() === $this) {
                $whatEpisode->setStory(null);
            }
        }

        return $this;
    }
}
