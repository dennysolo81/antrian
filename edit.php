<?php
$tgl= date('d-m-Y H:i:s');
echo "$tgl";

?>



                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

                    
                    <table class="table table-hover col-sm-8">
                            <thead>
                                <tr>
                                <th scope="col">#</th>
                                <th scope="col">NIK</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Keperluan</th>
                                <th scope="col">Alamat</th>
                                <th scope="col" class="badge badge-pill badge-warning" >Proses</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1 ; ?>
                            <?php foreach($nama as $m)  :  ?>
                                <tr>
                                <th scope="row"><?= $i; ?></th>
                                <td><?= $m['nomer']; ?></td>
                                <td><?= $m['name']; ?></td>
                                <td><?= $m['keperluan']; ?></td>
                                <td><?= $m['desa']; ?></td>
                                <td>
                                <form method="post">
                                    <input type="hidden" name="id" value=<?php echo $m['id']; ?>/>
                                </form>
                                    <input type="hidden" id="id" name="id" value=<?php echo $m['id']; ?>>
                                    <?php echo $m['id']; ?>
                                    <a href="" class="btn btn-primary mb-2" data-toggle="modal" data-target="#newProsesModal<?php echo $m['id']; ?>">Proses</a>
                                    
                                </td>
                                </tr>   
                                <?php $i++ ; ?> 
                                <?php endforeach; ?>                         
                            </tbody>
                            </table>
                </div>
                <!-- /.container-fluid -->
                        <!-- Modal -->
                        <div class="modal fade" id="newProsesModal" tabindex="-1" aria-labelledby="newProsesModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="newProsesModalLabel">Proses</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
      <form action="<?= base_url('antri/'); ?>" method="post">
            <div class="modal-body">
                <div class="form-group">
                <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
                <?php echo $m['id']; ?>
                <input type="text" class="form-control" id="nomer" name="nomer" value="<?= $m['name']; ?>">
                </div>    
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" 
                data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
        </form>
    </div>
            </div>
            <!-- End of Main Content -->
