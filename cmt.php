 <?php
 session_start();
 include 'db.php';
 ?> 
 <?php
 //echo 'test';
 $bk=$_SESSION['bk'];
 echo '
 <center>
   <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-9">

          <div class="card card-outline-secondary my-4">
            <div class="card-header">';
            
                      
          echo '
              User Comments
            </div>
            <div class="card-body">';
            $c=$mysqli->query("select * from comment where bid=$bk order by id desc");
            while($ch=mysqli_fetch_array($c)){
              $puid=$ch['puid'];
              $u=$mysqli->query("select * from puser where id=$puid");
              $us=mysqli_fetch_array($u);

                 echo '<p>'.$ch['cmt'].'</p>
              <small class="text-muted"> by '.strtoupper($us['name']).' on '.$ch['date'].'</small>
              <hr>';
            }
             
   echo '       </div>
          </div>
          <!-- /.card -->


                  </div>
        <!-- /.col-lg-9 -->

      </div>

    </div>
    <!-- /.container --></center>';
    ?>
    