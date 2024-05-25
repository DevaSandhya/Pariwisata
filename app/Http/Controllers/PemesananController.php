<?php

namespace App\Http\Controllers;

use App\Models\Pemesanan;
use Illuminate\Http\Request;

class PemesananController extends Controller
{
    public function index()
    {
        $pemesanan = Pemesanan::get();

        return view('pemesanan.index', ['pemesanan' => $pemesanan]);
    }

    public function tambah()
    {
        return view ('pemesanan.form');
    }

    public function simpan(Request $request)
    {
        $pemesanan = [
            'nama_pengunjung' => $request -> nama_pengunjung,
            'no_kamar' => $request -> no_kamar,
            'tipe_kamar' => $request -> tipe_kamar,
            'cek_in' => $request -> cek_in,
            'cek_out' => $request -> cek_out,
            'harga' => $request -> harga,
        ];

        Pemesanan::create($pemesanan);

        return redirect() -> route('pemesanan');
    }

    public function edit($id)
    {
        $pemesanan = Pemesanan::find($id) -> first();

        return view('pemesanan.form', ['pemesanan' => $pemesanan]);
    }

    public function update($id, Request $request)
    {
        $pemesanan = [
            'nama_pengunjung' => $request -> nama_pengunjung,
            'no_kamar' => $request -> no_kamar,
            'tipe_kamar' => $request -> tipe_kamar,
            'cek_in' => $request -> cek_in,
            'cek_out' => $request -> cek_out,
            'harga' => $request -> harga,
        ];
        Pemesanan::find($id) -> update($pemesanan);

        return redirect() -> route('pemesanan');
    }

    public function hapus($id)
    {
        Pemesanan::find($id) -> delete();

        return redirect() -> route('pemesanan');
    }
}
