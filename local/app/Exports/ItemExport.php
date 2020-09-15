<?php

namespace App\Exports;

use App\Item;
use Maatwebsite\Excel\Concerns\FromCollection;
use Auth;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ItemExport implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Item::select('category_id','name','description','kids_price','small_price','medium_price','large_price','discount_kids_price','discount_small_price','discount_medium_price','discount_large_price','sort_no')->where('store_id',Auth::user()->id)->get();
    }

    public function headings(): array
    {
        return [
            'Category ID',
            'Name',
            'Description',
            'Kids Price',
            'Small Price',
            'Medium Price',
            'Large Price',
            'Discount Kids Price',
            'Discount Small Price',
            'Discount Medium Price',
            'Discount Large Price',
            'Sort No',
        ];
    }
}
