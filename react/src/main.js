import 'babel-polyfill';
import 'whatwg-fetch';
import React from 'react';
import ReactDOM from 'react-dom';
import ReviewList from './components/ReviewList';

$(function() {
  if (document.getElementById('ReviewList')) {
    ReactDOM.render(
      < ReviewList
      />,
      document.getElementById('ReviewList')
    );
  }
});
