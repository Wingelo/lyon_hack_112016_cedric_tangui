<?php
	/**
	 * Created by PhpStorm.
	 * User: apprenti
	 * Date: 09/11/16
	 * Time: 19:33
	 */

	namespace LyonIsWildBundle\Form;



	use Symfony\Component\Form\AbstractType;
	use Symfony\Component\Form\FormBuilderInterface;

	class RegistrationType extends AbstractType
	{
		public function buildForm(FormBuilderInterface $builder, array $options)
		{
			$builder
				->add('firstname', 'text', array(
					'label' => "Nom"
				))
				->add('lastname', 'text', array(
					'label' => "Prénom"
				))
				->add('pays', 'text', array(
			'label' => 'Pays'
		))
				->add('city', 'text', array(
			'label' => 'Ville'
		));


		}

		public function getParent()
		{
			return 'FOS\UserBundle\Form\Type\RegistrationFormType';
		}
		public function getBlockPrefix()
		{
			return 'app_user_registration';
		}



	}