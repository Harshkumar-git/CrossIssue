<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="infobar-wrapper scroll-pane">
            <div class="infobar scroll-content">
  <div id="widgetarea">
    <div class="widget">
      <div class="widget-heading">
        <a href="javascript:;" data-toggle="collapse" data-target="#options"><h4>Options</h4></a>
      </div>
      <div id="options" class="collapse in">
        <div class="widget-body">
          <ul class="media-list">
            <li class="media">
              <div class="media-content">
                <div class="media-body">
                  <span class="title">Alerts</span> 
                  <span class="info">Get notified on new alerts</span> 
                </div>
                <div class="media-right">
                  <span class="switch">
                    <input type="checkbox" class="toggle-input" name="toggle1" id="toggle1">
                    <label for="toggle1"></label>
                  </span>
                </div>
              </div>
            </li>
            <li class="media">
              <div class="media-content">
                <div class="media-body">
                  <span class="title">Notifications</span> 
                  <span class="info">Get notified on new notifications</span> 
                </div>
                <div class="media-right">
                  <span class="switch">
                    <input type="checkbox" class="toggle-input" name="toggle2" id="toggle2">
                    <label for="toggle2"></label>
                  </span>
                </div>
              </div>
            </li>
            <li class="media">
              <div class="media-content">
                <div class="media-body">
                  <span class="title">Messages</span> 
                  <span class="info">Get notified on new messages</span> 
                </div>
                <div class="media-right">
                  <span class="switch">
                    <input type="checkbox" class="toggle-input" name="toggle3" id="toggle3">
                    <label for="toggle3"></label>
                  </span>
                </div>
              </div>
            </li>
            <li class="media">
              <div class="media-content">
                <div class="media-body">
                  <span class="title">Warnings</span> 
                  <span class="info">Get notified on new warnings</span> 
                </div>
                <div class="media-right">
                  <span class="switch">
                    <input type="checkbox" class="toggle-input" name="toggle4" id="toggle4">
                    <label for="toggle4"></label>
                  </span>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="widget">
      <div class="widget-heading">
        <a href="javascript:;" data-toggle="collapse" data-target="#ranger"><h4>Sliders</h4></a>
      </div>
      <div id="ranger" class="collapse in">
        <div class="widget-body">
          <ul class="media-list">
            <li class="media">
              <div class="media-content">
                <div class="media-body" style="width: 248px;">
                  <span class="title">Snap to increments</span> 
                  <span class="info mb-md">
                    <div class="slider-value">
                      Amount ($100 increments):
                      <span id="slider-snap-inc-amount"></span>
                    </div>
                  </span> 
                  <div id="slider-snap-inc" class="slider mb-sm"></div>
                </div>
              </div>
            </li>
            <li class="media">
              <div class="media-content">
                <div class="media-body" style="width: 248px;">
                  <span class="title">Range</span> 
                  <span class="info mb-md">
                    <div class="slider-value">
                      Price range:
                      <span id="slider-range-amount"></span>
                    </div>
                  </span> 
                  <div id="slider-range" class="slider primary mb-sm"></div>  
                </div>
              </div>
            </li>
            <li class="media">
              <div class="media-content">
                <div class="media-body" style="width: 248px;">
                  <span class="title">Maximum</span> 
                  <span class="info mb-md">
                    <div class="slider-value">
                      Maximum Value:
                      <span id="slider-range-max-amount"></span>
                    </div>
                  </span> 
                  <div id="slider-range-max" class="slider success mb-sm"></div>
                </div>
              </div>
            </li>
            <li class="media">
              <div class="media-content">
                <div class="media-body" style="width: 248px;">
                  <span class="title">Minimum</span> 
                  <span class="info mb-md">
                    <div class="slider-value">
                      Minimum Value:
                      <span class="slider-value" id="slider-range-min-amount"></span>
                    </div>
                  </span> 
                  <div id="slider-range-min" class="slider danger mb-sm"></div>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
        </div>