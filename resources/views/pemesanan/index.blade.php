@extends('layout.app')

@section('title', 'Data Pemesanan')

@section('content')
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data Pemesanan</h6>
    </div>
    <div class="card-body">
        <a href = "{{ route('pemesanan.tambah') }}" class = "btn btn-primary mb-3">Tambah Pemesanan</a>
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Pengunjung</th>
                        <th>Nomor Kamar</th>
                        <th>Tipe Kamar</th>
                        <th>Cek In</th>
                        <th>Cek Out</th>
                        <th>Harga</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @php($no = 1)
                    @foreach ($pemesanan as $row)
                    <tr>
                        <th>{{ $no++ }}</th>
                        <td>{{ $row -> nama_pengunjung }}</td>
                        <td>{{ $row -> no_kamar }}</td>
                        <td>{{ $row -> tipe_kamar }}</td>
                        <td>{{ $row -> cek_in }}</td>
                        <td>{{ $row -> cek_out }}</td>
                        <td>{{ $row -> harga }}</td>
                        <td>
                            <a href = "{{ route('pemesanan.edit', $row -> id) }}" class = "btn btn-warning">Edit</a>
                            <a href = "{{ route('pemesanan.hapus', $row -> id) }}" class = "btn btn-danger">Hapus</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection