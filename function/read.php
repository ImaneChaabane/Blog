    <?php
      if(mysqli_num_rows($query_run)>0)
      {
        while($row = mysqli_fetch_assoc($query_run))
        {
          ?>
           <tbody role="rowgroup">
          <tr class="trLine" role="row">
            <td  role="cell"><?php echo $row['title']; ?></td>
            <td  role="cell"><?php echo $row['subtitle']; ?></td>
            <td  role="cell"><?php echo '<img src="../upload/'.$row['image'].'" width="100">'?></td>
            <td  role="cell"><?php echo $row['description']; ?></td>
            <td  role="cell"><?php echo $row['auteurID']; ?></td>
            <td  role="cell"><?php echo $row['publishedat']; ?></td>
            <td  role="cell"><?php echo $row['categoryID']; ?></td>
            <td  role="cell">
              <form action="" method="post" >
                <input type="hidden" name="edit_id" value="<?php echo $row['ID']; ?>">
           <button type="submit"  name="edit_Book" class="btn btn-warning edit_Book" > Update</button>
            
              </form>
      
              
                   <form action="" method="post"  >
                     <input type="hidden" name="delete_id" value="<?php echo $row['ID']; ?>">
            
           <button type="submit" name="delete_btn" class="btn btn-danger delete_btn" > Delete</button>
      
                   </form>
                
            </td>
          </tr>



  </tbody>
          <?php
        }
      }else {
        echo "Aucun Enregistrement Trouvé";
      }
    ?>

