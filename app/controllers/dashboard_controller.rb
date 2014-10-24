class DashboardController < ApplicationController
  require 'pp'
  def index
    locations = Location.all
    location_names = locations.map{ |x| x.name }
    count_by_location = []
    total = 0
    locations.each do |location|
      count_by_location << location.cycle.count
      total += location.cycle.count
    end

    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      #f.title(:text => "Population vs GDP For 5 Big Countries [2009]")
      f.xAxis(:categories => location_names )
      f.series(:name => "Total Count by location", :yAxis => 0, :data => count_by_location)

      f.yAxis [
        {:title => {:text => "Total", :margin => 70} }
      ]

      f.chart({:defaultSeriesType=>"column"})
    end

  end

  def getpie
    defect_types = DefectType.all
    total_cycles = Cycle.all.count
    array = defect_types.map{ |x| [x.name, (x.cycles.count.to_f/total_cycles.to_f*100)] }
    render json: array
  end
  def getcomplaints
    complaints = Complaint.all
    c_by_month = complaints.groupby(:date)
    pp c_by_month
    render json: array
  end

end
