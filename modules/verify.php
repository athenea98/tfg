

<?php

     include 'config1.php';
     if(isset($_POST['submit']))
     {
         $nm=$_POST['name'];
       
        $pass=$_POST['pass'];
        if( isset($nm) && isset($pass))
      {
        if(!empty($nm) && !empty($pass) )
        {


          
    
          $stmt = $conn->prepare("SELECT uid, login FROM user WHERE login= ? AND password=?"); 
            $stmt->execute(array($nm,$pass));

             
             $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
              // print_r($result);
            if(count($result))
            {
            
            $uid = $result[0]['uid'];
						$login = $result[0]['login'];
						session_start();
            // Use $HTTP_SESSION_VARS with PHP 4.0.6 or less
            
                $_SESSION['islogin'] ="1";
								$_SESSION['uid'] = $uid;
								$_SESSION['login'] = $login;
            
							header("location:../index.php?page=dashboard");
            }
            else
            {
               header("location:../index.php?invalid=y");
            }
            
            
          }else
          {
             header("location:../index.php?invalid=y");
          }
        }
      }

?>