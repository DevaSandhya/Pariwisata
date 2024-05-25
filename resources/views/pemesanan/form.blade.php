@extends('layout.app')

@section('title', 'Form Pemesanan')

@section('content')
<form action = "{{ isset($pemesanan) ? route('pemesanan.tambah.update', $pemesanan -> id) : route('pemesanan.tambah.simpan') }}" method = "post">
    @csrf
    <div class = "row">
        <div class = "col-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ isset($pemesanan) ? 'Form Edit Pemesanan' : 'Form Tambah Pemesanan'}}</h6>
                </div>
                <div class="card-body">
                    <div class = "form-group">
                        <label for = "nama_pengunjung">Nama Pengunjung</label>
                        <input type = "text" class = "form-control" id = "nama_pengunjung" name = "nama_pengunjung" value = "{{ isset($pemesanan) ? $pemesanan -> nama_pengunjung : '' }}">
                    </div>
                    <div class = "form-group">
                        <label for = "no_kamar">Nomor Kamar</label>
                        <input type = "text" class = "form-control" id = "no_kamar" name = "no_kamar" value = "{{ isset($pemesanan) ? $pemesanan -> no_kamar : '' }}">
                    </div>
                    <div class = "form-group">
                        <label for = "tipe_kamar">Tipe Kamar</label>
                        <input type = "text" class = "form-control" id = "tipe_kamar" name = "tipe_kamar" value = "{{ isset($pemesanan) ? $pemesanan -> tipe_kamar : '' }}">
                    </div>
                    <div class = "form-group">
                        <label for = "cek_in">Cek In</label>
                        <input type = "text" class = "form-control" id = "cek_in" name = "cek_in" value = "{{ isset($pemesanan) ? $pemesanan -> cek_in : '' }}">
                    </div>
                    <div class = "form-group">
                        <label for = "cek_out">Cek Out</label>
                        <input type = "text" class = "form-control" id = "cek_out" name = "cek_out" value = "{{ isset($pemesanan) ? $pemesanan -> cek_out : '' }}">
                    </div>
                    <div class = "form-group">
                        <label for = "harga">Harga</label>
                        <input type = "number" class = "form-control" id = "harga" name = "harga" value = "{{ isset($pemesanan) ? $pemesanan -> harga : '' }}">
                    </div>
                </div>
                <div class = "card-footer">
                    <button type = "submit" class = "btn btn-primary">Simpan</button>
                </div>
            </div>
        </div>
    </div>
</form>
    
@endsection
