<?php
return array(
'bjyauthorize' => array(

           'default_role' => 'guest',
           'identity_provider' => 'BjyAuthorize\Provider\Identity\ZfcUserZendDb',
           'role_providers' => array(
                          'BjyAuthorize\Provider\Role\ZendDb' => array(
                              'table' => 'user_role',
                              'role_id_field' => 'roleId',
                              'parent_role_field' => 'parent_id',
                             ),           
           ),
           'guards' => array(
           
           
            'BjyAuthorize\Guard\Controller' => array(
            
                      array(
                          'controller' => 'Application\Controller\Admin',
                          'action' => array('index'),
                          'roles' => array('guest', 'user')
                          ),
                       array(
                          'controller' => 'Application\Controller\Admin',
                          'action' => array('admin'),
                          'roles' => array('admin')
                          ),                         
                          
                      array('controller' => 'Application\Controller\Index', 'roles' => array('guest', 'user')),
                      
                       array(
                          'controller' => 'Application\Controller\Admin',
                          'action' => array('admin'),
                          'roles' => array('admin')
                          ), 
                      array(
                    'controller' => 'zfcuser',
                    'action' => array('index'),
                    'roles' => array('guest', 'user'),
                ),
                array(
                    'controller' => 'zfcuser',
                    'action' => array('login', 'authenticate', 'register'),
                    'roles' => array('guest'),
                ),
                array(
                    'controller' => 'zfcuser',
                    'action' => array('logout'),
                    'roles' => array('user'),
                ),
            
            ),
               /*       'BjyAuthorize\Guard\Route' => array(                   

                                   array('route' => 'guest', 'roles' => array('guest', 'user')),
                                   array('route' => 'home', 'roles' => array('guest', 'user')),
                                   array('route' => 'user', 'roles' => array('user')),
                                   array('route' => 'admin', 'roles' => array('admin')),  
                                   array('route' => 'zfcuser', 'roles' => array('guest','user')),  
                                   array('route' => 'zfcuser/login', 'roles' => array('guest')),  
                                   array('route' => 'zfcuser/logout', 'roles' => array('user','admin')),  
                                   array('route' => 'zfcuser/register', 'roles' => array('guest')),  
                                   array('route' => 'zfcuser/changepassword', 'roles' => array('user','admin')),  
                                   array('route' => 'zfcuser/changeemail', 'roles' => array('user','admin')),  
                         
                                

                
),    */       
           ),

),
);

