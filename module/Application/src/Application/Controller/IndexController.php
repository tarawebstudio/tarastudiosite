<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
		//$usersSrv    = $this -> getServiceLocator()->get('users');
		$pagesSrv    = $this -> getServiceLocator()->get('pages');
		
        $param = $this->getEvent()->getRouteMatch()->getParam('slug');
        $pages = array();
        $pages = $pagesSrv ->  getPages(); 
       
		
	/*		
		foreach ($pages as $key=>$page) {
			//var_dump($page);echo '<br />-------------------------------------------------<br/>';
			echo '<br />-------------------1 variant -page[content]-----------------------------<br/>'.$page['content'];
			echo $pages[$key]['content'] = htmlspecialchars_decode($page['content']).'<br />-------------------------------------------------<br/>';
			
			}
      */  
        return new ViewModel(array(
                'param'  => $param,
                'pages'  => $pages
        ));
    }
    public function viewAction()
    {
		
		
        return new ViewModel();
    }   
        public function view1Action()
    {
		
		echo $this->getEvent()->getRouteMatch()->getParam('slug1');
        return new ViewModel();
    }
         public function menuAction()
    {
		$usersSrv    = $this -> getServiceLocator()->get('users');
        
        
        $users = $usersSrv ->  getUsers(); 
        
        return (array(
                
                'users'  => $users
        ));
    }   
        
}
