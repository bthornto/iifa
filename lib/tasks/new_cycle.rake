task :new_cycle => [:environment] do
      # import = {}
      # #import['date'] = Date.strptime(cycle['date'], '%m/%d/%y')
      # import['user_id'] = 1
      # # temp = Flavor.find_by name: cycle['flavor']
      # # import['flavor_id'] = temp.id unless temp.nil?
      # # temp = Size.find_by size: cycle['size']
      # # import['size_id'] = temp.id unless temp.nil?
      # # import['quantity'] = cycle['qty']
      # #
      # #
      # # defects = cycle['defecttype'].split(/,/)
      # # import_cycle = []
      # # defects.each do |c_id|
      # #    dt = DefectType.find_by sbuxid: cycle['defecttype']
      # #    import_cycle << dt.id unless temp.nil?
      # # end
      # import['defect_type_id'] = "5,5"
      # # import['cavity_number'] = cycle['cavitynum']
      # # import['job_number'] = cycle['jobnum']
      # # import['shift'] = cycle['shift']
      # # temp = Location.find_by sbuxid: cycle['location']
      # # import['location_id'] = temp.id unless temp.nil?
      # pp import
      # pp Cycle.create!(import)
      #pp Cycle.all
      puts Cycle.find(1303).defect_type
end
