<?php
 namespace Application\Controller;
 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;

 class AdminController extends AbstractActionController
 {


      public function indexAction()
          {

                 if ($this->isAllowed('controller/Application\Controller\Admin:admin')) {
                                   $slug = '';
                                   $id = '';
                                   $slug = $this->getEvent()->getRouteMatch()->getParam('slug');
                                   $id   = $this->getEvent()->getRouteMatch()->getParam('id');
                                     switch ($slug) {
                                            case 'page':
                                                     return $this->forward()->dispatch('Application\Controller\Admin',array('action' => 'page','param' =>$id  ));
                                                     break;
                                            case 'user':
                                                     return $this->forward()->dispatch('Application\Controller\Admin',array('action' => 'user','param' =>$id  ));
                                                     break;

                                             case 'updatepage':

                                                     $params = $this->params()->fromPost();
                                                     return $this->forward()->dispatch('Application\Controller\Admin',array('action' => 'updatepage','param' =>$params  ));
                                                     break;  
                                           case 'delpage':
                                                     return $this->forward()->dispatch('Application\Controller\Admin',array('action' => 'delpage','param' =>$id  ));
                                                     break;                                                                                                       
                                            default:
                                                     return $this->forward()->dispatch('Application\Controller\Admin',array('action' => 'admin'));
                                                     break;
                                    }
                      }else{


                        $this->redirect()->toRoute('home');
                      }
 
                //return new ViewModel();
         }
         
         
      public function adminAction(){
                
                return new ViewModel (
                );
			  }

         
      public function pageAction(){
             $param =    $this->params()->fromRoute('param',false);
             $pagesSrv = $this -> getServiceLocator()->get('pages');

             $page =     array();

             if ($param){
             
                     $page =     $pagesSrv ->  getPages($param); 
                     $page_res = $page[0];
                   }else{

                      $page_res = '';

                   }

            
                return new ViewModel (
                       array(
                          'p'     => $param,
                          'page'  => $page_res,
                  ));
        }


      public function userAction(){
                $param = $this->params()->fromRoute('param',false);
//если есть параметр 
                return new ViewModel (
                       array(
                          'p' => $param,
                  ));
        }

        public function updatepageAction(){

               $param = array();
               $param = $this->params()->fromRoute('param',false);
              
               $pagesSrv = $this -> getServiceLocator()->get('pages');
               if ($param['id']){
                       $page =     $pagesSrv ->  updatePages($param);
               }else{
                      $page =     $pagesSrv ->  insertPages($param);

               }
               
               $this->redirect()->toRoute('admin');
        }

         public function delpageAction(){

              
               $param = $this->params()->fromRoute('param',false);
               
               $pagesSrv = $this -> getServiceLocator()->get('pages');
               if ($param){
                       $page =     $pagesSrv ->  delPages($param);
               }
               
               $this->redirect()->toRoute('admin');
        }     

 }
