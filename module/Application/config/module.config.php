<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

return array(
    'router' => array(
        'routes' => array(
            'home' => array(
               'type' => 'Literal',
               'options' => array(
               'route' => '/',
               
                'defaults' => array(
                        'controller' => 'Application\Controller\Index',
                        'action'     => 'index',
                    ),
                ),
            ),
           'admin' => array(
                'type'    => 'Literal',
                'options' => array(
                    // Change this to something specific to your module
                    'route'    => '/admin',
                    'defaults' => array(
                        // Change this value to reflect the namespace in which
                        // the controllers for your module are found
                        '__NAMESPACE__' => 'Application\Controller',
                        'controller'    => 'Admin',
                        'action'        => 'index',
                    ),
                ),

                'may_terminate' => true,
                
                  'child_routes' => array(
                    // Segment route for viewing one blog post
                    'pages' => array(
                                    'type' => 'Zend\Mvc\Router\Http\Regex',
                                    'options' => array(
                                         'regex' => '/(?<slug>[a-zA-Z0-9_-]+)/(?<id>[0-9]*)',
                                         'spec' => '/%slug%/%id%',                        
                                         'defaults' => array(
                                                'action' => 'index',
                            ),
                        ),
                    ) ,)                 

            ),
            // The following is a route to simplify getting started creating
            // new controllers and actions without needing to create a new
            // module. Simply drop new controllers in, and you can access them
            // using the path /application/:controller/:action
            'application' => array(
                'type'    => 'Literal',
                'options' => array(
                    'route'    => '/application',
                    'defaults' => array(
                        '__NAMESPACE__' => 'Application\Controller',
                        'controller'    => 'Index',
                        'action'        => 'index',
                    ),
                ),
                'may_terminate' => true,
                
'child_routes' => array(
                    // Segment route for viewing one blog post
                    'post' => array(
                        'type' => 'segment',
                        'options' => array(
                            'route' => '/[:slug]',
                            'constraints' => array(
                                'slug' => '[a-zA-Z0-9_-]+',
                            ),
                            'defaults' => array(
                                'action' => 'index',
                            ),
                        ),
                    ) ,)               
              /*  'child_routes' => array(
                    'default' => array(
                        'type'    => 'Segment',
                        'options' => array(
                            'route'    => '/[:controller[/:action]]',
                            'constraints' => array(
                                'controller' => '[a-zA-Z][a-zA-Z0-9_-]*',
                                'action'     => '[a-zA-Z][a-zA-Z0-9_-]*',
                            ),
                            'defaults' => array(
                            ),
                        ),
                    ),
                ),*/
            ),
        ),
    ),
    'service_manager' => array(
        'abstract_factories' => array(
            'Zend\Cache\Service\StorageCacheAbstractServiceFactory',
            'Zend\Log\LoggerAbstractServiceFactory',
        ),
        'factories' => array(
            'translator' => 'Zend\Mvc\Service\TranslatorServiceFactory',
       
       
            'Zend\Db\Adapter\Adapter' => function ($sm) {
                $config = $sm->get('Config');
                
                $dbParams = $config['db'];

                return new Zend\Db\Adapter\Adapter(
                    array(
                        'driver'    => 'Pdo',
                        'dsn'       => $dbParams['dsn'],
                        'database'  => $dbParams['database'],
                        'username'  => $dbParams['username'],
                        'password'  => $dbParams['password']
                    )
                );
            },
      
    /*        'users' => function ($sm) {
                return new \Users\Model\Users(
                    $sm->get('Zend\Db\Adapter\Adapter')
                );
            },   */
            'pages' => function ($sm) {
                return new \Application\Model\Pages(
                    $sm->get('Zend\Db\Adapter\Adapter')
                );
            },
         
                     
    ),
    ),
    'translator' => array(
        'locale' => 'en_US',
        'translation_file_patterns' => array(
            array(
                'type'     => 'gettext',
                'base_dir' => __DIR__ . '/../language',
                'pattern'  => '%s.mo',
            ),
        ),
    ),
    'controllers' => array(
        'invokables' => array(
            'Application\Controller\Index' => 'Application\Controller\IndexController',
            'Application\Controller\Admin' => 'Application\Controller\AdminController',
        ),
    ),
    'view_manager' => array(
        'display_not_found_reason' => true,
        'display_exceptions'       => true,
        'doctype'                  => 'HTML5',
        'not_found_template'       => 'error/404',
        'exception_template'       => 'error/index',
        'template_map' => array(
            'layout/layout_main'           => __DIR__ . '/../view/layout/layout_main.twig',
            'application/index/index' => __DIR__ . '/../view/application/index/index.phtml',
            'error/404'               => __DIR__ . '/../view/error/404.phtml',
            'error/403'               => __DIR__ . '/../view/error/403.phtml',
            'error/index'             => __DIR__ . '/../view/error/index.phtml',
        ),
        'template_path_stack' => array(
            __DIR__ . '/../view',
        ),
    ),
    // Placeholder for console routes
    'console' => array(
        'router' => array(
            'routes' => array(
            ),
        ),
    ),
    'view_helpers' => array(
/*
               'invokables' => array(

                        'mainMenu' => 'Application\View\Helper\MainMenu'
              )*/
              
     'factories' => array(
                'MainMenuHelper' => function($sm) {
                    $helper = new \Application\View\Helper\MainMenuHelper();
                    //$helper->getMainMenu($sm, 'Users\Model\Users');>getServiceLocator()----  -> getServiceLocator()->get('users')
                    $helper->getMainMenu($sm -> getServiceLocator()->get('pages'));

                    return $helper;
                },              
        )
        ),
);
