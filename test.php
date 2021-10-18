<!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h3 class="mb-4 text-gray-800"><?= $title; ?></h3>
                    <?php
                    if (isset($_GET['err']) AND $_GET['err']==1){ ?>
                    <div class="alert alert-danger col-lg-3" role="alert">Lengkapi data diri anda dulu!..</div>

                       <?php } ?>
                  <div class="row">
                        <div class="col-lg-8">
                        <?= $this->session->flashdata('message'); ?>
                            <?= form_open_multipart('menu/configur'); ?>
                            <div class="form-group row">
                                <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                                <div class="col-sm-6">
                                <input type="text" style="text-align:left;" class="form-control" id="judul" name="judul" value="<?= $judul['judul']; ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ket" class="col-sm-2 col-form-label">Keterangan</label>
                                <div class="col-sm-3">
                                
                                <input type="text" class="form-control" id="ket" name="ket" value="<?= $judul['ket']; ?>">
                                
                                </div>
                            </div>

                            <div class="form-group row" >
                            <?php
                            $nama=$user['name'];
                            $cnama=strtoupper($nama);
                            ?>
                                <label for="name" class="col-sm-2 col-form-label">Nama lengkap</label>
                                <div class="col-sm-6">
                                <input type="text" class="form-control" id="name" name="name" onkeyup="this.value =this.value.toUpperCase()" value="<?= $cnama; ?>">
                                <?= form_error('name','<small class="text-danger pl-3">','</small>');?>
                                </div>
                            </div>

                            <div class="form-group row col-sm-4">
                                <label for="desa" class="col-sm-2 col-form-label">Desa</label>
                                <select id="desa" name="desa" class="form-control">
                                    <option selected><?=$user['desa']; ?></option>
                                    <option value="Silurah">Silurah</option>
                                    <option value="Sodong">Sodong</option>
                                    <option value="Gringgingsari">Gringgingsari</option>
                                    <option value="Kedungmalang">Kedungmalang</option>
                                    <option value="Sendang">Sendang</option>
                                    <option value="Wonotunggal">Wonotunggal</option>
                                    <option value="Brokoh">Brokoh</option>
                                    <option value="Wates">Wates</option>
                                    <option value="Brayo">Brayo</option>
                                    <option value="Kemligi">Kemligi</option>
                                    <option value="Sigayam">Sigayam</option>
                                    <option value="Kreyo">Kreyo</option>
                                    <option value="Siwatu">Siwatu</option>
                                    <option value="Dringo">Dringo</option>
                                    <option value="Penangkan">Penangkan</option>
                                </select>
                            </div>

                            <div class="form-group row">
                                <label for="alamat" class="col-sm-2 col-form-label">Alamat lengkap</label>
                                <div class="col-sm-8">
                                <textarea type="textarea" class="form-control" id="alamat" name="alamat" value="<?= $user['alamat']; ?>"><?= $user['alamat']; ?>
                                </textarea><?= form_error('alamat','<small class="text-danger pl-3">','</small>');?>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="keperluan" class="col-sm-2 col-form-label">Keperluan</label>
                                <div class="col-sm-3">

                               <?php $perlu=$user['keperluan'];
                                    if ($perlu == 0) {
                                    $p = 'Belum pilih antrian';
                                    } else if ($perlu == 1) {
                                    $p ='Administrasi KK/KTP';
                                    } else if ($perlu == 2) {
                                    $p='Perekaman KTP';            
                                    } else {
                                    $p='Dokumen lainnya';
                                    } 
                                ?>

                                <input type="text" class="form-control" id="keperluan" name="keperluan"value="<?= $p; ?>" readonly>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-2">Foto</div>
                                <div class="col-sm-15">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <img src="<?= base_url('assets/img/profile/'). $user ['image'] ; ?>" class="rounded float-left" style="max-width: 140px";>
                                        </div>
                                        <div class="col-sm-6">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="image" name="image">
                                            <label class="custom-file-label" for="image">Pilih foto tanpan</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>                            

                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" value="Submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->