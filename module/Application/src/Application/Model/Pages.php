<?php

namespace Application\Model;


use Zend\Db\TableGateway\TableGateway;
use Zend\Db\TableGateway\Feature\RowGatewayFeature;

class Pages extends TableGateway
{
    protected $tableName  = 't_pages';
    protected $idCol = 'id';
 

    public function __construct($adapter)
    {
        parent::__construct(
            $this->tableName,
            $adapter,
            new RowGatewayFeature($this->idCol)
        );

 
    }

    public function getPages($id=null)
    { 

        $query = "
            SELECT * from t_pages ".(($id)? "where id='".$id."'": '')."order by num";

    
                            
         $adapter = $this->getAdapter();
		 $results = $this->FetchAll($adapter, $query);                            
        return $results;
    } 


  
  public function updatePages($data=null)
    { 
         $query = sprintf("UPDATE t_pages SET title='%s', content='%s', num='%s' ".(($data) ? " WHERE id='%s'" : ''),
              $data['title'],
              $data['content'],
              $data['num'],
              $data['id']
            );
  
                            
         $adapter = $this->getAdapter();
                                    
         $statement = $adapter->createStatement($query);
         $results = $statement->execute();
         
        return $results;
    } 

  
  public function insertPages($data)
    {
         $query = sprintf("INSERT INTO t_pages (title,content,num) VALUES ('%s', '%s', '%s')",
           
              $data['title'],
              $data['content'],
              $data['num']
              
            );

                            
         $adapter = $this->getAdapter();
                                    
         $statement = $adapter->createStatement($query);
         $results = $statement->execute();
         
        return $results;
    }   
      
  public function delPages($id)
    {
         $query = sprintf("DELETE FROM t_pages WHERE id='%s'",$id);

                            
         $adapter = $this->getAdapter();
                                    
         $statement = $adapter->createStatement($query);
         $results = $statement->execute();
         
        return $results;
    }     
    
   function FetchAll($adapter, $sql, $params=null)
    {
        $statement = $adapter->createStatement($sql, $params);
        $results = $statement->execute();
        /*echo('<pre>');
        var_dump($statement);
        echo('</pre>');*/
        $return_arr = array();
        foreach ($results as $result) {
            $return_arr[] = $result;
        }

        return $return_arr;
    }
    
     function FetchOne($adapter, $sql, $params=null)
    {
        $return_arr = self::FetchAll($adapter, $sql, $params);
        return $return_arr ? $return_arr[0] : null;
    } 
        
}
