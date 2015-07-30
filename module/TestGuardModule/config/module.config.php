<?php
return array(
    'controllers' => array(
        'invokables' => array(
            'TestGuardModule\Controller\Guest' => 'TestGuardModule\Controller\GuestController',
            'TestGuardModule\Controller\User' => 'TestGuardModule\Controller\UserController',
         //   'TestGuardModule\Controller\Admin' => 'TestGuardModule\Controller\AdminController',
        ),
    ),
    'router' => array(
        'routes' => array(
            'guest' => array(
                'type'    => 'Literal',
                'options' => array(
                    // Change this to something specific to your module
                    'route'    => '/home',
                    'defaults' => array(
                        // Change this value to reflect the namespace in which
                        // the controllers for your module are found
                        '__NAMESPACE__' => 'TestGuardModule\Controller',
                        'controller'    => 'Guest',
                        'action'        => 'index',
                    ),
                ),

            ),
            'user' => array(
                'type'    => 'Literal',
                'options' => array(
                    // Change this to something specific to your module
                    'route'    => '/user',
                    'defaults' => array(
                        // Change this value to reflect the namespace in which
                        // the controllers for your module are found
                        '__NAMESPACE__' => 'TestGuardModule\Controller',
                        'controller'    => 'User',
                        'action'        => 'index',
                    ),
                ),

            ), 
 /*           
            'admin' => array(
                'type'    => 'Literal',
                'options' => array(
                    // Change this to something specific to your module
                    'route'    => '/admin',
                    'defaults' => array(
                        // Change this value to reflect the namespace in which
                        // the controllers for your module are found
                        '__NAMESPACE__' => 'TestGuardModule\Controller',
                        'controller'    => 'Admin',
                        'action'        => 'index',
                    ),
                ),

            ),                       
  */          
        ),
    ),
    'view_manager' => array(
        'template_map' => array(
            'layout/layout_main'           => __DIR__ . '/../view/layout/layout_main.twig',
             'layout/layout_admin'           => __DIR__ . '/../view/layout/layout_admin.twig',

        ),
        'template_path_stack' => array(
            __DIR__ . '/../view',
        ),
    ),
);
