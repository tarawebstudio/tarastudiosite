<?php
 namespace TestGuardModule\Controller;
 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;

 class UserController extends AbstractActionController
 {


      public function initAction()
          {


                return new ViewModel();
         }
 }
