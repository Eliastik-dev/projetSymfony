<?php

namespace App\Controller;

use App\Entity\Episode;
use App\Entity\Choice;
use App\Form\EpisodeType;
use App\Service\NavigationService;
use App\Repository\EpisodeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/episode')]
final class EpisodeController extends AbstractController
{

    public function __construct(
        private NavigationService $navigationService
    ) {}

    #[Route('/choose/{id}', name: 'app_episode_choose', methods: ['GET'])]
    public function choose(Choice $choice): Response
    {
        if($choice->getId() === 3111){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 3333,
            ]);
        }
        else if ($choice->getId() === 4321){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 4444,
            ]);
        }else if ($choice->getId() === 101){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 11111,
            ]);
        }else if ($choice->getId() === 102){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 11112,
            ]);
        }else if ($choice->getId() === 103){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 11113,
            ]);
        }else if ($choice->getId() === 104){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 11114,
            ]);
        }else if ($choice->getId() === 105){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 11115,
            ]);
        }else if ($choice->getId() === 106){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 11116,
            ]);
        }else if ($choice->getId() === 201){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 22221,
            ]);
        }else if ($choice->getId() === 202){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 22222,
            ]);
        }else if ($choice->getId() === 203){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 22223,
            ]);
        }else if ($choice->getId() === 204){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 22224,
            ]);
        }else if ($choice->getId() === 205){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 22225,
            ]);
        }else if ($choice->getId() === 206){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 22226,
            ]);
        }else if ($choice->getId() === 301){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 33331,
            ]);
        }else if ($choice->getId() === 302){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 33332,
            ]);
        }else if ($choice->getId() === 303){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 33333,
            ]);
        }else if ($choice->getId() === 304){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 33334,
            ]);
        }else if ($choice->getId() === 305){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 33335,
            ]);
        }else if ($choice->getId() === 306){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 33336,
            ]);
        }else if ($choice->getId() === 401){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 44441,
            ]);
        }else if ($choice->getId() === 402){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 44442,
            ]);
        }else if ($choice->getId() === 403){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 44443,
            ]);
        }else if ($choice->getId() === 404){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 44444,
            ]);
        }else if ($choice->getId() === 405){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 44445,
            ]);
        }else if ($choice->getId() === 406){
            return $this->redirectToRoute('app_episode_show', [
                'id' => 44446,
            ]);
        }
        $nextEpisode = $this->navigationService->getNextEpisode($choice);
   
       
        return $this->redirectToRoute('app_episode_show', [
            'id' => $nextEpisode->getId(),
        ]);
    }
    
    #[Route(name: 'app_episode_index', methods: ['GET'])]
    public function index(EpisodeRepository $episodeRepository): Response
    {
        return $this->render('episode/index.html.twig', [
            'episodes' => $episodeRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_episode_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $episode = new Episode();
        $form = $this->createForm(EpisodeType::class, $episode);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($episode);
            $entityManager->flush();

            return $this->redirectToRoute('app_episode_index', [], Response::HTTP_SEE_OTHER);
        }   

        return $this->render('episode/new.html.twig', [
            'episode' => $episode,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_episode_show', methods: ['GET'])]
    public function show(Episode $episode): Response
    {
        return $this->render('episode/show.html.twig', [
            'episode' => $episode,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_episode_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Episode $episode, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(EpisodeType::class, $episode);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_episode_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('episode/edit.html.twig', [
            'episode' => $episode,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_episode_delete', methods: ['POST'])]
    public function delete(Request $request, Episode $episode, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$episode->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($episode);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_episode_index', [], Response::HTTP_SEE_OTHER);
    }
}