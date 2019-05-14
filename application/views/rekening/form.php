<script type="text/javascript">
$(document).ready(function(){
	$(':input:not([type="submit"])').each(function() {
		$(this).focus(function() {
			$(this).addClass('hilite');
		}).blur(function() {
			$(this).removeClass('hilite');});
	});	
	
	$("#no_rek").focus();
	
	$("#tgl").datepicker({
		dateFormat      : "dd-mm-yy",        
	  	showOn          : "button",
	  	buttonImage     : "<?php echo base_url();?>asset/images/calendar.gif",
	  	buttonImageOnly : true				
	});
	
	function kosong(){
		$("#rek_induk").val('0');
		$("#no_rek").val('');
		$("#nama_rek").val('');
		
	}
	$("#simpan").click(function(){
		var rek_induk	= $("#rek_induk").val();
		var no_rek 		= $("#no_rek").val();
		var nama_rek 	= $("#nama_rek").val();
		
		var string = "rek_induk="+rek_induk+"&no_rek="+no_rek+"&nama_rek="+nama_rek;
		
		if(no_rek.length==0){
			alert("Please fill the code");
			$("#no_rek").focus();
			return false;
		}
		if(nama_rek.length==0){
			alert("Account name must be filled");
			$("#nama_rek").focus();
			return false;
		}
		
		$.ajax({
			type	: 'POST',
			url		: "<?php echo site_url(); ?>/rekening/simpan",
			data	: string,
			cache	: false,
			success	: function(data){
				$.messager.show({
					title:'Info',
					msg:data,
					timeout:2000,
					showType:'slide'
				});
			},
			error : function(xhr, teksStatus, kesalahan) {
				$.messager.show({
					title:'Info',
					msg: 'Server is not responding :'+kesalahan,
					timeout:2000,
					showType:'slide'
				});
			}
		});
		
	});
	
	$("#tambah_data").click(function(){
		kosong();
		$("#no_rek").focus();
		/*
		$.ajax({
			type	: 'POST',
			url		: "<?php echo site_url(); ?>/rekening/tambah",
			cache	: false,
			success	: function(data){
				kosong();
				$("#no_rek").focus();
			}
		});
		return false();
		*/
	});
	
	$("#kembali").click(function(){
		window.location.assign('<?php echo base_url();?>index.php/rekening');
		return false();
	});
	
});
</script>
<fieldset class="atas">
<table width="100%">
<tr>
	<td width="10%">Group</td>
    <td width="5">:</td>
    <!--<td>
    <select name="rek_induk" id="rek_induk" class="combo">
    <option value="0">-Choose Groups-</option>
    <?php 
	//foreach($list->result() as $t){
	?>
    <option value="<?php //echo $t->level;?>"><?php // echo $t->nama_rek;?></option>
    <?php } ?>
    </select>
    </td> -->
    <td>
    <select name="rek_induk" id="rek_induk" class="combo">
    <option value="0">-Choose Groups-</option>
    <option value="1">Asset</option>
    <option value="2">Liabilities</option>
    <option value="3">Equity</option>
    <option value="4">Income</option>
    <option value="5">Less: Expensesz</option>
    </select>
    </td>
</tr>
<tr>    
	<td>Code</td>
    <td>:</td>
    <td><input type="text" name="no_rek" id="no_rek" size="12" maxlength="12" /></td>
</tr>
<tr>    
	<td>Account</td>
    <td>:</td>
    <td><input type="text" name="nama_rek" id="nama_rek"  size="50" maxlength="50" /></td>
</tr>
</table>
</fieldset>
<fieldset class="bawah">
<table width="100%">
<tr>
	<td colspan="3" align="center">
    <button type="button" name="simpan" id="simpan" class="easyui-linkbutton" data-options="iconCls:'icon-save'">SAVE</button>
    <button type="button" name="tambah_data" id="tambah_data" class="easyui-linkbutton" data-options="iconCls:'icon-add'">ADD</button>
    <button type="button" name="kembali" id="kembali" class="easyui-linkbutton" data-options="iconCls:'icon-back'">BACK</button>
    </td>
</tr>
</table>  
</fieldset>   