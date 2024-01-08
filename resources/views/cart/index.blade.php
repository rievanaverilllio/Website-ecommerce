@extends('layouts.app')
@section('title', $viewData['title'])
@section('subtitle', $viewData['subtitle'])
@section('content')
    <div class="card">
        <div class="card-header">
            Products in Cart
        </div>
        <div class="card-body">
            <table class="table table-bordered table-striped text-center">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($viewData['products'] as $product)
                        <tr>
                            <td>{{ $product->getId() }}</td>
                            <td>{{ $product->getName() }}</td>
                            <td>Rp. {{ $product->getPrice() }}</td>
                            <td>{{ session('products')[$product->getId()] }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="row">
                <div class="text-end">
                    <a class="btn btn-outline-secondary mb-2"><b>Total to pay:</b> Rp. {{ $viewData['total'] }}</a>
                    @if (count($viewData['products']) > 0)
                        <a href="#" class="btn bg-primary text-white mb-2" data-bs-toggle="modal" data-bs-target="#paymentModal">Purchase</a>
                        <a href="{{ route('cart.delete') }}">
                            <button class="btn btn-danger mb-2">
                                Remove all products from Cart
                            </button>
                        </a>
                    @endif
                </div>
            </div>
            
            <!-- Modal untuk pilihan pembayaran -->
            <div class="modal" tabindex="-1" role="dialog" id="paymentModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Pilih metode pembayaran</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p>Silakan pilih metode pembayaran yang diinginkan:</p>
                            <a href="{{ route('cart.purchase', ['method' => 'Dana']) }}" class="btn btn-primary">Dana</a>
                            <a href="{{ route('cart.purchase', ['method' => 'Gopay']) }}" class="btn btn-success">Gopay</a>
                            <a href="{{ route('cart.purchase', ['method' => 'OVO']) }}" class="btn btn-warning">OVO</a>
                        </div>
                    </div>
                </div>
            </div>
@endsection
