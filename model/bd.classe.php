<?php
 
class database {
 
    protected $_host = 'localhost';
    protected $_dbname = 'mediaschool';
    protected $_username = 'adminJP';
    protected $_password = 'JpCb2009*';
 
    public function __construct($_host, $_dbname, $_username, $_password) {
        $this->_host=$_host;
        $this->username=$_username;
        $this->_password=$_password;
        $this->_dbname=$_dbname;
        
    }
 
    public function PDOConnexion() {
        $bdd = new PDO('mysql:host='.$this->_host.'; dbname='.$this->_dbname, $this->_username, $this->_password);
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
 
 
}
 
 
?>