<?php

namespace App\Form;

use App\Entity\Race;
use App\Entity\Story;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RaceType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('strength')
            ->add('intelligence')
            ->add('wisdom')
            ->add('agility')
            ->add('hp')
            ->add('whatStory', EntityType::class, [
                'class' => Story::class,
                'choice_label' => 'id',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Race::class,
        ]);
    }
}
