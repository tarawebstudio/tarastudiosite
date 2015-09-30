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
use Zend\Mail\Message;
use Zend\Mail\Transport\Smtp as SmtpTransport;
use Zend\Mime\Message as MimeMessage;
use Zend\Mime\Part as MimePart;
use Zend\Mail\Transport\SmtpOptions;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
       		
		$pagesSrv    = $this -> getServiceLocator()->get('pages');
        $pages = array();
        $pages = $pagesSrv ->  getPages(); 
        return new ViewModel(array(
             
                'pages'  => $pages
        ));
    }

public function msgAction(){


//////////
$systemSrv    = $this -> getServiceLocator()->get('system');

$message = new Message();
$message->addTo('vikitina@gmail.com')
    ->addFrom('vikitina@yandex.ru')
    ->setSubject('Test send mail using ZF2');
    
// Setup SMTP transport using LOGIN authentication
$transport = new SmtpTransport();
$options   = new SmtpOptions(array(
    'host'              => 'smtp.gmail.com',
    'connection_class'  => 'login',
    'connection_config' => array(
        'ssl'       => 'tls',
      
        'username' => $systemSrv->getSystemByName('email_username'),
        'password' => $systemSrv->getSystemByName('email_passw')
    ),
    'port' => 587,
));

$html = new MimePart('<b>heii, <i>sorry</i>, i\'m going late</b>');
$html->type = "text/html";

$body = new MimeMessage();
$body->addPart($html);

$message->setBody($body);

$transport->setOptions($options);
$transport->send($message);
        
    }
}
