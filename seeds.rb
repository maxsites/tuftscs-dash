require 'yaml'

academic_resources = 'Academic Resources'
campus_media = 'Campus Media'
merchandise = 'Merchandise'
online_services = 'Online Services'
schools_and_departments = 'Schools & Departments'
student_government = 'Student Government'
student_services = 'Student Services'

$sections = {}

def linkgroup(kwargs)
    name = kwargs[:name]
    website = kwargs[:website]
    category_id = kwargs[:category_id]
    if $sections.has_key? category_id
        $sections[category_id] << {'name' => name, 'url' => website}
    else
        $sections[category_id] = [{'name' => name, 'url' => website}]
    end
end

linkgroup(:name => 'Academic Bulletin', :website => 'http://uss.tufts.edu/stuServ/bulletin/', :category_id => academic_resources)
linkgroup(:name => 'Academic Calendar', :website => 'http://uss.tufts.edu/stuServ/acadcal/', :category_id => academic_resources)
linkgroup(:name => 'Academic Resource Center', :website => 'http://uss.tufts.edu/arc/', :category_id => academic_resources)
linkgroup(:name => 'Tisch Library', :website => 'http://www.library.tufts.edu/tisch/index.html', :category_id => academic_resources)

linkgroup(:name => 'The Tufts Daily', :website => 'http://tuftsdaily.com/', :category_id => campus_media)
linkgroup(:name => 'Hemispheres', :website => 'http://ase.tufts.edu/hemispheres/', :category_id => campus_media)
linkgroup(:name => 'TuftScope', :website => 'http://tuftscope.squarespace.com/', :category_id => campus_media)
linkgroup(:name => 'Tufts Observer', :website => 'http://www.tuftsobserver.org/', :category_id => campus_media)
linkgroup(:name => 'Outbreath', :website => 'http://ase.tufts.edu/outbreath/', :category_id => campus_media)
linkgroup(:name => 'Tufts Traveler', :website => 'http://ase.tufts.edu/traveler/', :category_id => campus_media)
linkgroup(:name => 'Tufts Public Journal', :website => 'http://ase.tufts.edu/thepublicjournal/', :category_id => campus_media)
linkgroup(:name => 'WMFO 91.5FM', :website => 'http://www.wmfo.org/', :category_id => campus_media)
linkgroup(:name => 'TUTV', :website => 'http://www.tuftstv.com/', :category_id => campus_media)
linkgroup(:name => 'JumboCast', :website => 'http://www.jumbocast.com/', :category_id => campus_media)
linkgroup(:name => 'Film Series', :website => 'http://ase.tufts.edu/filmseries/', :category_id => campus_media)
linkgroup(:name => 'Zamboni', :website => 'http://www.ase.tufts.edu/zamboni/', :category_id => campus_media)

linkgroup(:name => 'Tufts Bookstore', :website => 'http://tufts.bncollege.com/', :category_id => merchandise)
linkgroup(:name => 'Tufts Student Software Discounts', :website => 'http://uit.tufts.edu/?pid=330', :category_id => merchandise)
linkgroup(:name => 'Alumni Merchandise', :website => 'http://www.tufts.edu/alumni/s-merchandise.html', :category_id => merchandise)

linkgroup(:name => 'SIS/WebCenter', :website => 'https://sis.uit.tufts.edu/', :category_id => online_services)
linkgroup(:name => 'Student Life', :website => 'http://students.tufts.edu/', :category_id => online_services)
linkgroup(:name => 'Block Schedule [PDF]', :website => 'https://students.tufts.edu/sites/default/files/REGBlockSchedule.pdf', :category_id => online_services)
linkgroup(:name => 'Room Reservations', :website => 'https://roomscheduling.tufts.edu/VirtualEMS/', :category_id => online_services)
linkgroup(:name => 'Campus Map', :website => 'http://campusmaps.tufts.edu/medford/', :category_id => online_services)
linkgroup(:name => 'Parking Services', :website => 'http://publicsafety.tufts.edu/adminsvc/frequently-asked-parking-questions/', :category_id => online_services)
linkgroup(:name => 'Shuttle Schedules', :website => 'http://publicsafety.tufts.edu/adminsvc/shuttle-services-2/', :category_id => online_services)

linkgroup(:name => 'Arts & Sciences', :website => 'http://as.tufts.edu/', :category_id => schools_and_departments)
linkgroup(:name => 'Engineering', :website => 'http://engineering.tufts.edu/', :category_id => schools_and_departments)
linkgroup(:name => 'Ex-College', :website => 'http://www.excollege.tufts.edu/', :category_id => schools_and_departments)
linkgroup(:name => 'Institute for Global Leadership', :website => 'http://tuftsgloballeadership.org/', :category_id => schools_and_departments)
linkgroup(:name => 'Tisch College of Citizenship & Public Service', :website => 'http://activecitizen.tufts.edu/', :category_id => schools_and_departments)
linkgroup(:name => 'Museum of Fine Arts', :website => 'http://www.smfa.edu/', :category_id => schools_and_departments)
linkgroup(:name => 'New England Conservatory (NEC)', :website => 'https://necmusic.edu/', :category_id => schools_and_departments)
linkgroup(:name => 'Athletics', :website => 'http://www.gotuftsjumbos.com/landing/index', :category_id => schools_and_departments)


linkgroup(:name => 'TCU Senate', :website => 'https://www.tcu.tufts.edu/', :category_id => student_government)
linkgroup(:name => 'Elections Commission (ECOM)', :website => 'https://www.tcu.tufts.edu/about-ecom/', :category_id => student_government)
linkgroup(:name => 'Programming Board', :website => 'http://tupboard.github.io/', :category_id => student_government)
linkgroup(:name => 'Tufts Shuttle (Joey)', :website => 'http://publicsafety.tufts.edu/adminsvc/the-joey-medfordsomerville-campus-shuttle/', :category_id => student_government)
linkgroup(:name => 'TCU Judiciary', :website => 'http://ase.tufts.edu/tcuj/', :category_id => student_government)
linkgroup(:name => 'Graduate Student Council', :website => 'http://ase.tufts.edu/gsc/', :category_id => student_government)

linkgroup(:name => 'Career Services', :website => 'http://careers.tufts.edu/', :category_id => student_services)
linkgroup(:name => 'Counseling Center', :website => 'http://ase.tufts.edu/counseling/', :category_id => student_services)
linkgroup(:name => 'Ears for Peers', :website => 'http://ase.tufts.edu/earsforpeers/', :category_id => student_services)
linkgroup(:name => 'Facilities', :website => 'http://www.tufts.edu/central/facilities/medford/index.html', :category_id => student_services)
linkgroup(:name => 'Financial Aid', :website => 'http://uss.tufts.edu/finaid/', :category_id => student_services)
linkgroup(:name => 'Greek Life', :website => 'http://ase.tufts.edu/greek/', :category_id => student_services)
linkgroup(:name => 'Health Service', :website => 'http://ase.tufts.edu/healthservice/', :category_id => student_services)
linkgroup(:name => 'Mail Services', :website => 'http://www.tufts.edu/central/mailservices/', :category_id => student_services)
linkgroup(:name => 'Registrar', :website => 'http://uss.tufts.edu/registrar/', :category_id => student_services)
linkgroup(:name => 'University Chaplaincy', :website => 'http://chaplaincy.tufts.edu/', :category_id => student_services)
linkgroup(:name => 'Student Employment', :website => 'https://students.tufts.edu/financial-services/student-employment', :category_id => student_services)
linkgroup(:name => 'Eco Off-Campus', :website => 'http://sustainability.tufts.edu/offcampus-resources/', :category_id => student_services)

linkgroup(:name => 'Residential Life (ResLife)', :website => 'http://ase.tufts.edu/reslife/', :category_id => student_services)
linkgroup(:name => 'Student Activities', :website => 'http://ase.tufts.edu/osa/', :category_id => student_services)
linkgroup(:name => 'Study Abroad', :website => 'http://uss.tufts.edu/studyabroad/', :category_id => student_services)
linkgroup(:name => 'TEMS', :website => 'http://publicsafety.tufts.edu/ems/', :category_id => student_services)
linkgroup(:name => 'Tufts Online', :website => 'https://it.tufts.edu/online-learning', :category_id => student_services)
linkgroup(:name => 'UIT', :website => 'http://uit.tufts.edu/', :category_id => student_services)
linkgroup(:name => 'Tufts Student Resources', :website => 'https://students.tufts.edu/resources', :category_id => student_services)
linkgroup(:name => 'Off-Campus Housing Resource Center', :website => 'http://ase.tufts.edu/och/', :category_id => student_services)
linkgroup(:name => 'Tufts Reviews', :website => 'http://tufts.jumboaccess.com/', :category_id => student_services)
linkgroup(:name => 'TuftsTools', :website => 'https://tuftstools.tufts.edu/', :category_id => 'Student Services')

linkgroup(:name => 'Africana Center', :website => 'http://ase.tufts.edu/africana/', :category_id => 'Group of Six')
linkgroup(:name => 'Asian American Center', :website => 'http://ase.tufts.edu/asianam/', :category_id => 'Group of Six')
linkgroup(:name => 'International Center', :website => 'http://ase.tufts.edu/icenter/', :category_id => 'Group of Six')
linkgroup(:name => 'Latino Center', :website => 'http://ase.tufts.edu/latinocenter/', :category_id => 'Group of Six')
linkgroup(:name => 'LGBT Center', :website => 'http://ase.tufts.edu/lgbt/', :category_id => 'Group of Six')
linkgroup(:name => 'Women\'s Center', :website => 'http://ase.tufts.edu/womenscenter/', :category_id => 'Group of Six')
linkgroup(:name => 'Alumni Association', :website => 'http://tuftsalumni.org/connect-with-alumni/students-and-the-tufts-alumni-association/', :category_id => 'Student Services')
linkgroup(:name => 'Campus Life', :website => 'http://ocl.tufts.edu/', :category_id => 'Student Services')
linkgroup(:name => 'Crafts Center', :website => 'http://www.tuftscrafts.com/', :category_id => 'Student Services')
linkgroup(:name => 'Dean of Student Affairs', :website => 'http://uss.tufts.edu/studentaffairs/', :category_id => 'Student Services')
linkgroup(:name => 'Dining Services', :website => 'http://dining.tufts.edu/', :category_id => 'Student Services')
linkgroup(:name => 'Eco Off-Campus', :website => 'http://www.ecooffcampus.com/', :category_id => 'Student Services')
linkgroup(:name => 'Facilities Request (On Campus)', :website => 'https://fsrequest.tufts.edu/WebMaint/', :category_id => 'Student Services')
linkgroup(:name => 'Sexual Misconduct Resources', :website => 'http://uss.tufts.edu/studentaffairs/handbook/campus/sexualassault.asp', :category_id => 'Student Services')
linkgroup(:name => 'Student Handbook', :website => 'http://uss.tufts.edu/studentaffairs/handbook/', :category_id => 'Student Services')
linkgroup(:name => 'TUPD', :website => 'http://publicsafety.tufts.edu/police/', :category_id => 'Student Services')
linkgroup(:name => 'Film Series', :website => 'http://www.tuftsfilmseries.com/', :category_id => 'Campus Media')
linkgroup(:name => 'Fletcher Ledger', :website => 'http://www.fletcherledger.com/', :category_id => 'Campus Media')
linkgroup(:name => 'JumboCast', :website => 'http://www.jumbocast.net/', :category_id => 'Campus Media')
linkgroup(:name => 'The Primary Source', :website => 'http://primarysource.typepad.com/', :category_id => 'Campus Media')
linkgroup(:name => 'Tufts Now', :website => 'http://now.tufts.edu/', :category_id => 'Campus Media')
linkgroup(:name => 'Dining Services Menus', :website => 'http://menus.tufts.edu/foodpro/location.asp', :category_id => 'Online Services')
linkgroup(:name => 'JobX (Student Employment)', :website => 'https://tufts.studentemployment.ngwebsolutions.com/', :category_id => 'Online Services')
linkgroup(:name => 'Handshake (Student Employment)', :website => 'https://tufts.joinhandshake.com/login', :category_id => 'Online Services')
linkgroup(:name => 'JumboCash Management', :website => 'http://www.jumbocash.net/', :category_id => 'Online Services')
linkgroup(:name => 'Online Financial Aid System', :website => 'https://students.tufts.edu/financial-services/financial-aid', :category_id => 'Online Services')
linkgroup(:name => 'Trunk', :website => 'http://trunk.tufts.edu/', :category_id => 'Online Services')
linkgroup(:name => 'Tufts Bikes', :website => 'http://tuftsbikes.wordpress.com/', :category_id => 'Online Services')
linkgroup(:name => 'Visual Understanding Environment', :website => 'http://vue.tufts.edu/', :category_id => 'Online Services')
linkgroup(:name => 'Engineering Student Council', :website => 'http://sites.tufts.edu/esc/', :category_id => 'Student Government')

format = 'yaml'

if format == 'html'
    puts <<END_HEADER
<style type="text/css">
body {
    margin: 15px 0 0 40px;
}
/*On the flex container*/
.flexcontainer {
    display: -webkit-flex;
    display: flex;

    /* Remove for non-flexible height: */
    flex-direction: column; flex-wrap: wrap; height: 100%;

    /* For non-flexible height: */
    /* -webkit-flex-direction: row;
    flex-direction: row;
    flex-flow: row wrap;
    */
}

.flexcontainer div {
    /* Remove for non-flexible height: */
    width: 200px;
}
</style>
<div class="flexcontainer">
END_HEADER
    $sections.each do |section, links|
        puts "<div>"
        puts "<h2>#{section}</h2>"
        puts "<ol>"
        $sections[section].each do |link|
            puts "  <li><a href=\"#{link['url']}\">#{link['name']}</a></li>"
        end
        puts "</ol>\n\n"
        puts "</div>"
    end
    puts "</div>"
elsif format == 'yaml'
    puts YAML.dump($sections)
else
    puts "Invalid output format."
end
