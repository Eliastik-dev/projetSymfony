<?php

namespace App\Service;

use App\Entity\Choice;
use App\Entity\Episode;
use App\Repository\ChoiceRepository;
use App\Repository\EpisodeRepository;

class NavigationService
{
    public function __construct(
        private EpisodeRepository $episodeRepository,
        private ChoiceRepository $choiceRepository
    ) {}

    public function getNextEpisode(Choice $choice): ?Episode
    {
        // Récupère l'épisode suivant basé sur le choix sélectionné
        $nextEpisodeId = (int) $choice->getId();
        return $this->episodeRepository->find($nextEpisodeId);
    }
}
