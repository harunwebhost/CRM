<?php 
      $open_lead_select="Select * from leads WHERE lead_id='1'";
      $open_lead_execute=execute_sql_query($open_lead_select);
    $fetch_lead=execute_fetch($open_lead_execute);
?>


<div class="modal" id="open_lead">
  
<div class="modal-dialog" role="document">
    <div class="modal-content">
      
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Update Lead</h4>
      </div>
      <div class="modal-body">
        <form action="lead_log.php" method="POST">
           <input type="hidden" class="form-control" id="recipient-name" name="lead_id" value="<?php echo $feth_lead['lead_id']?>">
        
         <input type="hidden" class="form-control" id="recipient-name" name="action" value="add">

            <div class="form-group">
            <label for="recipient-name" class="control-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="lead_name" 
            value="<?php if(!empty($fetch_lead['lead_name'])){echo $fetch_lead['lead_name'];}?>">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="control-label">Email:</label>
            <input type="text" class="form-control" id="recipient-name" name="lead_email"
            value="<?php if(!empty($fetch_lead['lead_email'])){echo $fetch_lead['lead_email'];}?>">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="control-label">Mobile</label>
            <input type="text" class="form-control" id="recipient-name" name="lead_mobile"
             value="<?php if(!empty($fetch_lead['lead_email'])){echo $fetch_lead['lead_mobile'];}?>">

          </div>
           <div class="form-group">
            <label for="recipient-name" class="control-label">City</label>
            <input type="text" class="form-control" id="recipient-name" name="lead_city"
            value="<?php if(!empty($fetch_lead['lead_city'])){echo $fetch_lead['lead_city'];}?>">
          </div>
           <div class="form-group">
              <label for="sel1">Selec Status</label>
                <select class="form-control" id="sel1" name="lead_status">
                <?php 
                $i=0;
                while ($i<= 10) {
                ?> 
                      <option value="<?php echo $i;?>">Lead Status<?php echo $i;?></option>
                <?php $i++;
                } ?>
              </select>
</div>
           
         <div id="demolead" style="display:none">
          <div class="form-group">
            <label for="recipient-name" class="control-label">Select Demo Date</label>
            <input type="text" class="form-control" id="recipient-name" name="lead_contactedDate">
          </div>
        </div>
     <div class="form-group" id="nextcontact">
            <label for="recipient-name" class="control-label">Next Contact</label>
            <input type="text" class="form-control" id="recipient-name" name="lead_contactedDate">
          </div>
          

      <div class="form-group">
            <label for="recipient-name" class="control-label">Coments</label>
            <textarea class="form-control" id="recipient-name" name="lastComments"></textarea>
          </div>
         

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Update</button>
      </div>
      </div>
      </form>
      
    </div>
  </div>