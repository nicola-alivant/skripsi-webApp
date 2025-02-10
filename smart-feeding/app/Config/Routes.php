<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

// Route for view
$routes->get('/', 'Home::index');
$routes->get('/home', 'Home::index');
$routes->get('/laporan', 'Laporan::index');

// Route for get data
$routes->get('/dataMonitoring', 'Home::getDataMonitoring');
$routes->get('/dataTimer', 'Home::getDataTimer');

$routes->get('/dataReport', 'Laporan::getDataReport');

// Route for post data
$routes->get('/postDataFeeding/(:any)/(:any)', 'Home::postDataFeeding/$1/$2');

$routes->get('/postDataUtility/(:any)/(:any)', 'Home::postDataUtility/$1/$2');