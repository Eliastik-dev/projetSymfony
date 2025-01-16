<?php

namespace App\Controller;

use App\Entity\Choice;
use App\Form\ChoiceType;
use App\Repository\ChoiceRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/choice')]
final class ChoiceController extends AbstractController
{
    #[Route(name: 'app_choice_index', methods: ['GET'])]
    public function index(ChoiceRepository $choiceRepository): Response
    {
        return $this->render('choice/index.html.twig', [
            'choices' => $choiceRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_choice_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $choice = new Choice();
        $form = $this->createForm(ChoiceType::class, $choice);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($choice);
            $entityManager->flush();

            return $this->redirectToRoute('app_choice_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('choice/new.html.twig', [
            'choice' => $choice,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_choice_show', methods: ['GET'])]
    public function show(Choice $choice): Response
    {
        return $this->render('choice/show.html.twig', [
            'choice' => $choice,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_choice_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Choice $choice, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ChoiceType::class, $choice);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_choice_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('choice/edit.html.twig', [
            'choice' => $choice,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_choice_delete', methods: ['POST'])]
    public function delete(Request $request, Choice $choice, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$choice->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($choice);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_choice_index', [], Response::HTTP_SEE_OTHER);
    }
}
