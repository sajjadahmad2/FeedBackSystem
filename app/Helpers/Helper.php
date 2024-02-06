

<?php

use App\Models\User;
use App\Models\Category;
use App\Models\Contact;
use App\Models\GhlAuth;
use App\Models\Setting;
use App\Models\CustomField;

use Carbon\Carbon;
use GuzzleHttp\RequestOptions;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Stmt\Else_;

function uploadFile($file, $path, $name)
{
    $name = $name . '.' . $file->ClientExtension();
    $file->move($path, $name);
    return $path . '/' . $name;
}
function get_foreign_key($key)
{
    if (strpos($key, 'user_id') !== false) {
        $result = User::where('role', '!=', 0)->pluck('first_name', 'id')->toArray();
        $result[NULL] = 'No User';
        return $result;
    } else if (strpos($key, 'category_id') !== false) {
        return Category::pluck('name', 'id')->toArray();
    } else {
        return [];
    }
}

function login_id($id = "")
{
    if (!empty($id)) {
        return $id;
    }

    if (auth()->user()) {
        $id = auth()->user()->id;
    } elseif (session('uid')) {
        $id = session('uid');
    }
    return $id;
}


function is_role()
{
    if (auth()->user()) {
        $user = auth()->user();
        if ($user->role == 0) {
            return 'admin';
        } elseif ($user->role == 1) {
            return 'company';
        } else {
            return 'user';
        }
    } else {
        return null;
    }
}


function get_fields($vars)
{
    $vars = $vars['__data'];
    unset($vars['__env']);
    unset($vars['app']);
    unset($vars['errors']);
    return $vars;
}
function get_table_data($table, $query = '')
{
    $data = DB::table($table)->$query;
    return $data;
}

function getActions($actions = [], $route = '')
{
    //to camel case
    $acs = [];
    foreach ($actions as $key => $action) {

        $acs[$key] = [
            'title' =>  ucwords(str_replace('_', ' ', $key)),
            'route' => $route . '.' . $key,
            'extraclass' => $key == 'delete' ? 'confirm-delete deleted' : '',
        ];
    }

    return $acs;
}
function superAdmin()
{
    return 1;
}
function getTableColumns($table, $skip = [], $showcoltype = false)
{
    $columns = DB::getSchemaBuilder()->getColumnListing($table);
    if (!empty($skip)) {
        $columns = array_diff($columns, $skip);
    }

    $cols = [];


    foreach ($columns as $key => $column) {
        $cols[$column] = ucwords(str_replace('_', ' ', $column));
    }

    return $cols;
}

function createField($field1, $type = 'text', $label = '', $placeholder = '', $required = false, $value = '', $col = 12, $options = [], $enrollment_id = null)
{
    if ($type == 'select' && empty($options)) {
        $type = "text";
        $required = false;
    }
    $extra = "";

    $field = [
        'type' => $type,
        'name' => $field1,
        'label' => $label . $extra,
        'placeholder' => $placeholder,
        'required' => $type == 'file' ? false : $required,
        'value' => $value,
        'col' => $col,
    ];

    if ($type == 'select' && !empty($options)) {
        $field['options'] = $options;
        $field['is_select2'] = true;
        $field['is_multiple'] = false;
    }

    return $field;
}
function getInitials($fullName)
{
    $parts = explode(" ", $fullName);
    $initials = '';

    foreach ($parts as $part) {
        $initials .= strtoupper(substr($part, 0, 1));
    }

    return $initials;
}

function capitalizeFL($string)
{
    return ucwords($string);
}
function change_field_title($name = '')
{
    if ($name == 'Category Id') {
        return 'Category';
    } else if ($name == 'User Id') {
        return ' username';
    } else {
        return false;
    }
}
function getFieldType($type)
{
    $type = strtolower($type);

    if (strpos($type, 'email') !== false) {
        return 'email';
    } elseif (strpos($type, 'password') !== false) {
        return 'password';
    } elseif (strpos($type, 'image') !== false || strpos($type, 'photo') !== false || strpos($type, 'avatar') !== false || strpos($type, 'logo') !== false  || strpos($type, 'banner') !== false) {
        return 'file';
    } elseif (strpos($type, 'category_id') !== false) {
        return 'select';
    } elseif (strpos($type, 'description') !== false) {
        return 'text';
    } else {
        return 'text';
    }
}

function getoptions($type, $key, $id, $class)
{
    $type = strtolower($type);
    if (strpos($type, 'select') !== false && $class == false && $key == 'category_id') {
        return Category::pluck('name', 'id')->toArray();
    } else {
        return [];
    }
}
function get_date($date = null)
{
    if (is_null($date)) {
        $dateTime = new DateTime();
        return $dateTime->format('Y-m-d');
    } else {
        $dateTime = new DateTime($date);
        return $dateTime->format('Y-m-d');
    }
}

function imageCheck($request)
{
    //if image, logo, photo, avatar, banner
    $key = 'profile_photo';
    if ($request->hasFile('image')) {
        $key = 'image';
    } elseif ($request->hasFile('logo')) {
        $key = 'logo';
    } elseif ($request->hasFile('profile_photo')) {
        $key = 'profile_photo';
    } elseif ($request->hasFile('avatar')) {
        $key = 'avatar';
    } elseif ($request->hasFile('banner')) {
        $key = 'banner';
    } else {
        return false;
    }
    return $key;
}
function checkIfHtml($string)
{
    if (strpos($string, '<') !== false && strpos($string, '>') !== false && strpos($string, '/') !== false) {
        return true;
    }
    return false;
}

function renderImage($image = '', $small = true, $url = null)
{
    $src = asset('logo.jpg');
    $class = 'img-fluid';
    $style = "height: 100px; width: 100px;";
    if (!empty($image)) {
        if (!$small) {
            $style = "height: 200px; width: 200px;";
        }
        if (!is_null($url)) {
            $src = $url;
        } else {
            $src = asset($image);
        }
    }

    return view('htmls.elements.image', compact('src', 'class', 'style'))->render();
}
function getFormFields($table, $skip = [], $user = '', $class = false, $enrollment_id = null)
{
    if (!empty($user) && is_array($user)) {
        $user = (object) $user;
    }

    $fields = getTableColumns($table, $skip);
    $form = [];
    foreach ($fields as $key => $field) {
        if (change_field_title($field)) {
            $field = change_field_title($field);
        }
        $key1 = ucwords(str_replace('_', ' ', $key));

        $form[$key] = createField($key, getFieldType($key), $field, $field, true, $user->$key ?? '', $col = 6, getoptions(getFieldType($key), $key, $user->id ?? '', $class), $enrollment_id);
    }
    return $form;
}
