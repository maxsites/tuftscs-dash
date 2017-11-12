require 'csv'

(CSV.readlines 'current.csv').each do |a|
    name, url, section = a
# linkgroup(:name => 'TuftsTools', :website => 'https://tuftstools.tufts.edu/', :category_id => 'Student Services')
    puts "linkgroup(:name => '#{name}', :website => '#{url}', :category_id => '#{section}')"
end
