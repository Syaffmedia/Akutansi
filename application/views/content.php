<p>Welcome <b><?php echo $this->session->userdata('nama_lengkap');?></b> di Manajeman <b><?php echo $nama_program;?></b></p>
<br />
<table class="list" width="100%">
	<thead>
    <td class="btn" colspan="6"><center><b>DASHBOARD</b></center></td>
    </thead>
    <tr>
    	<td class="btn" align="center" width="20%"><a href="<?php echo base_url();?>index.php/rekening"><img src="<?php echo base_url();?>asset/images/surat_perintah.png" /><br />
        <b>Chart of Account</b></a>
        </td>
        <td align="center" width="20%"><a href="<?php echo base_url();?>index.php/saldo_awal"><img src="<?php echo base_url();?>asset/images/berita.png" /><br />
        <b>Saldo Awal</b></a>
        </td>
        <td  class="btn" align="center" width="20%"><a href="<?php echo base_url();?>index.php/jurnal_umum"><img src="<?php echo base_url();?>asset/images/surat_keputusan.png" /><br />
        <b>Journal</b></a>
        </td>
		<!--<td align="center" width="20%"><a href="<?php echo base_url();?>index.php/jurnal_penyesuaian"><img src="<?php echo base_url();?>asset/images/surat_keluar.png" /><br />
        <b>Journal Penyesuaian</b></a>
        </td> -->
        <td class="btn" align="center" width="20%"><a href="<?php echo base_url();?>index.php/buku_besar"><img src="<?php echo base_url();?>asset/images/keuangan.png" /><br />
        <b>General Ledger</b></a>
        </td>
	</tr>       
</table> 
Catatan : 
<ol>
<li>Kasus yang ditangani pada akuntansi standard ini adalah Perusahaan Jasa</li>
<li>Pastikan jurnal Anda diisi dengan benar</li>
<li>Kalo ada perubahan No.Rek (COA) pada Prive Pemilik Modal. Ubah/edit pada kode program lap_neraca/view_data</li>
</ol>
