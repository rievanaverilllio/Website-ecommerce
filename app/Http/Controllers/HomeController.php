<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $viewData = [];
        $viewData["title"] = "Home Page - Online Store";
        return view('home.index')->with("viewData", $viewData);
    }

    public function about()
    {
        $viewData = [];
        $viewData["title"] = "About";
        $viewData["subtitle"] = "About us";
        $viewData["description"] = "History";
        $viewData["author"] = "Our journey in the world of apparel started from 18 Juny Every stitch tells a story of courage and dedication since we first opened our doors in 2050 Over time, we have carved a mark as a pioneer in creating inspiring trends and building a solid community. We continue to combine traditional craftsmanship with modern innovation to present collections that are not only stylish, but also tell the story of the journey of change in the fashion industry. From the first garment to every new design, we continue to dedicate ourselves to being an integral part of your fashion journey";

        return view('home.about')->with("viewData", $viewData);
    }
}
