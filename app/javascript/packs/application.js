import { changeSize } from '../components/cards';
changeSize();

import { bindSweetAlertButtonDemo } from '../components/sweet_alert';
bindSweetAlertButtonDemo();


import { initSelect2 } from '../components/select2';

document.addEventListener('DOMContentLoaded', ()=>{
  initSelect2();
})

import { displayChart1 } from '../components/displaycharts';
if(document.getElementById('SpotInstaBarChart')){
  displayChart1();
  }

import { displayChart2 } from '../components/displaycharts';
if(document.getElementById('ManuPieChart')){
  displayChart2();
  }

import { displayChart3 } from '../components/displaycharts';
if(document.getElementById('SuggePieChart')){
  displayChart3();
  }

import { displayChart4 } from '../components/displaycharts';
if(document.getElementById('ManuSuggePieChart')){
  displayChart4();
  }

import { displayChart5 } from '../components/displaycharts';
if(document.getElementById('line-chart')){
  displayChart5();
  }

