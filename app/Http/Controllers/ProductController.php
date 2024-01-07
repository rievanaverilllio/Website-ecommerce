<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $viewData = [];
        $viewData["title"] = "Products - Online Store";
        $viewData["subtitle"] = "My Catalogue";

        $viewData["products"] = Product::all();

        return view('product.index')->with("viewData", $viewData);
    }

    public function show($id)
    {
        $viewData = [];

        $product = Product::findOrFail($id);

        $viewData["title"] = $product->getName() . "- Baka";
        $viewData["subtitle"] = $product->getName() . "";
        $viewData["product"] = $product;
        return view('product.show')->with("viewData", $viewData);
    }

}
