BlogPost.delete_all
FallenHero.delete_all
Event.delete_all
Donation.delete_all

50.times do
  BlogPost.create(
    title: Faker::Name.title,
    content: Faker::Lorem.paragraph,
    image: Faker::Placeholdit.image("100x100")
  )
end



20.times do 
  Event.create(image: Faker::Placeholdit.image("100x100"), title: Faker::Lorem.word, description: Faker::Lorem.paragraph, datetime: Faker::Time.forward(30, :evening), location: Faker::Address.street_address)
end

50.times do
  Donation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    amount: rand(1..100)
  )
end

FallenHero.create([
{rank: "Captain", first_name: "Herbert", middle_name: "T.", last_name: "Johnson", department: "Chicago Fire Department", date_deceased: "11/02/2012", description: "We mourn the loss of Captain Herbert Johnson, a 32-year veteran firefighter, who succumbed to injuries from a blaze at a home on the southwest side on 11/2/12."},
{rank: "Firefighter", first_name: "Walter", middle_name: "Patmon", last_name: "Jr.", department: "Chicago Fire Department", date_deceased: "11/11/2012", description: "Walter Patmon Jr. was born February 17, 1951, in Chicago, Illinois. On Sunday, November 11, 2012, Firefighter Walter Patmon, 61, had a heart attack at his South Side fire station when he returned from a call.
During the day, Firefighter Patmon and his ladder company responded to two EMS incidents and a vehicle crash. At 2205hrs, Firefighter Patmon and his crew were the arriving ladder at a reported structural fire. Firefighter Patmon donned his protective clothing and set up the aerial ladder for operations.  While driving back to quarters, Firefighter Patmon began to suffer shortness of breath and chest pains. Upon arrival at the fire station at 2224hrs, Firefighter Patmon’s symptoms quickly worsened. An ambulance was called and other firefighters provided care for Firefighter Patmon. He left for the hospital by ambulance at 2231hrs and arrived at the hospital at 2236hrs.
Despite care given in the emergency room, Patmon was pronounced dead at 2320hrs. The cause of death was a heart attack. Firefighter Patmon is survived by his wife and three young adult daughters."},
{rank: "Officer", first_name: "Thor", middle_name: "", last_name: "Soderberg", department: "Chicago Police Department", date_deceased: "07/07/2010", description: "Officer Thor Soderberg was shot and killed in an apparent robbery attempt at about 3:45 pm near 61st Street and Racine Avenue. Officer Soderberg was returning to his vehicle at the end of his shift when he struggled with a male subject who approached from behind and was able to gain control of his service weapon, fatally shooting him in the face, head and back. The incident occurred in the parking lot of the former Englewood District station used by the Targeted Response Unit. The suspect, a convicted felon, then fled and attempted to commit an armed robbery nearby. Other officers inside the police facility responded and exchanged gunfire with the 24-year-old man, critically wounding him. He has been charged with first-degree murder, attempted murder and armed robbery. Officer Soderberg had served with the Chicago Police Department for nearly 11 years and was an instructor in the Education and Training Division. He was a US Army veteran. Officer Soderberg was survived by his wife, four siblings and parents."},
{rank: "Sergeant", first_name: "Alan", middle_name: "J.", last_name: "Haymaker", department: "Chicago Police Department", date_deceased: "02/22/2010", description: "Sergeant Alan Haymaker was killed in an automobile accident while responding to a burglary-in-progress call shortly before 5:15 am. His patrol car hit a patch of ice on the roadway, jumped the curb and struck a light pole, then a tree, while traveling southbound on Lake Shore Drive near Irving Park Road. He was transported to Advocate Illinois Masonic Medical Center where he succumbed to his injuries a short time later. Sergeant Haymaker was a third-generation officer with the Chicago Police Department and had served for 21 years, being assigned to the Town Hall District. He was survived by his wife, three daughters, parents, three brothers and two sisters."},
{rank: "Lieutenant", first_name: "Scott", middle_name: "P.", last_name: "Gillen", department: "Chicago Fire Department", date_deceased: "12/23/2000", description: "Saturday morning. On December 23, 2000, Lieutenant Scott P. Gillen of the Chicago Fire Department was on duty with Truck 27. At 2:38 AM, Truck 27 was dispatched to assist Ambulance 37 at an accident at 11400 South Bishop Ford Expressway. Upon arrival, Truck 27 positioned itself to protect both the ambulance and the entire accident scene from the flow of traffic. The apparatus was positioned to block the inside and center traffic lanes.
According to the driver of Truck 27, Gillen was retrieving a piece of equipment from the rear of the apparatus when a civilian automobile illegally crossed into the center lane to cut in front of a tractor trailer that was traveling in the outside lane. The automobile struck the tractor trailer on the front passenger side, causing the car to rotate in a counterclockwise manner. The car struck Gillen and pinned him against the rear bumper of the fire truck. Gillen suffered multiple injuries to his lower extremities and was transported by the University of Illinois Hospital helicopter to Christ Hospital where he died from his injuries.
Scott Gillen, 37, the father of five daughters, was a 14-year veteran of the fire department and is part of a firefighting family. He had been promoted to lieutenant just two weeks prior to his death.
"},
{rank: "Captain", first_name: "Thomas", middle_name: "G.", last_name: "Gotkowski", department: "Tinley Park Volunteer Fire Department", date_deceased: "10/01/2000", description: "On October 1, 2000, Captain Thomas G. Gotkowski of the Tinley Park Volunteer Fire Department suffered a fatal heart attack in the line of duty.
Captain Gotkowski and his engine company were assisting the police department with the ventilation of a condominium. Gotkowski became ill while he and other firefighters helped the police department ventilate a condominium in which a dead body had remained undiscovered for two weeks. Captain Gotkowski assisted with the placement of a ventilation fan and assisted with the repositioning and stacking of fans. Captain Gotkowski felt ill and was sitting on the back of an engine. He walked to a nearby ambulance where it was determined that he was experiencing a heart attack. Gotkowski was treated by paramedics on the scene, and he was transported to Palos Community Hospital, where he died in the emergency room.
This incident was the fifth call of the shift for Captain Gotkowski. According to the fire chief, Captain Gotkowski was the first line-of-duty death for the department since it was founded in 1901.
Funeral services for Gotkowski were held at St. Julie Billiart Catholic Church on October 4, and he was survived by his widow and three children."},
{rank: "Captain", first_name: "Robert", middle_name: "", last_name: "Ely", department: "Holbrook Volunteer Fire Department", date_deceased: "09/25/1990", description: ""},
{rank: "Officer", first_name: "Gregory", middle_name: "", last_name: "Hauser", department: "Chicago Police Department", date_deceased: "05/13/1990", description: "Officers Gregory A. Hauser and Raymond Kilroy were shot and mortally wounded when they responded to a domestic disturbance between a woman and her grandson. As they talked to the grandson in a garage, he suddenly grabbed one of the officers' weapons. The suspect then fired several shots, striking both Officer Hauser and Officer Kilroy.

The suspect was apprehended and sentenced to life.

The officers were partners until the end, having joined the Department together twenty years earlier. Officer Hauser is survived by his wife and three children."},
{rank: "Officer", first_name: "James", middle_name: "", last_name: "Jobe", department: "Des Plaines Police Department", date_deceased: "12/26/1980", description: ""},
{rank: "Firefighter", first_name: "Darryl", middle_name: "F.", last_name: "Williams", department: "Chicago Fire Department", date_deceased: "10/07/1980", description: ""},
{rank: "Officer", first_name: "William", middle_name: "Y.", last_name: "Bell", department: "Chicago Police Department", date_deceased: "02/06/1967", description: "Patrolman William Y. Bell, while off-duty, assisted several police officers involved in the pursuit of a robbery suspect. He had robbed a grocery store of $1400. The gunman hid in a building and began firing at the officers. A fierce gun battle ensued and Officer Bell was mortally wounded. Police shot and killed the suspect."},
{rank: "Sergeant", first_name: "Gerald", middle_name: "", last_name: "Doll", department: "Chicago Police Department", date_deceased: "03/29/1967", description: ""},
{rank: "Deputy Sheriff", first_name: "Ralph", middle_name: "", last_name: "Probst", department: "Cook County Sheriff's Department", date_deceased: "04/10/1967", description: ""},
{rank: "Officer", first_name: "Herman", middle_name: "", last_name: "Stallworth", department: "Chicago Police Department", date_deceased: "05/23/1967", description: ""},
{rank: "Firefighter", first_name: "Robert", middle_name: "J.", last_name: "Campbell", department: "Chicago Fire Department", date_deceased: "05/29/1967", description: ""},
{rank: "Chief", first_name: "John", middle_name: "", last_name: "Spellman", department: "Chicago Fire Department", date_deceased: "06/01/1967", description: ""},
{rank: "Captain", first_name: "Donald", middle_name: "L.", last_name: "Barnes", department: "Alsip Police Department", date_deceased: "07/01/1967", description: ""},
{rank: "Captain", first_name: "John", middle_name: "", last_name: "Donovan", department: "Chicago Fire Department", date_deceased: "10/10/1967", description: "On October 10, 1967, Chicago Fire Department Captain John S. Donovan, the acting chief for Battalion 23, suffered a fatal heart attack in the line of duty. Donovan’s battalion responded to a fire in a three-story vacant building on Komensky Avenue, and one firefighter was overcome with smoke inhalation while battling the blaze. Instead of waiting for an ambulance, Donovan drove the firefighter to Mount Sinai Hospital in his own departmental vehicle. As he helped the injured firefighter into the hospital, Donovan collapsed from a heart attack, and doctors were unable to revive him."},
{rank: "Sergeant", first_name: "John", middle_name: "", last_name: "Nagle", department: "Northlake Police Department", date_deceased: "10/27/1967", description: ""},
{rank: "Firefighter", first_name: "Michael", middle_name: "A.", last_name: "Talley", department: "Chicago Fire Department", date_deceased: "02/01/1985", description: ""},
{rank: "Officer", first_name: "Anthony", middle_name: "", last_name: "Perri", department: "Northlake Police Department", date_deceased: "10/27/1967", description: ""},
{rank: "Sergeant", first_name: "Salvatore", middle_name: "", last_name: "Genualdi", department: "Streamwood Police Department", date_deceased: "12/04/1967", description: ""},
{rank: "Sergeant", first_name: "M.", middle_name: "Chester", last_name: "Means", department: "Olympia Fields Police Department", date_deceased: "12/09/1967", description: ""},
{rank: "Officer", first_name: "John", middle_name: "", last_name: "Collins", department: "Chicago Police Department", date_deceased: "12/13/1967", description: ""},
{rank: "Firefighter", first_name: "Thomas", middle_name: "J.", last_name: "Conley", department: "Chicago Fire Department", date_deceased: "01/08/1968", description: ""},
{rank: "Captain", first_name: "John", middle_name: "", last_name: "Fischer", department: "Chicago Fire Department", date_deceased: "02/07/1968", description: ""},
{rank: "Firefighter", first_name: "Edward", middle_name: "", last_name: "Leifker", department: "Chicago Fire Department", date_deceased: "02/07/1968", description: ""},
{rank: "Officer", first_name: "Young", middle_name: "C.", last_name: "Hobson", department: "Chicago Police Department", date_deceased: "05/03/1968", description: ""},
{rank: "Officer", first_name: "Henry", middle_name: "", last_name: "Peeler", department: "Chicago Police Department", date_deceased: "06/05/1968", description: ""},
{rank: "Fire Marshal", first_name: "John", middle_name: "W.", last_name: "Daugherty", department: "Chicago Fire Department", date_deceased: "06/16/1968", description: ""},
{rank: "Officer", first_name: "John", middle_name: "R.", last_name: "Tucker", department: "Chicago Police Department", date_deceased: "10/08/1968", description: ""},
{rank: "Detective", first_name: "Clayton", middle_name: "", last_name: "Robinson", department: "Chicago Police Department", date_deceased: "10/25/1968", description: ""},
{rank: "Firefighter", first_name: "Gary", middle_name: "D.", last_name: "Descher", department: "Chicago Fire Department", date_deceased: "12/10/1968", description: ""},
{rank: "Officer", first_name: "Joseph", middle_name: "", last_name: "Ferguson", department: "Chicago Police Department", date_deceased: "12/27/1968", description: ""},
{rank: "Firefighter", first_name: "James", middle_name: "P.", last_name: "Fisher", department: "Chicago Fire Department", date_deceased: "12/31/1968", description: ""},
{rank: "Officer", first_name: "Earl", middle_name: "", last_name: "Kasten", department: "Chicago Police Department", date_deceased: "02/24/1969", description: ""},
{rank: "Deputy Sheriff", first_name: "Richard", middle_name: "", last_name: "Vail", department: "Cook County Sheriff's Department", date_deceased: "03/13/1969", description: ""},
{rank: "Captain", first_name: "Frank", middle_name: "", last_name: "Schnurstein", department: "Forest Park Fire Department", date_deceased: "03/28/1969", description: ""},
{rank: "Officer", first_name: "Charles", middle_name: "", last_name: "Pollard", department: "Chicago Police Department", date_deceased: "12/14/1967", description: ""},
{rank: "Deputy Sheriff", first_name: "Earl", middle_name: "F.", last_name: "Dannenberg", department: "Cook County Sheriff's Department", date_deceased: "12/22/1967", description: ""},
{rank: "Sergeant", first_name: "James", middle_name: "", last_name: "Schaffer", department: "Chicago Police Department", date_deceased: "04/14/1969", description: ""},
{rank: "Detective", first_name: "Jerome", middle_name: "A.", last_name: "Stubig", department: "Chicago Police Department", date_deceased: "04/14/1969", description: ""},
{rank: "Officer", first_name: "Erwin", middle_name: "", last_name: "Jackson", department: "Chicago Police Department", date_deceased: "04/24/1969", description: ""},
{rank: "Firefighter", first_name: "Lawrence", middle_name: "J.", last_name: "Kelly", department: "Chicago Fire Department", date_deceased: "09/14/1969", description: ""},
{rank: "Officer", first_name: "Frank", middle_name: "G.", last_name: "Rappaport", department: "Chicago Police Department", date_deceased: "11/13/1969", description: ""},
{rank: "Officer", first_name: "Samuel", middle_name: "", last_name: "Lynch", department: "Chicago Police Department", date_deceased: "11/13/1969", description: ""},
{rank: "Detective", first_name: "Oliver", middle_name: "J.", last_name: "Singleton", department: "Chicago Police Department", date_deceased: "11/27/1969", description: ""},
{rank: "Officer", first_name: "John", middle_name: "T.", last_name: "Lynch", department: "Chicago Police Department", date_deceased: "12/19/1969", description: ""},
{rank: "Lieutenant", first_name: "James", middle_name: "E.", last_name: "O'Connor", department: "Chicago Police Department", date_deceased: "01/28/1970", description: ""},
{rank: "Youth", first_name: "Officer", middle_name: "", last_name: "Tristano", department: "Chicago Police Department", date_deceased: "03/13/1970", description: ""},
{rank: "Officer", first_name: "Melvin", middle_name: "E.", last_name: "Brown", department: "Chicago Police Department", date_deceased: "06/03/1970", description: ""},
{rank: "Officer", first_name: "Kenneth", middle_name: "G.", last_name: "Kaner", department: "Chicago Police Department", date_deceased: "06/19/1970", description: ""},
{rank: "Officer", first_name: "Anthony", middle_name: "", last_name: "Rizzato", department: "Chicago Police Department", date_deceased: "07/17/1970", description: ""},
{rank: "Detective", first_name: "James", middle_name: "A.", last_name: "Alfano", department: "Chicago Police Department", date_deceased: "08/16/1970", description: ""},
{rank: "Officer", first_name: "Leonard", middle_name: "", last_name: "Morgan", department: "Chicago Police Department", date_deceased: "09/16/1970", description: ""},
{rank: "Firefighter", first_name: "James", middle_name: "J.", last_name: "Pratt", department: "Chicago Fire Department", date_deceased: "09/29/1970", description: ""},
{rank: "Officer", first_name: "John", middle_name: "", last_name: "Matonich", department: "Chicago Police Department", date_deceased: "10/16/1970", description: ""},
{rank: "Officer", first_name: "Paul", middle_name: "", last_name: "Thomas", department: "Chicago Police Department", date_deceased: "11/04/1970", description: ""},
{rank: "Lieutenant", first_name: "William", middle_name: "M.", last_name: "Quinn", department: "Chicago Fire Department", date_deceased: "02/13/1971", description: ""},
{rank: "Firefighter", first_name: "Martin", middle_name: "W.", last_name: "Dyer", department: "Chicago Fire Department", date_deceased: "02/13/1971", description: ""},
{rank: "Volunteer Firefighter", first_name: "Edward", middle_name: "", last_name: "Nowakowski", department: "Forest River Fire Deparment", date_deceased: "02/21/1971", description: ""},
{rank: "Firefighter", first_name: "Harry", middle_name: "E.", last_name: "Bielawski", department: "Chicago Fire Department", date_deceased: "03/20/1971", description: ""},
{rank: "Lieutenant", first_name: "Joseph", middle_name: "W.", last_name: "Janovic", department: "Chicago Fire Department", date_deceased: "04/23/1971", description: ""},
{rank: "Captain", first_name: "Otto", middle_name: "R.", last_name: "Pospisil", department: "Chicago Fire Department", date_deceased: "04/25/1971", description: ""},
{rank: "Lieutenant", first_name: "William", middle_name: "J.", last_name: "Zink", department: "Chicago Fire Department", date_deceased: "04/26/1971", description: ""},
{rank: "Firefighter", first_name: "Louis", middle_name: "B.", last_name: "Coda", department: "Chicago Fire Department", date_deceased: "05/04/1971", description: ""},
{rank: "Officer", first_name: "Sidney", middle_name: "", last_name: "Sam", department: "Chicago Police Department", date_deceased: "06/16/1971", description: ""},
{rank: "Deputy U.S. Marshal", first_name: "Henry", middle_name: "", last_name: "Dale", department: "U.S. Marshal's Service", date_deceased: "07/15/1971", description: ""},
{rank: "Officer", first_name: "Irwin", middle_name: "F.", last_name: "Hayden", department: "Chicago Police Department", date_deceased: "08/10/1971", description: ""},
{rank: "Officer", first_name: "Melvin", middle_name: "", last_name: "Cohen", department: "Chicago Police Department", date_deceased: "12/07/1971", description: ""},
{rank: "Firefighter", first_name: "Martin", middle_name: "M.", last_name: "Gillan", department: "Maywood Fire Department", date_deceased: "01/18/1972", description: ""},
{rank: "Officer", first_name: "Robert", middle_name: "E.", last_name: "Mackey", department: "Chicago Police Department", date_deceased: "05/19/1972", description: ""},
{rank: "Officer", first_name: "Robert", middle_name: "", last_name: "Gallowitch", department: "Chicago Police Department ", date_deceased: "05/24/1972", description: ""},
{rank: "Officer", first_name: "James", middle_name: "R.", last_name: "Scannell", department: "Chicago Police Department ", date_deceased: "07/02/1972", description: ""},
{rank: "Officer", first_name: "Anthony", middle_name: "", last_name: "Raymond", department: "Hillside Police Department", date_deceased: "10/01/1972", description: ""},
{rank: "Lieutenant", first_name: "Edward", middle_name: "V.", last_name: "O'Neill", department: "Chicago Police Department ", date_deceased: "11/01/1972", description: ""},
{rank: "Officer", first_name: "Edgar", middle_name: "", last_name: "DeCuir", department: "Chicago Police Department", date_deceased: "12/22/1972", description: ""},
{rank: "Firefighter", first_name: "Richard", middle_name: "E.", last_name: "Kowalzyk", department: "Chicago Fire Department", date_deceased: "01/06/1973", description: ""},
{rank: "Firefighter", first_name: "Timothy", middle_name: "W.", last_name: "Moran", department: "Chicago Fire Department  ", date_deceased: "01/06/1973", description: ""},
{rank: "Firefighter", first_name: "Alfred", middle_name: "E.", last_name: "Stach", department: "Chicago Fire Department", date_deceased: "01/06/1973", description: ""},
{rank: "Officer", first_name: "Robert", middle_name: "F.", last_name: "Wenzel", department: "Chicago Police Department", date_deceased: "01/19/1973", description: ""},
{rank: "Sergeant", first_name: "Michael", middle_name: "F.", last_name: "Maguire", department: "Chicago Police Department ", date_deceased: "01/24/1973", description: ""},
{rank: "Volunteer Firefighter", first_name: "Warren", middle_name: "H.", last_name: "Ahlgrim", department: "Palatine Fire Department ", date_deceased: "02/23/1973", description: ""},
{rank: "Volunteer Firefighter", first_name: "Richard", middle_name: "H.", last_name: "Freeman", department: "Palatine Fire Department ", date_deceased: "02/23/1973", description: ""},
{rank: "Volunteer Firefighter", first_name: "John", middle_name: "T.", last_name: "Wilson", department: "Palatine Fire Department", date_deceased: "02/23/1973", description: ""},
{rank: "Lieutenant", first_name: "Thomas", middle_name: "J.", last_name: "Nolan", department: "Chicago Fire Department", date_deceased: "03/17/1973", description: ""},
{rank: "Officer", first_name: "Wendell", middle_name: "", last_name: "Hicks", department: "Chicago Police Department", date_deceased: "03/29/1973", description: ""},
{rank: "Officer", first_name: "Louis", middle_name: "", last_name: "Cullotta", department: "Chicago Police Department ", date_deceased: "07/26/1973", description: ""},
{rank: "Officer", first_name: "Edward", middle_name: "L.", last_name: "Barron", department: "Chicago Police Department", date_deceased: "09/28/1973", description: ""},
{rank: "Officer", first_name: "Joseph", middle_name: "R.", last_name: "Jankovsky", department: "Countryside Police Department", date_deceased: "04/06/1974", description: ""},
{rank: "Officer", first_name: "Thomas", middle_name: "A.", last_name: "Wodarczyk", department: "Chicago Police Department", date_deceased: "04/08/1974", description: ""},
{rank: "Officer", first_name: "William", middle_name: "", last_name: "Bodnar", department: "Chicago Police Department", date_deceased: "04/08/1974", description: ""},
{rank: "Firefighter", first_name: "John", middle_name: "P.", last_name: "Tiberi", department: "Chicago Heights Fire Department ", date_deceased: "05/06/1974", description: ""},
{rank: "Officer", first_name: "Robert", middle_name: "", last_name: "Stugala", department: "Chicago Police Department ", date_deceased: "06/16/1974", description: ""},
{rank: "Sergeant", first_name: "Otha", middle_name: "M.", last_name: "LeMons", department: "Chicago Police Department", date_deceased: "08/05/1974", description: ""},
{rank: "Officer", first_name: "Thomas", middle_name: "J.", last_name: "Glynn", department: "Chicago Police Department ", date_deceased: "09/20/1974", description: ""},
{rank: "Deputy Sheriff", first_name: "Joseph", middle_name: "", last_name: "Law", department: "Cook County Sheriff's Department ", date_deceased: "09/21/1974", description: ""},
{rank: "Officer", first_name: "Harl", middle_name: "G.", last_name: "Meister", department: "Chicago Police Department", date_deceased: "12/23/1974", description: ""},
{rank: "Officer", first_name: "Jesse", middle_name: "", last_name: "Brown", department: "Chicago Police Department", date_deceased: "02/11/1975", description: ""},
{rank: "Officer", first_name: "Joseph", middle_name: "", last_name: "Higgins", department: "Chicago Police Department", date_deceased: "03/23/1975", description: ""},
{rank: "Officer", first_name: "Joseph", middle_name: "P.", last_name: "Cali", department: "Chicago Police Department", date_deceased: "05/20/1975", description: ""},
{rank: "Firefighter", first_name: "Ronald", middle_name: "F.", last_name: "Lemar", department: "Chicago Fire Department", date_deceased: "08/13/1975", description: ""},
{rank: "Firefighter", first_name: "Don", middle_name: "", last_name: "Jr.", department: "Chicago Fire Department", date_deceased: "08/15/1975", description: ""},
{rank: "Firefighter", first_name: "Robert", middle_name: "J.", last_name: "Cerkoske", department: "Chicago Fire Department", date_deceased: "05/01/1975", description: ""},
{rank: "Officer", first_name: "Alan", middle_name: "J.", last_name: "Vargo", department: "Arlington Heights Police Department ", date_deceased: "07/18/1976", description: ""},
{rank: "Officer", first_name: "Patrick", middle_name: "J.", last_name: "Crowley", department: "Chicago Police Department", date_deceased: "09/13/1976", description: ""},
{rank: "Officer", first_name: "Terrence", middle_name: "E.", last_name: "Loftus", department: "Chicago Police Department", date_deceased: "10/12/1976", description: "Officer Terrence Loftus was shot and killed when he attempted to intervene in a dispute between two rival gangs.

Officer Loftus was on his way home when he observed a gang fight. A group of gang members were chasing the rival gang member at the corner of Fullerton Avenue and Central Park Avenue. Officer Loftus exited his patrol car and attempted to stop the altercation.

Many members of the rival gang were having a party in a club across the street and when they saw what was happening they all came out of the club. One of them fired a shot that struck Officer Loftus in the spine. He was transported to a local hospital where he succumbed to his wounds two days later.

The suspect was apprehended and convicted. He was sentenced to life in prison.

Officer Loftus was a 15 year veteran of the Chicago Police Department."},
{rank: "Officer", first_name: "Donald", middle_name: "E.", last_name: "Andrews", department: "Chicago Police Department", date_deceased: "01/01/1975", description: ""},
{rank: "Firefighter", first_name: "Walter", middle_name: "E.", last_name: "Watroba", department: "Chicago Fire Department", date_deceased: "11/22/1976", description: ""},
{rank: "Firefighter", first_name: "Wallace", middle_name: "", last_name: "Marsek", department: "Westchester Fire Department", date_deceased: "01/03/1977", description: ""},
{rank: "Sergeant", first_name: "Michael", middle_name: "A.", last_name: "Palese", department: "Chicago Police Department", date_deceased: "03/21/1977", description: ""},
{rank: "Firefighter", first_name: "Leonard", middle_name: "", last_name: "Kaiser", department: "Mt. Prospect Fire Department", date_deceased: "06/23/1977", description: ""},
{rank: "Investigator", first_name: "John", middle_name: "A.", last_name: "Rusnak", department: "Cook County Sheriff's Police", date_deceased: "08/03/1977", description: ""},
{rank: "Officer", first_name: "James", middle_name: "W.", last_name: "Koumoundouros", department: "Chicago Police Department", date_deceased: "09/07/1977", description: ""},
{rank: "Firefighter", first_name: "Anthony", middle_name: "", last_name: "Jr.", department: "Schaumburg Fire Department", date_deceased: "12/16/1977", description: ""},
{rank: "Firefighter", first_name: "James", middle_name: "M.", last_name: "Smith", department: "Chicago Fire Department", date_deceased: "12/16/1977", description: ""},
{rank: "Firefighter", first_name: "Patrick", middle_name: "J.", last_name: "Bowler", department: "Chicago Fire Department", date_deceased: "02/24/1978", description: ""},
{rank: "Firefighter", first_name: "Daniel", middle_name: "J.", last_name: "McGovern", department: "Chicago Fire Department", date_deceased: "03/16/1978", description: ""},
{rank: "Firefighter", first_name: "John", middle_name: "W.", last_name: "Grasser", department: "Chicago Fire Department", date_deceased: "05/04/1978", description: ""},
{rank: "Officer", first_name: "James", middle_name: "E.", last_name: "O'Connell", department: "Chicago Police Department", date_deceased: "05/20/1978", description: ""},
{rank: "Sergeant", first_name: "Anthony", middle_name: "F.", last_name: "Janowski", department: "Chicago Police Department", date_deceased: "09/14/1978", description: ""},
{rank: "Firefighter", first_name: "Robert", middle_name: "C.", last_name: "Sorby", department: "Chicago Fire Department", date_deceased: "10/20/1978", description: ""},
{rank: "Officer", first_name: "James", middle_name: "", last_name: "Days", department: "Chicago Police Department", date_deceased: "11/10/1978", description: ""},
{rank: "Officer", first_name: "William", middle_name: "P.", last_name: "Bosak", department: "Chicago Police Department", date_deceased: "03/03/1979", description: ""},
{rank: "Officer", first_name: "Roger", middle_name: "", last_name: "Schaik", department: "Chicago Police Department", date_deceased: "03/03/1979", description: ""},
{rank: "Officer", first_name: "Jose", middle_name: "", last_name: "Torres", department: "Chicago Police Department", date_deceased: "08/02/1979", description: ""},
{rank: "Firefighter", first_name: "Donald", middle_name: "", last_name: "Simpson", department: "Chicago Fire Department", date_deceased: "02/06/1980", description: ""},
{rank: "Officer", first_name: "Richard", middle_name: "", last_name: "Gipson", department: "Chicago Police Department", date_deceased: "02/04/1981", description: ""},
{rank: "Officer", first_name: "Robert", middle_name: "E.", last_name: "Marousek", department: "Chicago Police Department", date_deceased: "02/28/1981", description: ""},
{rank: "Firefighter", first_name: "Thomas", middle_name: "M.", last_name: "Lydon", department: "Chicago Fire Department", date_deceased: "03/27/1981", description: ""},
{rank: "First Deputy Superintendant", first_name: "James", middle_name: "J.", last_name: "Riordan", department: "Chicago Police Department", date_deceased: "06/06/1981", description: ""},
{rank: "Officer", first_name: "Michael", middle_name: "J.", last_name: "Healy", department: "U.S. Postal Police", date_deceased: "06/21/1981", description: ""},
{rank: "Firefighter", first_name: "Joseph", middle_name: "A.", last_name: "Hitz", department: "Chicago Fire Department", date_deceased: "09/22/1981", description: ""},
{rank: "Sergeant", first_name: "Lloyd", middle_name: "M.", last_name: "Wickliffe", department: "Cook County Sheriff's Police", date_deceased: "01/11/1982", description: ""},
{rank: "Officer", first_name: "Edgar", middle_name: "", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "01/25/1982", description: ""},
{rank: "Officer", first_name: "James", middle_name: "E.", last_name: "Doyle", department: "Chicago Police Department", date_deceased: "02/05/1982", description: ""},
{rank: "Officer", first_name: "Richard", middle_name: "J.", last_name: "O'Brien", department: "Chicago Police Department", date_deceased: "02/09/1982", description: ""},
{rank: "Officer", first_name: "William", middle_name: "P.", last_name: "Fahey", department: "Chicago Police Department", date_deceased: "02/10/1982", description: ""},
{rank: "Firefighter", first_name: "Robert", middle_name: "W.", last_name: "Danaher", department: "Chicago Fire Department", date_deceased: "03/05/1982", description: ""},
{rank: "Officer", first_name: "John", middle_name: "F.", last_name: "Lynch", department: "Chicago Police Department", date_deceased: "08/19/1982", description: ""},
{rank: "Officer", first_name: "Martin", middle_name: "", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "09/27/1982", description: ""},
{rank: "Sergeant", first_name: "Hampton", middle_name: "", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "11/20/1982", description: ""},
{rank: "Special Agent", first_name: "Robert", middle_name: "W.", last_name: "Conners", department: "F.B.I.", date_deceased: "12/16/1982", description: ""},
{rank: "Special Agent", first_name: "Charles", middle_name: "L.", last_name: "Ellington", department: "F.B.I.", date_deceased: "12/16/1982", description: ""},
{rank: "Special Agent", first_name: "Terry", middle_name: "B.", last_name: "Hereford", department: "F.B.I.", date_deceased: "12/16/1982", description: ""},
{rank: "Special Agent", first_name: "Michael", middle_name: "J.", last_name: "Lynch", department: "F.B.I.", date_deceased: "12/16/1982", description: ""},
{rank: "Officer", first_name: "Larry", middle_name: "J.", last_name: "Vincent", department: "Chicago Police Department", date_deceased: "01/14/1983", description: ""},
{rank: "Officer", first_name: "Wayne", middle_name: "J.", last_name: "Klacza", department: "Chicago Police Department", date_deceased: "06/28/1983", description: ""},
{rank: "Officer", first_name: "Anthony", middle_name: "L.", last_name: "Creed", department: "Chicago Police Department", date_deceased: "08/30/1983", description: ""},
{rank: "Volunteer Firefighter", first_name: "Thomas", middle_name: "", last_name: "Baron", department: "Steger Fire Department", date_deceased: "01/03/1984", description: ""},
{rank: "Officer", first_name: "Fred", middle_name: "Eckles,", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "01/17/1984", description: ""},
{rank: "Officer", first_name: "Dorelle", middle_name: "C.", last_name: "Brandon", department: "Chicago Police Department", date_deceased: "01/25/1984", description: ""},
{rank: "Sergeant", first_name: "John", middle_name: "J.", last_name: "Collins", department: "Chicago Police Department", date_deceased: "02/07/1984", description: ""},
{rank: "Officer", first_name: "Bruce", middle_name: "N.", last_name: "Garrison", department: "Chicago Police Department", date_deceased: "02/27/1974", description: "

"},
{rank: "Firefighter", first_name: "Sidney", middle_name: "", last_name: "Brown", department: "Chicago Fire Department", date_deceased: "08/09/1983", description: ""},
{rank: "Firefighter", first_name: "Phillip", middle_name: "", last_name: "Kenneally", department: "Chicago Fire Department", date_deceased: "10/31/1984", description: ""},
{rank: "Captain", first_name: "Daniel", middle_name: "A.", last_name: "Nockels", department: "Chicago Fire Department", date_deceased: "02/01/1985", description: ""},
{rank: "Firefighter", first_name: "Michael", middle_name: "L.", last_name: "Forchione", department: "Chicago Fire Department", date_deceased: "02/01/1985", description: ""},
{rank: "Officer", first_name: "Leland", middle_name: "", last_name: "Jr.", department: "Hoffman Estates Police Department", date_deceased: "04/06/1985", description: ""},
{rank: "Firefighter", first_name: "Raymond", middle_name: "", last_name: "Magnus", department: "Chicago Fire Department", date_deceased: "05/29/1985", description: ""},
{rank: "Detective", first_name: "Wayne", middle_name: "G.", last_name: "King", department: "Chicago Police Department", date_deceased: "07/12/1985", description: ""},
{rank: "Firefighter", first_name: "Raymond", middle_name: "", last_name: "Sidwell", department: "Chicago Fire Department", date_deceased: "07/15/1985", description: ""},
{rank: "Officer", first_name: "Michael", middle_name: "", last_name: "Ridges", department: "Cook County Sheriff's Police", date_deceased: "10/17/1985", description: ""},
{rank: "Officer", first_name: "Kenneth", middle_name: "", last_name: "Dawson", department: "Wheeling Police Department", date_deceased: "11/05/1985", description: ""},
{rank: "Lieutenant", first_name: "Edmond", middle_name: "P.", last_name: "Coglianese", department: "Chicago Fire Department", date_deceased: "01/26/1986", description: ""},
{rank: "Officer", first_name: "Richard", middle_name: "W.", last_name: "Clark", department: "Chicago Police Department", date_deceased: "04/03/1986", description: ""},
{rank: "Firefighter", first_name: "Teddy", middle_name: "A.", last_name: "Jezuit", department: "Chicago Fire Department", date_deceased: "06/03/1986", description: ""},
{rank: "Lieutenant", first_name: "Robert", middle_name: "J.", last_name: "Liesz", department: "Chicago Fire Department", date_deceased: "06/17/1986", description: "Lt. Robert J. Liesz of the 10th Battalion was killed June 17, 1986, when an air conditioner fell three stories onto his head during an apartment building fire.



"},
{rank: "Officer", first_name: "George", middle_name: "T.", last_name: "Bryja", department: "Chicago Police Department", date_deceased: "07/27/1986", description: "Patrolman George T. Bryja collapsed and died of a heart attack after a foot pursuit.

Officer Bryja was off duty when he was awakened at 3:00 a.m. by the sound of the burglar alarm on the family car. His wife set the alarm off when she drove up to the house and saw two men trying to set a neighbor's garage on fire after spray-painting it with graffiti.

Officer Bryja and his 18-year-old son chased the vandals through an alley for four blocks before loosing them. When he returned home, he was sweating profusely, complained of chest pains and collapsed. Officer Bryja was transported to Holy Cross Hospital where he was pronounced dead at 4:51 a.m.

Officer Bryja was a veteran of the Marines and served 20-years with the Chicago Police Department, assigned to the Morgan Park District. His wife, daughter and a son survive him. Officer Bryja's son followed in his father's footsteps and joined the Chicago Police Department."},
{rank: "Sergeant", first_name: "Richard", middle_name: "Davenport,", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "08/04/1986", description: "Sergeant Richard Davenport, Jr., 54, was a 26-year veteran of the Chicago Police Department, assigned to the 9<sup>th </sup>District.
On August 4, 1986, Sergeant Davenport, while off duty, was alerted to an attempted auto theft in his neighborhood. He responded, identified himself as a police officer and began to question five youths. As Davenport spoke to the group, one of them, Dwayne Thomas, pulled a gun and shot the sergeant three times. Davenport was rushed to South Chicago Hospital where he died from his injuries.
Sergeant Davenport is survived by his wife, Evelyn; son, Richard III; and brothers, Artie and Ray."},
{rank: "Officer", first_name: "Jay", middle_name: "F.", last_name: "Brunkella", department: "Chicago Police Department", date_deceased: "10/04/1986", description: "Police Officer Jay Brunkella, 39, was an 18-year veteran of the Chicago Police Department, assigned to the 024 District Tactical Unit.
On September 22, 1986, Officer Brunkella was fatally shot when his partner’s gun accidentally discharged.  The officers were at Stephen F. Gale Community Academy at 1631 W. Jonquil Terrace when they observed Allison Jenkins, 28, making two drug deals in front of the elementary school.  A struggle ensued between Jenkins and Officer Brunkella’s partner when they both fell to the ground and officer’s gun discharged, shooting Officer Brunkella in the chest.
Officers confiscated 4.89 grams of marijuana from the offender. There were no available ambulances at the time of the shooting and Officer Brunkella was rushed to St. Francis Hospital in Evanston in a squad car.  He succumbed to his wounds on October 4, 1986.
Allison Jenkins was found guilty of “felony murder,” a law which holds an offender responsible for committing a forcible felony and setting forth a chain of events which leads to a person’s death.  He was sentenced to serve 20 years in prison.
Officer Brunkella is survived by his wife, Carol; son, Tyler; mother, Shirley; and a brother, Gary."},
{rank: "Firefighter", first_name: "James", middle_name: "E.", last_name: "Hill", department: "Chicago Fire Department", date_deceased: "07/04/1987", description: "


The first Chicago firefighter to die this year while on duty was killed in a fire that police are blaming on a 4th of July rocket. Firefighter James E. Hill, 44, died in the fire, and three other firefighters were injured, one seriously.

Hill, a nine-year veteran of the Chicago Fire Department, died at Cook County Hospital of burns and smoke inhalation, said department spokesman Jerry Lawrence. Hill, who was married with three children, was assigned to Engine Co. 49 of the 15th Battalion. Investigators believe the fire began late Saturday when a bottle rocket was fired into an open attic window. Where, neighbors said, boxes of books and old clothing had been stored in.

An alarm was sounded at 10:13 p.m., and four trucks from the 15th Battalion responded. Damage to the 2 1/2-story brick building was confined to the roof and attic, but a build-up of combustible gases in that area may have contributed to the firefighters injuries.


"},
{rank: "Officer", first_name: "William", middle_name: "M.", last_name: "Morrison", department: "Chicago Police Department", date_deceased: "09/04/1987", description: "Officer Morrison was killed when his patrol car was broadsided by a drunk driver traveling at a high rate of speed.

While working special employment for Public Housing North, Officer Morrison learned of a man with a shotgun in the area. Accompanied by other officers, Morrison responded to the scene. Suddenly, his police vehicle was struck broadside by a vehicle traveling at a high speed, driven by a drunk driver failed to yield right of way at an intersection. The violent impact resulted in Officer Morrison's death.

Officer Morrison had served with the agency for 29 years. He was survived by his wife, son, and two daughters."},
{rank: "Captain", first_name: "Richard", middle_name: "", last_name: "O'Connor", department: "Chicago Fire Department", date_deceased: "10/05/1987", description: "On October 5, 1987, Chicago Fire Department Captain Richard O’Connor of Engine 29 collapsed after climbing ten flights of stairs while responding to a false alarm in a multi-story Chicago Housing Authority project building. The building’s two elevators had been vandalized and were not in operation, leaving the stairs as the only way to reach the upper levels of the building. Paramedics attempted to revive O’Connor on-scene for more than forty minutes before taking him to Michael Reese Hospital where he was pronounced dead from a heart attack."},
{rank: "Officer", first_name: "Lee", middle_name: "R.", last_name: "Seward", department: "Chicago Police Department", date_deceased: "12/30/1987", description: "Police Officer Lee Seward, 43, was a 16-year veteran of the Chicago Police Department, assigned to the 023 District. On December 30, 1987, Officer Seward and his partner, Patricia Cosgrove, responded for the second time to an apartment building in the 4000 block of North Sheridan Road.
Earlier in the day, the partners had visited the apartment after a tenant called police to report a neighbor banging on her door.  When the officers arrived at the scene for the second time, the offender, John Rogers, 24, resisted arrest.  While Officer Cosgrove radioed for backup, Rogers scuffled with Officer Seward.  As Officer Seward attempted to handcuff Rogers, the offender used his free hand to remove the officer’s service weapon from his broken holster.
Officer Seward backed away from the offender, but Rogers fired at the officer.  Officer Cosgrove pulled her bleeding partner to the shelter of a hallway.  Officers arriving for assistance heard the gunfire erupt as they raced up the stairs.  Rogers turned off the lights in his bedroom and attempted to shoot the responding officers.  They returned gunfire and Rogers died at the scene.  Officer Seward was pronounced dead upon arrival at Weiss Memorial Hospital.
Officer Seward is survived by his wife, Michaelene; and a son, Lee Jr."},
{rank: "Correctional Officer", first_name: "Jeffery", middle_name: "", last_name: "Blakey", department: "Cook County Department of Corrections", date_deceased: "01/05/1988", description: "Correctional Officer Jeffery Blakey died as a result of an injury he suffered six weeks earlier while stopping an inmate from escaping a courthouse in Des Plaines.

One of five prisoners tried to escape out of a fire exit during their transport to court. Correctional Officer Blakey became involved in a physical altercation with this prisoner who was being held on burglary charges. As a result of the struggle that ensued, Correctional Officer Blakey was thrown down a flight of stairs and suffered a compound fracture of his ankle.

During his recuperation at Mt. Sinai Hospital in Chicago, Correctional Officer Blakey was stricken with a pulmonary embolism and remained in a coma until his death six weeks later.

Correctional Officer Blakey had served with the Cook County Department of Corrections for 17 years. He was survived by his daughter, mother and brother."},
{rank: "Officer", first_name: "John", middle_name: "W.", last_name: "Mathews", department: "Chicago Police Department", date_deceased: "05/21/1988", description: "Officer John W. Mathews was attacked and killed by five assailants. Officer Mathews was returning home and was attacked and killed by five assailants while investigating a drinking and drag racing party. He was off duty when he noticed several squad cars down the street. He went to assist the officers and cleared the scene. Later in the night he returned to the scene to check on it when five men came out of the woods and attacked him with several blunt objects. The killers were arrested and convicted; all have since been released from prison. Officer Mathews served the Chicago Police Department for 18 months. He is survived by his wife, three children, parents, three sisters and a brother."},
{rank: "Officer", first_name: "Irma", middle_name: "C.", last_name: "Ruiz", department: "Chicago Police Department", date_deceased: "09/22/1988", description: "Officer Irma Ruiz was shot and killed confronting an armed offender in a school.

A heavily armed gunman went on a shooting rampage, killing three people and wounding another. The assailant then entered an elementary school filled with children. Already in the school, Officer Irma Ruiz learned of the situation and confronted the gunman.

After wounding one officer, the gunman fired at Officer Ruiz. She was mortally wounded in the attack. Despite being wounded, Officer Ruiz's partner was able to return fire and kill the gunman.

Officer Ruiz had served with the agency for 12 years and is survived by her husband, daughter, and three sons.

"},
{rank: "Firefighter", first_name: "Douglas", middle_name: "", last_name: "Maicach", department: "South Holland Fire Department", date_deceased: "01/03/1989", description: "On January 3, 1989, Firefighter Douglas Maicach of the South Holland Fire Department died in the line of duty while fighting a fire at the headquarters of a trucking company. Maicach had just arrived at the fire when a sixty-pound propane tank on a burning forklift truck exploded. The tank was thrown more than thirty feet and struck Maicach in the parking lot as he was unloading a hose from a fire engine. The tank continued to travel another 125 feet after striking Maicach.
Maicach had been a firefighter with the South Holland Fire Department for five years, first as a paid-on-call firefighter and then, beginning in 1988, as a career firefighter. At the time of his death, he was in the process of becoming a certified paramedic.
More than 380 firefighters from more than fifty departments attended Maicach’s funeral. On May 30, 1992, a local South Holland park was renamed Maicach Park in his memory."},
{rank: "Officer", first_name: "Barry", middle_name: "", last_name: "Shalin", department: "Morton Grove Police Department", date_deceased: "10/09/1989", description: "Patrolman Barry Shalin was struck and killed by a drunken driver while making a traffic stop.

The suspect was arrested and convicted in connection with Patrolman Shalin's death.

Patrolman Shalin had served with the Morton Grove Police Department for 19 years."},
{rank: "Lietenant", first_name: "Joseph", middle_name: "", last_name: "Samec", department: "Pleasantview Fire Protection District ", date_deceased: "12/06/1989", description: "On December 9, 1989, Lieutenant Joseph Samec of the Pleasantview Fire Protection District died in the line of duty while fighting a house fire in Burr Ridge, Illinois. The fire was discovered shortly after 4:30 PM, and more than fifty firefighters from twelve different departments responded to the blaze at the vacant, twelve-room house that was under renovation.

Firefighters initially attacked the fire from outside the house and Samec was among the first firefighters to enter the burning structure. The firefighters entered through the front of the house, but were almost immediately called back when they discovered that the basement was on fire and noticed that the floor was starting to buckle. Samec and Lieutenant Ronald Carlson were backing out of the front entrance of the house when the floor suddenly collapsed beneath them subsequently Samec fell into the burning basement.

Firefighters immediately placed a ladder down the hole and aimed two hoses into the basement. Two firefighters, David Bobar and Ed Switalski, climbed into the burning basement in an attempt to locate Samec, but the heat and smoke were too intense. A second search attempt was more successful, as firefighters found Samec laying face down on the steps leading out of the basement, with no air left in his SCBA. Samec was rushed to La Grange Memorial Hospital, but was pronounced dead on arrival at about 5:45 PM.

Samec had joined the Pleasantview Fire Protection District in 1984. He was awarded a medal of valor in 1987, was named the Firefighter of the Year in 1988, and had received a citation for bravery two months before his death. More than 400 firefighters and more than 100 fire apparatus from various fire organizations participated in his funeral procession."},
{rank: "Officer", first_name: "Raymond", middle_name: "C.", last_name: "Kilroy", department: "Chicago Police Department", date_deceased: "05/13/1990", description: "Officers Raymond Kilroy and Gregory A. Hauser were shot and mortally wounded when they responded to a domestic disturbance between a woman and her grandson. As they talked to the grandson in a garage, he suddenly grabbed one of the officers' weapons. The suspect then fired several shots, striking both Officer Hauser and Officer Kilroy.
The suspect was apprehended and sentenced to life.

The officers were partners until the end, having joined the Department together twenty years earlier. Officer Kilroy is survived by his mother."},
{rank: "Officer", first_name: "William", middle_name: "J.", last_name: "Luce", department: "Chicago Police Department", date_deceased: "08/14/1989", description: "Police Officer William J. Luce, 45, was a 20-year veteran of the Chicago Police Department, assigned to the Special Operations Unit.

During firearms testing, Officer Luce was exposed to radiation when a scope dismantled from a gun.  The radiation caused severe burns to his body and face.  On August 14, 1989, Officer Luce died after a battle with cancer.

He is survived by his wife, Janet; sons, Richard, Nick, and Brian; and daughters, Janet Lynn and Lisa.  He was a Vietnam Veteran."},
{rank: "Officer", first_name: "Eddie", middle_name: "Jones,", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "01/07/1991", description: "Officer Eddie N. Jones was shot and mortally wounded during a narcotics investigation.
After Officer Jones and his partner made an arrest, the offender stated that he would lead the officers to his drug source. The informant, in the back seat of the police vehicle suddenly drew a concealed weapon and fired. Officer Jones and his partner were both wounded in the exchange; Officer Jones' wounds were fatal.

The shooter was apprehended and sentenced to life.

Officer Jones is survived by his wife, daughter, parents, and sister."},
{rank: "Officer", first_name: "Jimmie", middle_name: "L.", last_name: "Haynes", department: "Chicago Housing Authority Police Department ", date_deceased: "08/17/1991", description: "Officer Jimmie Haynes was shot by a sniper as he stood in the parking lot of a public housing complex.
He was transported to Mercy Hospital and Nursing Center where he died of his wound the next day.

Officer Haynes was survived by his wife, daughter, son, mother, and two brothers.
"},
{rank: "Officer", first_name: "Robert", middle_name: "", last_name: "Perkins", department: "Chicago Police Department", date_deceased: "03/07/1992", description: "Officer Robert Perkins was shot and killed as he was questioning a burglary suspect.
Officer Perkins observed an individual matching the description of a wanted burglar. As Officer Perkins questioned the suspect, the man resisted and a fierce struggle ensued. During the altercation, Officer Perkins suffered two gunshot wounds and died as a result of his injuries.

Officer Perkins' killer was apprehended and convicted. He received a life sentence.

Officer Perkins is survived by his three daughters."},
{rank: "Firefighter", first_name: "Richard", middle_name: "", last_name: "Jr.", department: "Elk Grove Township Fire Department", date_deceased: "04/04/1992", description: ""},
{rank: "Officer", first_name: "Donald", middle_name: "J.", last_name: "Mitchell", department: "Chicago Police Department", date_deceased: "04/04/1992", description: ""},
{rank: "Deputy U.S. Marshal", first_name: "Roy", middle_name: "L.", last_name: "Frakes", department: "U.S. Marshal's Service", date_deceased: "07/20/1992", description: "Deputy Marshal Roy Frakes and Special Deputy Marshal Harry Belluomini were shot and killed by a suspect who was attempting to escape from the federal courthouse in Chicago, Illinois. The suspect had removed his handcuffs with a smuggled key, assaulted a guard in the basement of the courthouse, and took her revolver. As he attempted to escape from the basement he encountered Deputy Marshal Frakes and shot him twice.
The suspect was then confronted by Special Deputy Marshal Belluomini and the two exchanged gunfire. Special Deputy Marshal Belluomini was mortally wounded and the suspect was seriously wounded. The man then committed suicide.

Deputy Marshal Frakes had served with the Marshals Service for one year. He was survived by his wife."},
{rank: "Special Deputy U.S. Marshal", first_name: "Harry", middle_name: "A.", last_name: "Belluomini", department: "U.S. Marshal's Service ", date_deceased: "07/20/1992", description: "Special Deputy Marshal Harry Belluomini and Deputy Marshal Roy Frakes were shot and killed by a suspect who was attempting to escape from the federal courthouse in Chicago, Illinois. The suspect had removed his handcuffs with a smuggled key, assaulted a guard in the basement of the courthouse, and took her revolver. As he attempted to escape from the basement he encountered Deputy Marshal Frakes and shot him twice.
The suspect was then confronted by Special Deputy Marshal Belluomini and the two exchanged gunfire. Special Deputy Marshal Belluomini was mortally wounded and the suspect was seriously wounded. The man then committed suicide.

Special Deputy Marshal Belluomini had served with the Marshals Service for three years and had previously served with the Chicago Police Department for 32 years. He was survived by his wife, son and two daughters. His three children all went on to serve with the Chicago Police Department."},
{rank: "Lieutenant", first_name: "Patrick", middle_name: "J.", last_name: "Luby", department: "Oak Park Fire Department", date_deceased: "07/29/1992", description: "On July 29, 1992, Fire Lt. Luby, a 15-year veteran with the Oak Park Fire Department, died at West Suburban Hospital after fighting a basement fire at 544 N. Humphrey Ave.  Luby, 43, was found at the stair bottom, dead from carbon monoxide intoxication and inhalation of smoke and soot, according to the Cook County Medical Examiner’s Office.

Citing a fire cause, reports stated a young child had knocked over a glass jar of paint stripper that apparently a nearby water heater had ignited.

The Oak Park Fire Department decided to memorialize Luby’s death by naming the new Fire Engine 602 after him."},
{rank: "Officer", first_name: "Albert", middle_name: "", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "09/12/1992", description: ""},
{rank: "Officer", first_name: "Gerald", middle_name: "", last_name: "Wright", department: "Chicago Police Department", date_deceased: "08/07/1993", description: "Police Officer Gerald L. Wright was shot and killed on his way home from his shift.
At about 11:30 p.m., at 934 West 79th Street, Officer Wright stopped into a store to visit the owners. When he went out to talk to a man standing outside the store, shots rang out from across the street in front of Campbell's Hoagie Shop at 942 W. 79th Street.

Officer Wright was shot in the back. He was transported to Christ Hospital and Medical Center in Oak Lawn, where he died during surgery at 3:18 a.m. Saturday morning.

Officer Wright had served with the Chicago Police Department for 20 years and is survived by his son and two daughters."},
{rank: "Firefighter", first_name: "Cadet", middle_name: "", last_name: "McNamee", department: "Chicago Fire Department", date_deceased: "11/24/1993", description: "On November 23, 1993, Cadet Firefighter Steven McNamee of the Chicago Fire Department died in the line of duty during a training accident at the Chicago Fire Academy. Candidates had been taught the proper method for jumping from a building into an inflatable Life Cube and were practicing the technique by dropping thirteen feet into the device. McNamee was performing a training exercise in which he jumped from an 18-foot-high platform onto a 5-foot-high air bag used for fire rescue operations, according to Span. He said that 21 students completed the jump before McNamee. The accident occurred at about 9 a.m. Tuesday morning at the academy, 558 W. DeKoven St., Fire Department spokesman Stanley Span said.

Span said this was the first fatal accident at the academy that he could recall in his 32 years with the department.


According to the Cook County medical examiner's office he had suffered massive head trauma.





The Illinois Department of Labor has been notified of the Fire Department's investigation into the incident, Span said. The Department of Labor and the Police Department are conducting independent investigations.

McNamee was two weeks away from graduation. \"From all the accounts I have heard from his instructors, he was a top student,\" he said. \"They all believed he would have been an excellent firefighter.\"

"},
{rank: "Deputy", first_name: "Alfred", middle_name: "", last_name: "Brown", department: "Cook County Sheriff's Department", date_deceased: "11/17/1992", description: "Deputy Alfred Brown succumbed to injuries suffered five days earlier after being struck in the head as he was arresting a man for disorderly conduct in the Cook County 6th District Courthouse in Markham.
During the arrest, the suspect began resisting and gave Deputy Brown a backwards headbutt, striking him just above the left eye. The impact caused Deputy Brown to suffer a stroke several hours after the incident, and four more times in the next five days, until his death. The coroner determined Deputy Brown's death was due to blunt head trauma and ruled it a homicide.

The suspect was sentenced to 25 years in prison but was paroled in February 2005 after serving 12 years.

Deputy Brown had served with the Cook County Sheriff's Office for 17 years and was a US Air Force veteran. He was survived by his three children, mother, brothers and sisters."},
{rank: "Officer", first_name: "John", middle_name: "J.", last_name: "Lyons", department: "Chicago Police Department", date_deceased: "10/05/1992", description: "Officer John J. Lyons was killed when the squad car he was driving struck a tree.
The accident occurred at 3:14 a.m. in the 3400 block of North Kimball. The squad car was northbound on Kimball responding to a radio assignment when it skidded and spun into a tree. After striking the tree the vehicle continued to spin forcing it to impact a light pole. Officer Lyons was ejected from the vehicle and was found lying in the middle of the street. The passenger, a probationary officer, was extricated and transported to Illinois Masonic Medical Center. The surviving officer was not able to recall any details leading up to the crash.

District Patrol Specialist John Lyons was serving as a training officer at the time of the accident. He was a 25-year veteran of the department, currently assigned to the Belmont District.

His wife, two daughters, two sons, parents and two sisters survive Officer John Lyons.

On May 25, 2006 Officer Lyons' star was retired by the Chicago Police Department."},
{rank: "Officer", first_name: "Daniel", middle_name: "", last_name: "Doffyn", department: "Chicago Police Department", date_deceased: "03/08/1995", description: "Police Officer Daniel J. Doffyn was shot and killed when he surprised burglary suspects at an apartment complex.

At 3:30 in the afternoon, Dan Doffyn and other officers were heading for their squad cars at the Austin District police station. They were about to begin their shift when they heard a radio report of a burglary in progress at a three-story, 15-unit apartment building directly across the street from the police station. A number of officers rushed to the scene, including Dan Doffyn.

They arrived to the sound of breaking glass. This alerted the officers to an escape attempt out an apartment window. Officer Doffyn ran to a gangway alongside the building and caught one of the suspects just as he was coming out the window. He was preparing to make the arrest when a second suspect, who took aim at the officer with a Tec-9 automatic handgun and fired, surprised him. Officer Doffyn was hit twice in areas not covered by his bulletproof vest. He died five hours later during surgery at Cook County Hospital.

Another officer was also shot during the gun battle, but despite a serious leg injury, he was still able to fire his weapon and critically wound the shooter. When the shooting had stopped, three suspects were in custody; all gang members with extensive criminal records.

Police Officer Daniel Doffyn was on the force for 8 months. He is survived by his 8-year-old daughter and his parents."},
{rank: "Firefighter", first_name: "Donald", middle_name: "J.", last_name: "Kaczka", department: "Chicago Fire Department", date_deceased: "03/24/1995", description: "On March 24, 1995, Engineer Donald J. Kaczka of Engine 28 of the Chicago Fire Department died in the line of duty while fighting a refuse fire on S. Laflin Avenue. At 8:15PM, Engine 28 received the alarm from the main fire alarm office and, when they arrived at the scene, the firefighters were confronted with a very large pile of burning rubbish. Kaczka drove the engine into the fire area and positioned the engine in the location that was considered to be the best vantage point for attacking the fire.

Kaczka assisted with a number of these tasks, helping to pull the dry four inch hose line that was initially connected to the faulty hydrant. He also helped move the waterlogged line when the engine was backed up and repositioned, and then dragged the waterlogged line to the engine’s new position. He also helped pull the 1-¾ inch horseshoe line off of the engine bed. Kaczka was ordered to charge the line, but before he could do so he collapsed to the ground. Kaczka’s fellow firefighters called for an ambulance and performed CPR until the paramedics arrived.

Donald J. Kaczka, 57, a Chicago firefighter, died Friday in the University of Illinois Hospital after having a heart attack at the scene of a fire at 24th and Laflin Streets.

Born in Chicago, Mr. Kaczka was an engineer who served with the fire department for 27 years.

Survived by his wife, Shirley; a son, Scott; a stepdaughter, Janice Stojetz; a stepson, Gary Siwek; his mother, Dolores; two sisters; and six grandchildren.

"},
{rank: "Trooper", first_name: "Chong", middle_name: "S.", last_name: "Lim", department: "Illinois State Police", date_deceased: "06/05/1995", description: "Trooper Chong Soo Lim was killed when his patrol car was struck from behind as he a traffic stop on the Northwest Tollway. His squad car was rear-ended and burst into flames.
Trooper Lim stopped a car on I-90, near Hoffman Estates. He was sitting in his squad car when a pickup truck struck the rear of his vehicle and forced it into the automobile in front of him. The force of the collision caused the gas tank to explode and trapped Trooper Lim inside.

The driver of the pickup truck was arrested for DUI. He was later charged with manslaughter for Trooper Lim's death and sentenced to eight years in prison.

Born in South Korea, Trooper Lim patrolled District 3 in Chicago upon his graduation from the Academy. He transferred to the midnight shift in District 15, Oak Brook, just one month before his death. He is survived by his wife.

On June 5, 1996, District 15, Oak Brook dedicated its operations area in memory of Trooper Lim."},
{rank: "Lieutenant", first_name: "Thomas", middle_name: "", last_name: "O'Boyle", department: "Chicago Fire Department", date_deceased: "09/26/1995", description: "
On September 26, Lieutenant Thomas O'Boyle of the Chicago Fire Department suffered a fatal heart attack at a fire in a furniture warehouse. Lieutenant O'Boyle, had just exited the structure after checking on the progress of firefighters inside when he collapsed.
Lt. Thomas O'Boyle, 55, the administrative assistant to Chicago Fire Commissioner Raymond Orozco, was a 28-year veteran of the Fire Department and before that served nine years as a Chicago police officer. He joined the Chicago Fire Department in 1967 and served on trucks, engines and squads. His promotion to lieutenant was in 1987, and he was made administrative aide to Orozco in 1993.
A resident of the Mt. Greenwood neighborhood, he died Tuesday, his birthday, after collapsing at the scene of a West Side warehouse fire.
\"Tom was loved by everyone he worked with,\" Orozco said. \"He always had a smile and a joke and was always trying to relieve the stress of the critical moments firefighters often find themselves in.\"




Survivors include his wife, Patricia; three daughters, Donna Gasior, Peggy Clifford and Nancy Leifker; two sons, Thomas and Daniel; and 10 grandchildren.

"},
{rank: "Officer", first_name: "Dell", middle_name: "O.", last_name: "Fountain", department: "Chicago Police Department", date_deceased: "03/22/1996", description: "Officer Dell Fountain was alerted to a disturbance in an upstairs apartment that was being used for narcotics activity. According to trial testimony, Fountain followed when Murray fled into the upstairs apartment, and he was fatally shot after the defendant grabbed for the police officer’s gun and it discharged as they struggled over it. The bullet severed a major artery and Officer Fountain, died at the hospital due to blood loss.
A Criminal Court jury on Friday convicted Tajuan Murray, 30 with shooting Chicago police officer Dell Fountain, 40, on March 22, 1996.
Officer Dell Fountain is survived by his son, daughter, their mother, his parents, Adam and Martha Fountain, two brothers and five sisters."},
{rank: "Firefighter", first_name: "Michael", middle_name: "F.", last_name: "Drobitsch", department: "Chicago Fire Department", date_deceased: "06/20/1997", description: "Firefighter Drobitsch's death occurred during a diving training session.

"},
{rank: "Sergeant", first_name: "Michael", middle_name: "", last_name: "Garner", department: "Chicago Police Department", date_deceased: "07/12/1997", description: "


Sgt. Michael Garner, 48, a narcotics officer with the Chicago Police Department who had served for 20 years, died Saturday. Sgt. Garner, who had held that rank for nine years, was shot in West Englewood while off-duty. He was a dedicated police officer who was proud of his work fighting gangs and drugs, said his cousin, Dwayn Garner. Sgt. Garner, a U.S. Army veteran, still served in the Army Reserves.

A native of Chicago, Sgt. Garner lived in the West Pullman neighborhood with his wife, Rochelle. He also is survived by a son, Brian; daughter, Kim; his mother; three brothers; and a sister.

\"He was a family man and he loved his work. He was really into his job.\"


"},
{rank: "Officer", first_name: "David", middle_name: "C.", last_name: "Evans", department: "Chicago Police Department", date_deceased: "08/25/1997", description: "Officer David C. Evans responded to a call of \"police officers requiring assistance\". As Officer Evans proceeded to the scene, three pedestrians ran onto the overpass in front of their cruiser. The cruiser swerved to avoid hitting the pedestrians and crashed through the barrier of the overpass and dropped 25 feet, landing on the Dan Ryan Expressway below.
Officer Evans sustained serious injuries which resulted in his death. He is survived by his three children."},
{rank: "Officer", first_name: "Gregory", middle_name: "I.", last_name: "Young", department: "Chicago Police Department", date_deceased: "09/18/1997", description: "Officer Gregory Ivan Young was shot and killed during a robbery attempt. Officer Young was seated in his car when he was approached by two assailants who attempted to rob him. He identified himself as a police officer and was then engaged in a gunfight. He was able to wound one attackers before being fatally wounded. The second gunman was later taken into custody.
Officer Young's killer was convicted and sentenced to death. On January 10, 2003, the governor at the time, George Ryan commuted his sentence, along with those of all 164 other inmates on death row, to life in prison as his last act in office.

Officer Gregory Young is survived by his wife, daughter, son; parents, four sisters, and three brothers. His daughter followed in her father's footsteps and became a member of the Chicago Police Department."},
{rank: "Officer", first_name: "Sean", middle_name: "", last_name: "Laura", department: "Markham Police Department", date_deceased: "09/20/1997", description: "Officer Sean Laura was killed when he was struck by a vehicle during a foot chase of a suspect.
Officer Laura was struck by a police vehicle from a neighboring jurisdiction at 7:20 pm. He had stopped a car for a traffic offense and the driver fled on foot. Officer Laura radioed for backup while in foot pursuit and other officers from his department as well as the Harvey Police Department came to assist.

One of the responding patrol cars struck him as he ran into the road from behind a parked car. Officer Laura was pinned underneath the patrol car for several minutes and died a short time later. The suspect was later sentenced to 40 years in prison.

Officer Laura had served with the Markham Police Department for two years. He was survived by his mother."},
{rank: "Trooper", first_name: "Anthony", middle_name: "", last_name: "Millison", department: "Illinois State Police", date_deceased: "10/27/1997", description: "Sergeant Anthony Millison was killed when he fell from the Thornton-Blue Island Overpass on I-57, in Dixmoor, while assisting at the scene of an accident.
The overpass was extremely icy due to inclement weather. He was responding to another accident on the overpass when his vehicle slid on the ice and crashed into a barrier. Despite being injured, he began tending to other motorists who had also crashed. As he assisted the motorists he noticed another vehicle sliding towards him. He attempted to jump out of its way by holding onto the overpass rail, but fell to the concrete 47-feet below.

He was transported to St. Francis Hospital where he was pronounced dead.

Sergeant Millison was a U.S. Air Force veteran and had served with the Illinois State Police for 10 years. He had previously served with the Illinois Department of Corrections for eight years. Trooper Millison was posthumously promoted to the rank of sergeant.

He is survived by his wife and son."},
{rank: "Trooper", first_name: "Erin", middle_name: "", last_name: "Hehl", department: "Illinois State Police", date_deceased: "10/30/1997", description: "Trooper Erin Hehl was killed when the helicopter she was in crashed during a training exercise. Sergeant Hehl was flying with a contractor pilot at suburban Frankfort Airport in Illinois State Police helicopter AirOne. They were practicing touch-and-go landings when one of the skids of the A-Star Eurocopter got stuck in mud, causing the helicopter to flip over. The civilian pilot was killed as well. Sergeant Hehl had 70 hours of flight experience, but it is unknown who was at the controls at the time of the crash.
Trooper Hehl is an 11 year veteran of the Illinois State Police. She enrolled in the Illinois State Police Academy in 1986. She began her career in District 3 (now District Chicago), and joined the State Police Marine Patrol in 1987. During her tenure with the ISP Marine Unit, Trooper Hehl became a certified diver. She was reassigned to road duties in 1991, and joined the department helicopter project in 1995. This made her the first female trooper to serve on sea, land an air. Trooper Hehl received a private pilot certificate with a helicopter rating in September, 1997.

Trooper Hehl is survived by her husband, son and a stepson. After her death, Trooper Hehl was promoted to Sergeant."},
{rank: "Officer", first_name: "Richard", middle_name: "R.", last_name: "Schott", department: "Chicago Police Department", date_deceased: "12/04/1997", description: "Police Officer Richard R. Schott died after suffering a fatal heart attack while struggling with a prisoner.
Officer Schott was working as a detention officer in the Deering District lockup when one of the prisoners became violent and Officer Schott attempted to subdue him. The prisoner had been arrested on narcotics charges and Officer Schott was in the process of trying to fingerprint him in the station at 3501 S. Lowe.

Officer Schott was aided by other officers in subduing the prisoner but collapsed after the altercation. He was pronounced dead at Michael Reese Hospital and Medical Center at 2:00 a.m. The prisoner was charged with first-degree murder and three counts of aggravated battery.

Police Officer Richard Schott, a resident of the Mount Greenwood area, was a 25-year veteran of the Chicago Police Department. Officer Schott worked in the Deering District his entire career. He was a beat officer and a member of the tactical unit before his assignment to lockup duties. His son survives him."},
{rank: "Firefighter", first_name: "Anthony", middle_name: "", last_name: "Lockhart", department: "Chicago Fire Department", date_deceased: "02/11/1998", description: "On February 11, 1998, at 10:24 PM, the Chicago Fire Department received a call from the occupant of a private residence at the rear of a commercial tire service center, stating there was a fire in the interior of the building.  Above the parts room was a cockloft (unfinished area below the roof), where tires, Christmas decorations, and miscellaneous items were stored (believed to be the area of origin of the fire).

Firefighter Patrick King responded with Truck 45. At 10:28 PM, Engine 120 was the first company to arrive at the service center, with Engine 92 being the second company on the scene, then Truck 45, Truck 24, and Battalion 21. None of the firefighters reported seeing any fire or smoke, so one of the firefighters radioed back to dispatch to verify the address. The address was confirmed by dispatch, and at the same time a neighbor told the firefighters he saw fire at the rear of the building.

At approximately 10:30 PM, the owner of the business arrived to unlock the front door to the showroom. Approximately 8 to 10 firefighters from the first-arriving companies, including King and Lockhart, entered the showroom; some firefighters reported no smoke showing, others reported observing a light haze in the showroom, with the odor of a burning car. They opened the door to the service area, where black smoke covering the top one-third of ceiling space was encountered. They entered with a charged 1 3/4-inch hose line, which was connected to a 2 1/2-inch leadout line. The firefighters indicated that at no time did any them feel any excessive heat or see any fire.

At approximately 10:43 PM, the 8 to 10 firefighters and officers who were inside the building had advanced some 15 to 20 feet into the service area where thick black smoke was above them.  At approximately 10:45 PM, without warning, hot gases that had accumulated along the 20- foot-high ceiling ignited, causing a backdraft situation. This created a pressure wave, knocking the firefighters off balance and to the floor. The firefighters became disoriented, could not find the hose, and were scrambling and yelling in an attempt to escape the inferno they had been caught in. Additionally, the molten polystyrene insulation from the ceiling area began falling down on them. One firefighter later reported that he could hear his fellow firefighters running into and knocking over things, yelling, and screaming, trying to escape from the burning structure. One firefighter dove through the office window to escape the burning building. The escape from the service area was complicated by the 20 cars stored in the service area, the intense heat, heavy black smoke, disorientation and panic from being trapped.

When the firefighters exited the burning structure, an immediate head count was taken, and it was discovered that King and Lockhart were missing. Rescue attempts by firefighters to reenter the structure were numerous but futile, as the entire service area became fully involved with fire, prohibiting entry and rescue the missing fire fighters. Within 30 minutes, the entire truss roof collapsed into the structure. Once the fire was extinguished, King and Lockhart were removed from the scene and transported to Little Company of Mary’s Hospital Emergency Room by Ambulance 27 and Ambulance 17. Lockhart was pronounced dead-on-arrival at 1:24 AM, while King was pronounced dead-on-arrival at 1:32 AM."},
{rank: "Lieutenant", first_name: "Lawrence", middle_name: "", last_name: "Hobson", department: "Robbins Fire Department", date_deceased: "05/16/1997", description: "On May 12, 1997, Lieutenant Lawrence Hobson of the Robbins Fire Department suffered a fatal heart attack in the line of duty while fighting a fire at a vacant property.

Hobson collapsed while pulling a hoseline, and died four days later."},
{rank: "Firefighter", first_name: "Patrick", middle_name: "", last_name: "King", department: "Chicago Fire Department", date_deceased: "02/11/1998", description: "On February 11, 1998, at 10:24 PM, the Chicago Fire Department received a call from the occupant of a private residence at the rear of a commercial tire service center, stating there was a fire in the interior of the building.  Above the parts room was a cockloft (unfinished area below the roof), where tires, Christmas decorations, and miscellaneous items were stored (believed to be the area of origin of the fire).

Firefighter Patrick King responded with Truck 45. At 10:28 PM, Engine 120 was the first company to arrive at the service center, with Engine 92 being the second company on the scene, then Truck 45, Truck 24, and Battalion 21. None of the firefighters reported seeing any fire or smoke, so one of the firefighters radioed back to dispatch to verify the address. The address was confirmed by dispatch, and at the same time a neighbor told the firefighters he saw fire at the rear of the building.

At approximately 10:30 PM, the owner of the business arrived to unlock the front door to the showroom. Approximately 8 to 10 firefighters from the first-arriving companies, including King and Lockhart, entered the showroom; some firefighters reported no smoke showing, others reported observing a light haze in the showroom, with the odor of a burning car. They opened the door to the service area, where black smoke covering the top one-third of ceiling space was encountered. They entered with a charged 1 3/4-inch hose line, which was connected to a 2 1/2-inch leadout line. The firefighters indicated that at no time did any them feel any excessive heat or see any fire.

At approximately 10:43 PM, the 8 to 10 firefighters and officers who were inside the building had advanced some 15 to 20 feet into the service area where thick black smoke was above them.  At approximately 10:45 PM, without warning, hot gases that had accumulated along the 20- foot-high ceiling ignited, causing a backdraft situation. This created a pressure wave, knocking the firefighters off balance and to the floor. The firefighters became disoriented, could not find the hose, and were scrambling and yelling in an attempt to escape the inferno they had been caught in. Additionally, the molten polystyrene insulation from the ceiling area began falling down on them. One firefighter later reported that he could hear his fellow firefighters running into and knocking over things, yelling, and screaming, trying to escape from the burning structure. One firefighter dove through the office window to escape the burning building. The escape from the service area was complicated by the 20 cars stored in the service area, the intense heat, heavy black smoke, disorientation and panic from being trapped.

When the firefighters exited the burning structure, an immediate head count was taken, and it was discovered that King and Lockhart were missing. Rescue attempts by firefighters to reenter the structure were numerous but futile, as the entire service area became fully involved with fire, prohibiting entry and rescue the missing fire fighters. Within 30 minutes, the entire truss roof collapsed into the structure. Once the fire was extinguished, King and Lockhart were removed from the scene and transported to Little Company of Mary’s Hospital Emergency Room by Ambulance 27 and Ambulance 17. Lockhart was pronounced dead-on-arrival at 1:24 AM, while King was pronounced dead-on-arrival at 1:32 AM."},
{rank: "Battalion Chief", first_name: "William", middle_name: "", last_name: "Sr.", department: "Orland Fire Protection District", date_deceased: "02/25/1998", description: "On February 25, 1998, Battalion Chief William E. Bonnar, Sr., of the Orland Fire Protection District suffered a fatal heart attack in the line of duty following a training exercise.
Bonnar joined four other firefighters for an annual consumption test that measured how much air each firefighter consumed while wearing a self-contained breathing apparatus. The test simulated firefighting activities by requiring firefighters to complete an obstacle course while wearing full bunker gear, and the test also checked each firefighter’s blood pressure, pulse rate, respiratory rate, and pulse oximetry. Bonnar completed the obstacle course in less than an hour, and was recovering from the exercise when he received a message on his pager, prompting him to leave the training area to use the cellular telephone in his car. Approximately twenty-five minutes later, another firefighter found Bonnar unconscious in his car. The firefighters, who were also certified paramedics, began advanced life support immediately, and Bonnar was transported to the hospital. Efforts to revive him in the field and at the hospital were unsuccessful, and he was pronounced dead from a heart attack.
Bonnar joined the Orland Fire Protection District as a volunteer in 1972. He soon became an emergency medical technician, enrolled in the first paramedic course at Ingalls Memorial Hospital in Harvey, Illinois, and joined the Chicago Fire Department as a paramedic in 1974. In 1977, Bonnar was among the first full-time firefighter/paramedics hired by the Orland Fire Protection District.
Three years later, firefighters from the Orland Fire Protection District joined the International Association of Fire Fighters as Local 2754, and Bonnar was elected as the union’s first president. Over the next decade, Bonnar was promoted to lieutenant in 1981, to shift commander in 1989, and to battalion chief in 1990."},
{rank: "Firefighter", first_name: "Eugene", middle_name: "W.", last_name: "Blackmon", department: "Chicago Fire Department", date_deceased: "05/19/1998", description: "On May 19, 1998, Firefighter Eugene W. Blackmon, Jr., of the Chicago Fire Department was on duty working at his regular assignment with Squad 5. At approximately 12:41 PM, Squad 5 was dispatched by the Englewood Fire Alarm Office to an apparent drowning incident in the Calumet River at 135th and Indiana Avenue.

Upon Squad 5’s arrival, Lieutenant William Kleinick of Squad 5 was ordered by Battalion Chief James Stedman (Battalion 22, relief) to assist divers from Air and Sea Rescue in conducting an underwater search for two possible drowning victims.

Lieutenant Kleinick ordered Firefighter Eugene Blackmon and Firefighter Dennis Cahill to enter the water and join the search. Firefighters Terrence Sheppard, James McNulty (Engine 84) and Johnny Stewart (Truck 18) remained on shore to assist with other duties. Squad 5 conducted a search pattern from shore with Firefighter Blackmon and Firefighter Cahill secured to a safety line. This search continued for about ten minutes; both divers returned to shore where they were joined by Firefighter John DiSilvestro and Firefighter John Ewald, both from Air and Sea Rescue.

Firefighter Blackmon and Cahill entered the water and began to make their way out to the cutter using the four inch hose as a safety guide. Firefighter Blackmon took the lead pushing his air tank along with his buoyancy compensator as he worked his way out to the center.

Firefighter Dennis Cahill was preparing to enter the water when all of a sudden he heard Lieutenant Kleinick yell out, “Gene, are you alright? Gene, are you alright?” Lieutenant Kleinick then told Firefighter Cahill to go help Firefighter Blackmon because he had gone down. After a couple of dives, Firefighter DiSilvestro found Firefighter Blackmon and attempted to bring him to the surface. Firefighter Blackmon was wearing his weight belt, therefore, making it difficult for Firefighter DiSilvestro to raise him to the surface. Upon surfacing, Firefighter Cahill grabbed Firefighter Blackmon’s hood and at the same time Firefighter DiSilvestro lost his grip due to the weight of Firefighter Blackmon's belt which he was still wearing. The rubber hood stretched on Firefighter Blackmon’s dry suit until it snapped consequently, Firefighter Blackmon went under again.

At this time a Police Marine unit arrived at this location. Firefighter Cahill informed the police diver as to the approximate location where Firefighter Blackmon went under. The police diver entered the water and retrieved Firefighter Blackmon on his first attempt. Firefighter Blackmon was brought to shore where paramedics were waiting. Efforts to resuscitate Firefighter Blackmon at the scene were unsuccessful; he was transported by Fire Department helicopter to Christ Community Hospital in Oak Lawn.

At approximately 2:51 PM, the helicopter arrived at Christ Hospital’s Emergency Room where Firefighter Blackmon in efforts to resuscitate him failed and he was consequently pronounced dead at 3:08 PM by the attending emergency room physician."},
{rank: "Captain", first_name: "Thomas", middle_name: "E.", last_name: "Prendergast", department: "Chicago Fire Department", date_deceased: "08/04/1998", description: "On July 23, 1998, Captain Thomas E. Prendergast of the Chicago Fire Department was on duty working his regular assignment with Engine 78. It was an ordinary work day, and Engine 78 responded to only three alarms prior to 10:00 PM. At approximately 9:53 PM, Engine 78 responded to a still and box alarm (followed by a 2-11 alarm) on North Kenmore Avenue.
Upon Engine 78’s arrival, Prendergast was ordered to lead out a 2 ½” hose line to the rear of the building. Prendergast assisted in stretching and dragging the 2 ½” line to the seat of the fire. Later, as he was manning the 2 ½” line with a 1 ¼” nozzle by himself, Prendergast suffered chest pains and shortness of breath.
Prendergast called out for help, grabbed his chest, bent over and appeared to be gasping for air. A battalion chief walked Prendergast over to Ambulance 31, where he again grabbed his chest, bent over and gasped for air. He was treated by paramedics and then transported to Illinois Masonic Hospital. Ambulance 31 arrived at Illinois Masonic’s Emergency Room at 10:53 hours. Prendergast was released to the emergency room personnel, and was treated, stabilized and admitted to the intensive coronary care unit where he remained for six days.
On July 29, 1998, Prendergast was released from the hospital with the understanding that he would be back at a later date and have coronary artery bypass surgery performed. Prendergast was convalescing at home, when, on August 4, 1998, he was stricken with another heart attack. He was rushed to West Suburban Hospital by Ambulance 15, where efforts to revive him failed and he was pronounced dead."},
{rank: "Officer", first_name: "John", middle_name: "C.", last_name: "Knight", department: "Chicago Police Department", date_deceased: "01/09/1999", description: "Officer John C. Knight was shot and killed as he and his partner were investigating two suspicious individuals in a parked vehicle. Both officers noticed the vehicle with a popped trunk and two occupants slumped over on the inside. As they approached the vehicle, the men sped off and a short chase ensued.
The vehicle crashed into a parked car at 99th and South Parnell. The occupants then opened fire on the officers. Officer Knight was struck twice in the head and once in the abdomen before he was able to exit the passenger side of the vehicle. His partner exited the vehicle and returned fire, striking one of the assailants.

As the second officer went to check on Officer Knight, the wounded gunman reloaded his weapon, returned to the scene and opened fire, wounding the second officer in the hip.

On January 27, 2004, Officer Knight's killer was found guilty of first-degree murder. He was also charged and found guilty of attempt first-degree murder of the second officer.

On January 28, 2004, during the penalty phase of the trial, a plea agreement was reached. The defendant pled guilty to an unrelated murder and was sentenced to life in prison without the chance of parole. He also waived his right to appeal his conviction in the Officer Knight's case.

Officer Knight was a 10 year veteran of the department. He is survived by his wife, three children, two brothers, sister, and parents; his father was also a Chicago police officer."},
{rank: "Officer", first_name: "James", middle_name: "H.", last_name: "Camp", department: "Chicago Police Department", date_deceased: "03/09/1999", description: "Officer James Henry Camp was shot and killed after stopping a stolen vehicle. During the stop Officer Camp, who was in plainclothes, asked the driver to exit the vehicle. Once he was out of the vehicle, a struggle ensued and the offender gained control of Officer Camp's weapon, shooting him twice in the head. The assailant then fired at another officer who was approaching the scene. The backup officer returned fire and shot the gunman five times, wounding him. The incident occurred outside of an elementary school and was witnessed by several children.

In a travesty of justice, Officer Camp's killer was acquitted of murder and of the attempted murder of the backup officer. The killer was convicted of disarming Officer Camp and for possession of a stolen car. The judge sentenced the murderer to the maximum of two consecutive 30-year prison terms for the two other offenses of which he was convicted. The killer appealed the sentence and was sentenced to only 28 years in prison.

Officer James Henry Camp is survived by his wife."},
{rank: "Chief", first_name: "Arthur", middle_name: "A.", last_name: "Tullis", department: "LaGrange Park Fire Department", date_deceased: "05/04/1999", description: "On May 4, 1999, Chief Arthur “Bucky” Tullis of the La Grange Park Fire Department died in the line of duty while responding to an automatic fire alarm at the Bethlehem Woods Retirement Center. Tullis arrived on the scene at around 3:30PM, four minutes after the alarm was received, and began to investigate the cause of the alarm activation. After making initial contact with a building representative, Tullis exited the building to begin command operations for incoming fire apparatus.
Upon exiting the building, Tullis suffered a heart attack and collapsed on the front driveway of the complex. Personnel from the first arriving fire company, Ambulance 1115, began resuscitation efforts, and they were soon assisted by firefighters from Truck 1119. Shortly thereafter, Engines 1212 and 1222 arrived and secured the fire scene. Tullis was transported to La Grange Memorial Hospital, but efforts to revive him were unsuccessful. He was pronounced dead at 5PM.
Tullis joined the La Grange Park Fire Department in 1964 and served for thirty-five years. He was promoted to lieutenant in 1978, to captain in 1986, and to deputy chief in 1986. When Chief Gil Welch retired from the department in 1987, he handpicked Tullis as his replacement. During his twelve years as chief, Tullis was the only salaried firefighter in the paid-on-call department. From the mid-1950s until his retirement in 1994, Tullis worked full-time as a lineman for Ameritech.
Beginning in 1995, Tullis spearheaded a major effort to raise $85,000 for a new ambulance by selling engraved bricks that were installed in a “Walk of Life” outside of the La Grange Park Village Hall. At the time of his death, the “Walk of Life” fundraiser had collected more than $80,000 in donations. More than two hundred mourners marched in procession behind the fire apparatus that carried the casket from the church to the cemetery."},
{rank: "Officer", first_name: "Myles", middle_name: "M.", last_name: "Smetana", department: "Chicago Police Department", date_deceased: "09/16/1999", description: "On August 24, 1999, Police Officer Myles M. Smetana and his partner responded to a disturbance call involving a mental patient. After quelling the disturbance, Officer Smetana suddenly sustained a rush of illness, weakness and dizziness. He was transported to a hospital where he lapsed into a coma until his death on 16 September 1999. It was determined by his doctors that he did in fact suffer a heart attack at the time of the earlier incident.
Officer Smetana is survived by his wife and three children."},
{rank: "Lieutenant", first_name: "L.", middle_name: "C.", last_name: "Merrell", department: "Chicago Fire Department", date_deceased: "04/29/2000", description: "On April 29, 2000, Chicago Fire Department Lieutenant L.C. Merrell was on duty with Truck 24, his regular assignment. Truck 24, along with the 21st Battalion, responded to a residential fire on W. 110th Street. After extinguishing the fire at 11:46AM, Truck 24 and the 21st Battalion were dispatched to another fire call on S. Carpenter Street.
Truck 24 proceeded northbound on Throop Street with lights and sirens. The 21st Battalion Chief Paul Sobczak followed. Chief Sobczak stated he was approximately 50’ to 75’ behind the truck as they approached 107th Street and Throop.
As they approached the corner of Throop and 107th Street, Truck 24 slowed down and proceeded midway through the intersection. The driver heard Merrell yell “Move it! Move it!” and saw a westbound pick-up truck entering the intersection. The pick-up truck was traveling at a high rate of speed and ignored the stop sign. The pick-up truck hit Truck 24 on the right side, just behind the point where Merrell was seated. Merrell was thrown from the fire apparatus.
The impact caused the pick-up truck to hit another vehicle, the driver of which later confirmed that the pick-up truck had ignored the stop sign. After the impact, the driver of Truck 24 regained control of the apparatus approximately 100 feet from the point of impact.
Firefighters immediately jumped out of the apparatus and ran to Merrell to start CPR. An EMS Plan I was instituted for all the injured victims. All the members of Truck 24 were taken to Christ Hospital with a variety of injuries. Ambulance 5 transported Merrell to Christ Hospital where he was pronounced dead on arrival at 12:18PM."},
{rank: "Firefighter", first_name: "Willard", middle_name: "C.", last_name: "Christoffer", department: "Western Springs Fire Department", date_deceased: "05/14/2001", description: "Western Springs Fire Department suffered its only-ever loss of a firefighter when Willard Christoffer fell 65 feet in a training exercise, leaving behind his wife Lucy and their two children, Charlie and Alyssa.
Firefighter Christoffer was engaged in a regularly scheduled training night. He was involved in an activity that had firefighters ascend a fully extended 105-foot aerial ladder, lock into the tip with a ladder belt, utilize the steps at the top of the ladder, and then descend the ladder. The ladder was elevated to 65 degrees. Firefighter Christoffer climbed the ladder and paused for a moment three-quarters of the way up and firefighters on the ground asked if everything was \"Okay,\" and he responded that he was fine. Firefighter Christoffer continued to the tip of the ladder and deployed the steps. Firefighter Christoffer began his descent and at the 65-foot level, he appeared to fall backward. He made no attempt to catch himself or call for help. Firefighter Christoffer fell down the bed of the ladder and landed on the turntable. Medical aid was provided immediately, and Firefighter Christoffer was transported to a nearby hospital.
He was pronounced dead at the hospital. The cause of death was listed as multiple injuries that resulted from a fall from height. Coronary arteriosclerosis was also listed as a contributing factor."},
{rank: "Officer", first_name: "Eric", middle_name: "D.", last_name: "Lee", department: "Chicago Police Department", date_deceased: "08/19/2001", description: "Officer Eric D. Lee was shot and killed as he and two other tactical officers attempted to aid a citizen.
Officer Lee and his partners were on a special patrol in the Englewood neighborhood when they spotted a man being beaten in an alley. They rushed to assist the victim and announced they were police. One of the fleeing assailants unexpectedly fired, striking Officer Lee in the head.
Several suspects were apprehended and held for questioning. The shooter was charged with the murder of a police officer. On January 23, 2004, Officer Lee's killer was found guilty of first-degree murder. On September 17, 2004, he was sentenced to life in prison. On November 22, 2005, following many continuances, the Cook County Criminal Court judge balanced the scales of justice and denied Officer Lee's killer both motions for a new trial.
Officer Lee was a 9-year veteran officer, a former Marine with a magna cum laude university degree, whose personnel file spoke to his nine years of good judgment on the job. He had volunteered to be a tactical officer, an especially dangerous line of police work. He had passed up his once-every-month options to “bid out” of Englewood for easier duty in a less stressful district. Friends said he liked the people of Englewood, enjoyed the uphill struggle to make their lives safer. Eric Lee became the 4th tactical officer to be shot to death in Chicago in 2 years.
His wife, 6-year-old daughter, parents, two brothers, and a sister survive Eric Lee."},
{rank: "Lieutenant", first_name: "Robert", middle_name: "", last_name: "Augustyn", department: "Cicero Fire Department ", date_deceased: "09/07/2001", description: "Lieutenant Robert Augustyn, 57, a 33 year veteran with the Cicero Fire Department died Friday, September 7, 2001. 
Robert's engine company was returning from a minor motor vehicle accident on the Laramie Avenue bridge Thursday afternoon. He was spotting the apparatus for the driver with another firefighter as they backed the engine off the bridge, when Robert somehow slipped under the engine and was pinned. A truck company was dispatched and removed Robert with the use of air bags and extrication tools. He was airlifted to the Loyola University Medical Center in Maywood where he underwent surgery for pelvis and lower extremity injuries and internal bleeding. Robert survived the surgery but went into arrest and died early Friday morning. 
Our brother, Robert, is survived by his wife, Sharon, and three married daughters, with several grandchildren. "},
{rank: "Sergeant", first_name: "Hector", middle_name: "A.", last_name: "Silva", department: "Chicago Police Department", date_deceased: "10/02/2001", description: "Sgt. Hector Silva tragically died while participating in a special operations training exercise.
Sergeant Silva was taking part in a training exercise where he was required to sprint up two flights of stairs, then run 100 yards while carrying 55 pounds of sandbags. After returning to his office, Sergeant Silva felt dizzy and light headed and collapsed. While being transported to the hospital, Sergeant Silva suffered partial paralysis. Doctors discovered that he had a blood clot in his brain and performed surgery. Sergeant Silva died the next day.
Sergeant Silva was an 11 year veteran of the department; he is survived by his wife and two children."},
{rank: "Detective", first_name: "Alvin", middle_name: "", last_name: "Perez", department: "Bellwood Police Department", date_deceased: "01/17/2002", description: "Detective Alvin Perez was killed in an automobile accident while he and his partner transported a murder suspect back to the police station for questioning.
Detective Perez was driving a 1999 Ford Taurus when it struck a concrete barrier on an off ramp from the Eisenhower Expressway in snowy and slushy conditions. Detective Perez's partner and the suspect, who were both riding in the backseat, were injured.

Detective Perez had served with the Bellwood Police Department for 12 years and was a US Navy veteran. He had only been promoted to detective 17 days before the accident. Detective Perez was survived by his wife, 6-year-old daughter, 2-year-old twins, father and sister."},
{rank: "Officer", first_name: "Donald", middle_name: "J.", last_name: "Marquez", department: "Chicago Police Department", date_deceased: "03/19/2002", description: "Officer Donald Joseph Marquez was shot and killed as he was serving court papers at the Logan Square apartments.
A 77-year-old resident opened fire with two .22 caliber handguns. Officer Marquez was struck several times; He succumbed to his wounds at the hospital.

The assailant was shot and killed in an exchange of gunfire with back up officers.

Officer Donald Marquez was a 20 year veteran of the Chicago Police Department; his wife, two sons, three daughters, grandson, parents, two sisters, and three brothers survived him."},
{rank: "Officer", first_name: "Steven", middle_name: "E.", last_name: "Graham", department: "Barrington-Inverness Police Department", date_deceased: "08/25/2002", description: "Officer Steven Graham suffered a fatal heart attack while attempting to arrest a man in Inverness during a call.
Officer Graham had responded to the man's home on Bradwell Road when the suspect began struggling with him. While attempting to arrest the suspect, Officer Graham collapsed. The man had a history of interfering with police radio frequencies. The Cook County coroner ruled his death a homicide as a result of the arrest.

Officer Graham had served with the Barrington-Inverness Police Department for 29 years. He was survived by his wife and two daughters.
"},
{rank: "Officer", first_name: "Benjamin", middle_name: "", last_name: "Perez", department: "Chicago Police Department", date_deceased: "09/18/2002", description: "Officer Benjamin Perez was struck and killed by a commuter train while conducting a stakeout on the west side.
Officer Perez and his partner were on a railroad trestle above Spaulding Avenue when a train approached. Officer Perez's partner was able to jump to safety, but Officer Perez was pulled underneath the passing train.

Officer Perez is a 4 year veteran of the Chicago Police Department; He is survived by his wife and three children."},
{rank: "Officer", first_name: "Eric", middle_name: "E.", last_name: "DeWit", department: "Matteson Police Department", date_deceased: "02/17/2003", description: "Officer Eric DeWit was killed in an automobile accident while he and his partner were on patrol at 3:25 am.
A vehicle had turned in front of their patrol car at the intersection of Sauk Trail and Kostner Avenue, in Richton Park, causing Officer DeWit to take evasive action to avoid a collision. Their patrol car struck a fire hydrant, causing fatal injuries to Officer DeWit and minor injuries to his partner.

Officer DeWit had served with the Matteson Police Department for only four months. He was survived by his wife and 1-month-old daughter."},
{rank: "Sergeant", first_name: "Philip", middle_name: "J.", last_name: "O'Reilly", department: "Chicago Police Department", date_deceased: "03/16/2003", description: "Sergeant Philip J. O'Reilly was killed in an automobile accident while on patrol.
His patrol car was struck by a tow truck at the intersection of Granville Avenue and Western Avenue. The collision occurred at approximately 4:30 a.m.; Sergeant O'Reilly was ejected from his squad car. He was transported to Illinois Masonic Medical Center where he succumbed to his injuries.

The driver of the tow truck was charged with driving too fast for conditions.

Sergeant O'Reilly was assigned to the Foster Police District, and was a 16 year veteran of the Chicago Police Department; He is survived by his wife, six children, and seven siblings. One of his brothers also serves on the Chicago Police Department."},
{rank: "Detective", first_name: "William", middle_name: "Rolniak,", last_name: "Jr.", department: "Riverdale Police Department", date_deceased: "02/04/2004", description: "Detective William Rolniak was shot and killed execution style after being taken hostage inside the Riverdale police station.
The suspect had been in custody on charges of attempted murder, home invasion and aggravated kidnapping after breaking into a home and abducting his ex-girlfriend at gunpoint nine days earlier, despite having an order of protection issued against him. The suspect had just finished being interviewed by an assistant state's attorney and was being transferred from an interview room to the lockup area of the station when he grabbed Detective Rolniak's service weapon out of its holster at approximately 8:15 pm. The suspect was not handcuffed at the time because he had been cooperating with the authorities.

The suspect then forced Detective Rolniak out of the police station, took him behind a building across the street and shot him in the head. The suspect attempted to flee by trying to carjack three different vehicles, shooting and wounding an elderly man who refused to give up his vehicle. Three other officers in pursuit of the suspect ordered him to drop the weapon, but instead, he aimed the gun at the officers, who then shot and killed him. Detective Rolniak was transported to Christ Medical Center where he died two hours later.

Detective Rolniak had served with the Riverdale Police Department for 14 years and was a US Air Force veteran. He was survived by his wife, two teenage daughters, parents and three sisters. On March 4, 2005, the Detective William (Wally) Rolniak Jr. Public Safety Building was dedicated in his honor."},
{rank: "Firefighter", first_name: "Jeffrey", middle_name: "C.", last_name: "Bergstrom", department: "Stone Park Fire Department ", date_deceased: "04/27/2004", description: "
Jeffrey C. Bergstrom, Paramedic-C.F.D. and Firefighter-Stone Park F.D., in the line of duty April 27, 2004, beloved son of Fay and the late Charles; loving brother of Jennifer (Jeremiah) Brainerd; dear uncle of Sydney. - See more at: http://www.legacy.com/obituaries/chicagotribune/obituary.aspx?page=lifestory&amp;pid=2185834#fbLoggedOut


Jeffrey C. Bergstrom, Paramedic-C.F.D. and Firefighter-Stone Park F.D., in the line of duty April 27, 2004, beloved son of Fay and the late Charles; loving brother of Jennifer (Jeremiah) Brainerd; dear uncle of Sydney. - See more at: http://www.legacy.com/obituaries/chicagotribune/obituary.aspx?page=lifestory&amp;pid=2185834#fbLoggedOut
On April 27, 2004, Jeffrey Bergstrom, a part-time firefighter for the Stone Park Fire Department, was killed in a collision between two fire apparatus while responding to a fire in a neighboring township. Shortly after 5:30 pm, an alarm was raised for a garage fire and three fire departments, including Stone Park, responded to the alarm. While traveling to the fire at around 5:42 pm, the Stone Park fire engine that Bergstrom was riding in entered an intersection and collided with a Northlake Fire Protection District fire engine responding to the same alarm.
The Stone Park fire engine struck the side of the Northlake engine just behind the cab and sent the engine into a 320 degree spin. The Stone Park engine, however, rolled onto its side and the impact threw Bergstrom through the vehicle’s windshield and into the street. The impact crushed the front of the Stone Park fire engine and pinned the driver between the seat and the dashboard. A third Stone Park firefighter experienced minor injuries, as did the three Northlake firefighters from the other engine. All of the firefighters were transported to local hospitals, but Bergstrom was pronounced dead on arrival.
In addition to serving as a part-time firefighter and paramedic for the Stone Park Fire Department, Bergstrom was also a paramedic for Ambulance Company 44 of the Chicago Fire Department.

Beloved son of Fay and the late Charles; loving brother of Jennifer (Jeremiah) Brainerd; dear uncle of Sydney."},
{rank: "Special Agent", first_name: "Terrance", middle_name: "P.", last_name: "Loftus", department: "Drug Enforcement Administration", date_deceased: "05/28/2004", description: "Drug Enforcement Administration (DEA) Special Agent Terrance P. Loftus was killed on May 28, 2004, when the plane he was piloting crashed shortly after take off from Midway International Airport in Chicago, Illinois. Agent Loftus was providing air support to the Kansas City District Office as part of a Title III Investigation. After transporting drug evidence seized by the Kansas City District Office to the DEA Laboratory in Chicago, Illinois, he was en route to St. Louis to return the DEA aircraft.
Special Agent Loftus was born in Hasting, Michigan, and graduated from Western Michigan University with a Bachelor of Science Degree. He served in the United States Army from 1981 to 1988. Terry was hired by DEA and assigned to the Washington Division, Baltimore District Office beginning September 10, 1989. While assigned to Baltimore, he served in the active reserve of the Maryland National Guard. He was an experienced pilot with 1,700 hours of flight time. On November 11, 1999, he was assigned to the Office of Aviation Operations in Chicago, Illinois.

Special Agent Loftus is survived by his wife, four children, parents and brother and sister."},
{rank: "Officer", first_name: "Michael", middle_name: "P.", last_name: "Gordon", department: "Chicago Police Department", date_deceased: "08/08/2004", description: "Officer Michael Gordon was killed when the squad car he was riding in was struck by a vehicle being operated by an intoxicated driver.
Officer Gordon and his partner were on patrol as they approached the intersection of Jackson Boulevard and Sacramento Avenue. When they entered the intersection, a vehicle struck the squad car. Both officers were ejected.
Officer Gordon was transported to Stroger Hospital where he was pronounced dead. His partner was taken to Mount Sinai Hospital and listed in critical condition.
The driver of the other vehicle died during surgery from injuries sustained in the collision. Test results showed he had a blood alcohol level of .177, which is over twice the legal limit in Illinois.
Officer Gordon was a two year veteran of the Chicago Police Department and was assigned to the Harrison District Station. He previously served for two years as a police officer with the Riverside, Illinois Police Department, and as an airborne military police officer in the U.S. Army.
Officer Gordon is survived by his wife, four children, and parents. Officer Gordon’s father is a retired assistant chief of the Riverside Police Department. Three of Officer Gordon's relatives also service with the Chicago Police Department; a brother, a cousin, and an uncle."},
{rank: "Officer", first_name: "Steven", middle_name: "M.", last_name: "Zourkas", department: "Niles Police Department", date_deceased: "04/08/2005", description: "Officer Steven Zourkas was killed in an automobile accident at the intersection of Golf Road and Western Avenue while en route to a call at approximately 04:00 am.

Officer Zourkas was responding to a disturbance call at a restaurant when he lost control of his squad car. The vehicle flipped onto its side and crashed into several parked cars and a sign in a condominium complex. Witnesses reported that he swerved to avoid a pedestrian in the roadway. Officer Zourkas was pronounced dead at the scene.

Officer Zourkas had served with the Niles Police Department for four years and had recently joined the North Regional Major Crimes Task Force as an evidence technician. He was survived by his wife and two sons, one a 4-month-old newborn."},
{rank: "Officer", first_name: "Thomas", middle_name: "A.", last_name: "Cook", department: "Metra Police Department", date_deceased: "09/27/2006", description: "Police Officer Thomas A. Cook was shot and killed while sitting in his patrol car across the street from the Metra Electric Line station at 147th and Clinton Streets in Harvey, Illinois.

He was conducting surveillance on the station, which had seen a recent surge in armed robberies, when a subject walked up to his patrol car and shot him without warning. The subject then stole Officer Cook's service weapon before fleeing.

On January 5, 2009, authorities charged one of two suspects with three counts of murder. In October 2010 the subject pleaded guilty to murder for acting as a lookout during Officer Cook's slaying. He also pleaded guilty to attempted murder for his involvement in a shootout with a Harvey Police Department officer earlier that same day. On November 11, 2010, a second man was charged with the murder of Officer Cook.

Officer Cook was a US Army veteran. He had served with the Metra Transit Police Department for three years and previously served with the Riverdale Police Department for nine years. He is survived by his wife, son, daughter, mother, brother, and sister. His brother serves with the Cook County Sheriff's Office and his father served as chief of the Riverdale Police Department."},
{rank: "K-9 Officer", first_name: "Thomas", middle_name: "T.", last_name: "Wood", department: "Maywood Police Department", date_deceased: "10/23/2006", description: "Officer Thomas Wood was shot several times as he sat in his department vehicle on the intersection of Erie Street and 6th Avenue at approximately 11:00 pm. Officer Wood's canine partner was not wounded in the shooting.

He was transported to Loyola University Medical Center where he succumbed to his wounds approximately 45 minutes later.

The suspect fled the scene and the case remains unsolved.

Officer Wood had served with the Maywood Police Department for nine years. He had previously served as a reserve officer with the Schiller Park Police Department for three years while serving as a part-time officer with the Stone Park Police Department for two years. He was survived by his wife, five children, three brothers, one sister, his father, and a large extended family."},
{rank: "Firefighter", first_name: "William", middle_name: "F.", last_name: "Grant", department: "Chicago Fire Department", date_deceased: "03/23/2007", description: "Firefighter William Grant, 44, a 20 year veteran of the Chicago Fire Department, died Friday March 23, 2007. William was riding in the rear cab of Ladder 51, responding with lights and siren to a fire call in the south side neighborhood of Englewood, when the apparatus was struck on the right rear side by a school bus while negotiating an intersection. The ladder truck swerved to avoid the bus, but was spun by the impact and overturned onto the drivers side. There were no children on the bus at the time of the accident.
William was extricated and transported to Stroger Hospital where he later died. The bus driver and three other firefighters were injured in the crash.
William was a second generation Chicago firefighter, his father John Grant having retired after 20 years of service. William was honored in 2001 by Mayor Richard Daley for the rescue of an 70-year old disabled woman from her burning home. His older brother Kevin is also a Chicago firefighter. William was also a part-time wood refinisher, and had placed his stamp on the new Englewood fire station by handcrafting a wooden mess table with the Chicago Fire Department maltese inlaid on the tabletop.
Our brother William leaves behind his wife Sharon, his son Danny , and his two daughters Caroline and Kristin."},
{rank: "Officer", first_name: "Richard", middle_name: "", last_name: "Francis", department: "Chicago Police Department", date_deceased: "07/02/2008", description: "Officer Richard Francis was shot and killed with his service weapon when he struggled with a woman who grabbed his gun and shot him once.

The officer was on routine patrol when he responded to a disturbance around 2 a.m. and approached a woman near the Belmont Area (Area 3) Headquarters at 2452 W. Belmont Avenue.

Back up officers responding to the shooting opened fire on the woman when she threatened them. She was critically wounded.

Officer Francis was transported to Advocate Illinois Masonic Medical Center where he was pronounced dead at 2:57 a.m.

Officer Francis served with the Chicago Police Department for 27 years and was assigned to the 019 District. He is survived by his wife and two stepdaughters."},
{rank: "Officer", first_name: "Nathaniel", middle_name: "Taylor,", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "09/28/2008", description: "Officer Nathaniel Taylor, Jr. was shot and killed as he and several other officers served a search warrant at a home near 79th and Clyde streets. While the officers were on the scene, the target of the warrant arrived at the location.

As officers approached to question him, he opened fire striking Officer Taylor three times. Other officers returned fire, wounding the subject.

Officer Taylor was transported to Advocate Christ Medical Center where he succumbed to his wounds later in the day.

The subject was a convicted felon and had served a prior prison sentence for attempted murder of a police officer. He was found guilty of first degree murder on January 26, 2012, and subsequently sentenced to life in prison.

Officer Taylor was a US Marine Corps veteran of Operation Desert Storm and had served with the Chicago Police Department for 14 years. He was assigned to the gang and narcotics unit. He is survived by his wife and daughter."},
{rank: "Officer", first_name: "Edgar", middle_name: "", last_name: "Jr.", department: "Chicago Police Department", date_deceased: "01/25/1982", description: "Chicago Police Officer Edgar A. Clay, 51, was assigned to the 002nd District – Area 1 Youth Division.
On January 7, 1982, Officer Clay questioned and searched a juvenile offender who was accused of stealing from Hyde Park Academy. After a .22 caliber pistol was discovered in his backpack, the juvenile became violent and struck the officer causing him to fall to the ground. Officer Clay suffered a severe knee injury which caused a blood clot. He died from a bilateral pulmonary embolism on January 25, 1982.
The 25-year Chicago Police Department veteran is survived by his wife, Kay; daughter, Angela; two sons, Robert and Edgar III; a brother; and five grandchildren."},
{rank: "Officer", first_name: "James", middle_name: "E.", last_name: "Doyle", department: "Chicago Police Department", date_deceased: "02/05/1982", description: "James E. Doyle, 34, was a Chicago police officer for less than one year when he was killed in the line of duty. Officer Doyle was assigned to the 006th District Gresham Station.
On February 5, 1982, the rookie officer and his partner, Robert M. Mantia, were in their marked police car when a citizen approached them. He informed the officers that he had been a passenger on CTA route 79 and recognized a man on board who had previously robbed him.
The officers boarded the bus at 79th Street and Lafayette Avenue and spotted the offender, Edgar Hope, who was carrying two concealed firearms. One of these weapons was previously used during the murder and attempted murder of two Cook County Correctional Officers. As the officers approached, Hope fatally shot Officer Doyle and injured two passengers.
Edgar Hope was sentenced to death, but his sentence was commuted to life in prison by Governor George Ryan.
Officer Doyle is survived by his sister, Mary Jo; and mother, who passed away soon after her son’s death by what many described as “a broken heart.”"},
{rank: "Officer", first_name: "Frank", middle_name: "", last_name: "Russo", department: "Schaumburg Police Department", date_deceased: "11/01/2008", description: "Officer Frank Russo suffered a fatal heart attack while struggling with a suspect following a brief foot pursuit.
Officer Russo and another officer, while working an off-duty assignment, were attempting to arrest a man who was causing a disturbance at a local club. The suspect and a friend fled the scene and were being pursued by the officers for approximately one block.

As they began to struggle with the man, Officer Russo collapsed and his partner immediately called for assistance. Officer Russo was transported to Alexian Brothers Hospital in Elk Grove Village where he was pronounced dead a short time later.

The suspect was charged with two counts of felony aggravated battery to a police officer, four counts of misdemeanor resisting a police officer and one count of misdemeanor battery.

Officer Russo had served with the Schaumburg Police Department for 19 years. He was survived by his wife, son, daughter, sister and parents."},
{rank: "Officer", first_name: "Michael", middle_name: "R.", last_name: "Bailey", department: "Chicago Police Department", date_deceased: "07/18/2010", description: "Officer Michael Bailey was shot and killed while attempting to take action in an attempted armed robbery in front of his South Side home at approximately 6:20 am.
Officer Bailey had just returned home from his shift on a mayoral protection detail, and was still in uniform, when a male subject approached and attempted to rob him of his vehicle.

He identified himself and exchanged shots with the man, but was struck three times during the shootout. The suspect fled the scene but was arrested approximately two months later after another carjacking. He was charged with Officer Bailey's murder one year later while in prison on the second charge.

Officer Bailey was one month from retiring after having served with the Chicago Police Department for 20 years and was assigned to the Central District. He had previously served as a fireman with the Glenview Fire Department and was a US Air Force veteran. Officer Bailey was survived by his wife, son, two daughters, brother, sister and 14 grandchildren."},
{rank: "Officer", first_name: "Michael", middle_name: "", last_name: "Flisk", department: "Chicago Police Department", date_deceased: "11/26/2010", description: "Officer Michael Flisk was shot and killed while processing the scene of a vehicle burglary inside an alley garage at 1:30 pm in the 8100 block of South Burnham Avenue.
The burglary victim, a retired Chicago Housing Authority police officer, former Robbins police officer and US Army veteran, called police after discovering that his vehicle had been broken into and parts had been removed. Officer Flisk was at the scene collecting evidence when the suspect returned. He shot and killed Officer Flisk, then shot and killed the burglary victim, who was standing nearby.

A 19-year-old male on parole for robbery was arrested three days later and charged with two counts of murder. He was also charged with attempted murder in an unrelated shooting that took place in June. A second male was charged with obstruction of justice and unlawful possession of a firearm for hiding the murder weapon for the suspect.

Officer Flisk had served with the Chicago Police Department for nearly 20 years and was assigned to the Evidence Technician Team – South Unit. He was survived by his wife, daughter, three sons, two sisters, two brothers and parents. Both sisters and one of his brothers serve as officers with the Chicago Police Department."},
{rank: "Firefighter", first_name: "Corey", middle_name: "", last_name: "Ankum", department: "Chicago Fire Department", date_deceased: "12/22/2010", description: "Corey D. Ankum was the youngest of four children born to Johnnie and Marie Ankum, on September 26, 1976, in Chicago. He graduated from Charles H. Wacker Elementary School in 1990 and attended Thornton Fractional High School, graduating in 1994. In high school, Corey developed a love and a talent for basketball, which he continued to play with skill and zeal throughout his life. Corey attended Kiswaukee College in Malta, Illinois, where he received his associate degree in business. He continued his education at Kendall College in Evanston, Illinois, where he received a bachelor's degree in business.
After earning his degrees, he became the director of Jack and Jill Daycare, a family owned business, where he met the love of his life, Demeka J. Wade, in October 1999. The happy couple was married on August 8, 2008. Corey graduated from the Chicago Police Academy on November 13, 2008, then transitioned to the Chicago Fire Department (CFD), graduating from the Fire Academy on April 1, 2010.
Corey, known to many as CoCo, was an amazing husband, father, son, brother, uncle, and friend. Most of all, he was proud to be a father to his one and only son, Torey D. Ankum. He had a great sense of humor, a bright smile, and a hearty laugh. Corey was a jack of all trades. He was a self-taught chef, carpenter, mechanic, teacher, and a wonderful role model. You name it, he could do it. He was a sports fanatic, with two of his favorite teams being the San Antonio Spurs and the New England Patriots. He led and taught by example and spent most of his life in the service of others.
On the morning of Wednesday, December 22, 2010, Corey perished together with his comrade, Edward J. Stringer Sr., from injuries sustained while battling a blaze on the Southside of Chicago. Firefighter/EMT Ankum was fighting a fire in a vacant, one-story brick building when a roof and wall collapsed, wounding him fatally and also injuring 17 of his comrades. He received many certificates and honorable mentions within his short time with the CFD. He was loved and respected by all who knew him at the Chicago Fire Department, and he was proud to be part of the \"brotherhood.\"
Corey is survived by his loving wife and best friend, Demeka; his beautiful children, Demia, Baylee, and Torey; his loving parents, Johnnie and Marie Ankum; grandmother, Pearlie Strickland; siblings, Carol Ankum, Charmain Ankum, Mary Teresa; and a host of other relatives and friends."},
{rank: "Officer", first_name: "Paul", middle_name: "", last_name: "Nauden", department: "Chicago Police Department", date_deceased: "05/20/2011", description: "Officer Paul Nauden suffered a fatal heart attack while conducting an undercover narcotics buy as part of a large narcotics investigation.

While on scene he informed other undercover officers that he did not feel well and could not complete the transaction. He left the scene in order to not jeopardize the operation and the other officers. He flagged down a passing ambulance a short distance away and was transported to a local hospital. He passed away early the next morning.

Officer Nauden had served with the Chicago Police Department for 21 years and was assigned to the Narcotics Section. He is survived by his wife and two young daughters."},
{rank: "Officer", first_name: "Clifton", middle_name: "", last_name: "Lewis", department: "Chicago Police Department", date_deceased: "12/29/2011", description: "Police Officer Clifton Lewis was shot and killed while attempting to take action during a robbery at a grocery store on North Austin Boulevard.

He was working an overtime security detail at the store, which had been robbed several weeks earlier, when two male subjects entered at about 8:30 pm. One of the men shot Officer Lewis multiple times before grabbing his service weapon and badge and fleeing the store.

Officer Lewis was transported to Stroger Hospital where he succumbed to his wounds. The two suspects were arrested and charged in connection with Officer Lewis' murder.

Officer Lewis had served with the Chicago Police Department for eight years and was assigned to the 15th District's Tactical Team. He is survived by his daughter, mother, and fiancee."},
{rank: "Correctional Officer", first_name: "Nikkii", middle_name: "", last_name: "Bostic-Jones", department: "Cook County Dept. of Corrections", date_deceased: "07/18/2012", description: "Correctional Officer Nikkii Bostic-Jones was struck and killed by a hit-and-run driver on California Avenue while walking from the sheriff's office parking lot to the maximum security wing of the county jail just before 11:00 pm.
As she crossed the street she was struck by a van, causing her to be thrown into the path of an oncoming sheriff's office patrol car. She was transported to Mount Sinai Hospital where she was pronounced dead.
The driver of the van fled the scene but was arrested several days later. He was charged with reckless homicide, driving on a revoked license, and multiple other violations.
Officer Bostic-Jones had served with the Cook County Sheriff's Office - Department of Corrections for 12 years. She is survived by her husband, 6-year-old daughter, and six siblings."},
{rank: "Lieutenant", first_name: "Patrick", middle_name: "", last_name: "Hannon", department: "Chicago Fire Department", date_deceased: "01/15/2011", description: "On January 15, 2011, Chicago Lieutenant Patrick Hannon was found unresponsive at his firehouse and later died in the hospital due to natural causes. Hannon, 51, was working at Truck 8 at 2528 S. Throop Street at the time (4th District, 15th Battalion).
Lt. Patrick B. Hannon‚ 51‚ entered the Chicago Fire Department on his birthday in December 1988. He said it was one of the best days of his life. Prior to working with Chicago‚ Pat worked in Yosemite as a firefighter. While he was there he climbed El Capitan (a 5‚800 foot vertical wall) on several occasions in Yosemite National Park.
When Pat started in Chicago he went to Truck Company 8. During his career he also worked at Truck Company 17 and Squad 1. After being promoted to lieutenant he relieved in the 1st and 4th districts until he found himself assigned to Truck Company 8 again. Pat was high on the list to be promoted to captain just before he passed away. Pat earned many awards for his services. He loved being a firefighter.
He also loved a good game of golf‚ a stinky cigar‚ and a good laugh. Pat comes from a large family and leaves behind his parents‚ Lynn and Bernard‚ and his six brothers and sisters. In 1989‚ Pat met his wife‚ Michelle‚ while he was working T8 and she on Ambulance 19. They married and had two beautiful daughters‚ Katherine (‘Katie’) and Bridget. Pat’s girls were his biggest pride and joy. He loved attending their sporting events and concerts. He always had a video camera on hand and showered them with words of encouragement.
Pat was a morning person‚ and every morning he would wake us up with‚ ‘UP‚ UP‚ THE SUN IS UP. IT IS A BEAUTIFUL DAY IN THE HANNON HOUSE UNLIKE MOST DAYS.’ His belly laugh was infectious as well as entertaining. His whereabouts were never a mystery due to his signature whistling."},
{rank: "Trooper", first_name: "James", middle_name: "", last_name: "Sauter", department: "Illinois State Police", date_deceased: "03/29/2013", description: "Trooper James Sauter was killed when a semi-trailer truck struck his cruiser on Interstate 294 south of Willow Road shortly after 11:00 p.m.
The trooper was stopped in the left shoulder of the south-bound lanes when the semi rear-ended his cruiser, causing both vehicles to burst into flames. He was pronounced dead at the scene.
Trooper Sauter was a 5-year veteran of the Illinois State Police and is survived by his wife and family."},
{rank: "Investigator", first_name: "Cuauhtemoc", middle_name: "", last_name: "Estrada", department: "Cook County Sheriff's Department", date_deceased: "12/20/2013", description: "Investigator Cuauhtemoc Estrada died on December 20th at the age of 50. Estrada was hosting a family party on the evening of the 20th when two armed men attempted to rob his daughter and her boyfriend in the adjacent parking lot. Estrada was fatally shot when he intervened. Because Investigator Estrada identified himself and because he was performing an act of law enforcement typical to his office, his death was classified as a line of duty death in early January.

He was transported to Loyola University Medical Center, where he was pronounced dead a short time later.

Two suspects in connection with Investigator Estrada's murder were apprehended two days later.

Investigator Estrada was a U.S. Marine Corps veteran and had served with the Cook County Sheriff's Office for 20 years.
He left behind four children and three grandchildren. The 100 Club met with the family to offer both financial and moral support. Educational assistance will be offered to the children."},
{rank: "Officer", first_name: "James", middle_name: "Patrick", last_name: "Morrissy", department: "Oak Forest Police Department", date_deceased: "03/17/2014", description: "Officer Jim Morrissy, 63, of the 15000 block of Laramie Avenue in Oak Forest, was pronounced dead at 8:01 p.m. Monday, March 17, at Advocate Christ Medical Center in Oak Lawn. Morrissy was with the department for 34 years. He is survived by his wife and three sons.

Earlier Monday, Morrissy was assisting another officer with a domestic situation at 160th and Cicero around 2:15 p.m. Preliminary investigation shows he was attempting to turn left off of 160th Street onto Cicero Avenue when a vehicle traveling south on Cicero Avenue struck the squad car in the driver’s side. Morrissy was pinned in the vehicle. He was taken to Christ Hospital and was in serious to critical condition and later succumbed to his injuries. The other driver suffered minor injuries."},
{rank: "Officer", first_name: "David", middle_name: "T.", last_name: "Doering", department: "North Chicago Police Department", date_deceased: "05/04/1980", description: "Patrolman David Doering was shot and killed while on duty. The suspect was later shot and killed during a shootout with other officers.

Patrolman Doering had served with the North Chicago Police Department for two years. He was survived by his wife."},
{rank: "Assistant_Fire_Chief", first_name: "Samuel", middle_name: "L.", last_name: "Taylor", department: "Winthrop Harbor Fire Department", date_deceased: "10/29/1981", description: "Born on January 21, 1928, Samuel L. Taylor, Sr. served the citizens of Winthrop Harbor for over 22 years. Joining the department in 1959, Taylor brought many skills and enthusiasm to his fellow members.
On October 29, 1981, while on the scene of a residential fire, Taylor suffered a major heart attack. Attempts to revive him at the scene by his fellow firefighters were unsuccessful. He was pronounced dead at the hospital shortly after, at age 53.
In the 60 year history of the department, Samuel L. Taylor Sr. has been the only firefighter to die in the line of duty. Over 30 area fire departments and 200 firefighters participated in the fire department funeral.
Taylor's helmet still rests in the corridor of the fire stations, as a reminder to all when duty calls."},
{rank: "Officer", first_name: "Robert", middle_name: "", last_name: "Jr.", department: "Highland Park Police Department", date_deceased: "01/06/1984", description: "Officer Robert Reimann was struck and killed by a semitrailer as he and another officer questioned a home invasion suspect on the side of a roadway.

Officer Reimann had served with the Highland Park Police Department for nine years. He was survived by his wife, father and sister."},
{rank: "Lieutenant", first_name: "Franklin", middle_name: "", last_name: "Mercer", department: "Waukegan Fire Department", date_deceased: "12/29/1985", description: "One of the worst tragedies in Waukegan’s history was a fire that occurred on Christmas morning in 1984 at the Karcher Hotel on Washington Street and claimed the lives of nine people. For the second time in their  history, the Waukegan Fire Department mourned the loss of a brother firefighter who died in the line of duty.
On December 29, 1985, Lt. Franklin Mercer lost his life while battling a house fire at 721 McAlister Street. Lt. Mercer had been operating a hose line on the second floor. Lt. Mercers joined his company in an aggressive interior attack after there was a report that children were trapped in the building.  He died as a result of multiple injuries sustained when he fell through a floor that was weakened by the fire.  At his funeral, representatives from 63 public safety agencies attended to honor his service.
Lt. Mercer was a 15 year veteran with the Waukegan Fire Department and also served for two years with the Great Lakes Fire Department. Lt. Mercer was also a veteran‚ serving in the United States Navy during the Vietnam War. He was very active in physical fitness and enjoyed working as a mechanic for our Fire Department. Lt. Mercer was instrumental in completely restoring one of our Fire Engines and he also served as our Apparatus Officer.
Lt. Mercer was a well respected Fire Officer and friend to many members of our department. He had numerous academic accomplishments and certifications relating to the Fire Service.
Franklin Mercer was survived by his wife Paula and two children and was a man of honesty‚ and integrity who is missed by all those who knew him."},
{rank: "Firefighter", first_name: "Patrick", middle_name: "", last_name: "Cramer", department: "Chicago Fire Department", date_deceased: "11/15/2004", description: "On November 14, 2004, Firefighter Patrick Cramer was on duty for the Chicago Fire Department, working overtime at Truck Company 16. He reported for duty at 10AM. During the next ten hours, Truck 16 responded to four alarms. These alarms consisted of one still alarm, one automatic alarm, and two special duty alarms. At 8PM, while returning from a still alarm on South Ellis, Truck 16 was dispatched as the Rapid Intervention Team (RIT) truck to a working fire on South Cornell.
Upon arrival, Cramer and the other members of Truck 16 equipped and staged themselves as the RIT truck. They were in a standby mode, in the event that a firefighter became lost or trapped while working at the fire. The fire rapidly escalated in scope and intensity, necessitating the striking of a box alarm. At that time, Truck 16 was redeployed from their RIT duties to roof ventilation operations. Cramer was a member of the roof team, assigned to ascend to the roof of the burning structure and to cut four foot by four foot holes over the seat of the fire. Cramer utilized his eight pound axe and pike pole to cut through the roofing material. This was accomplished while dense, acrid smoke was streaming from previously cut holes and other natural openings.
After completing his duties as a member of the roof ventilation team, Cramer and his partner rejoined the other members of Truck 16. They were then assigned to the interior of the burning structure to conduct a final search of the building for any trapped occupants. After ascertaining that the building was clear or any occupants, Truck 16 exited the building and reported to the Incident Commander. Cramer was then ordered to assist in the lowering and bedding of ground ladders that had been raised on the building during the course of the fire. Cramer also assisted the engine companies in disconnecting, draining, and dragging hose lines back to the engine companies, where he aided those members in re-bedding the hose lines.
After returning to quarters following the fire, Truck 16 subsequently responded to tree more alarms during Cramer’s tour of duty. These alarms consisted of one automatic alarm, one still alarm, and one still and box alarm. Cramer worked until 8AM on November 15.
Later that day, Cramer was at Bogan Technical High School on West 79th Street. He collapsed and friends called 911 for medical assistance. Engine Company 64 was dispatched as a first responder and initiated CPR until the arrival of ALS Ambulance Company 18. Ambulance 18 initiated advanced medical procedures consistent with a patient in cardiac arrest, and then transported Cramer to Christ Advocate Hospital in Oak Lawn. Cramer was subsequently pronounced dead by the emergency room physician."},
{rank: "Officer", first_name: "Alejandro", middle_name: "", last_name: "Valadez", department: "Chicago Police Department", date_deceased: "06/01/2010", description: "Police Officer Alejandro “Alex” Valadez, 27, was a 3-year veteran of the Chicago Police Department, assigned to the 007 District.
Shortly after midnight, on June 1, 2009, Officer Valadez and his partner, Officer Thomas Vargas, responded to a shots fired call.  When the officers arrived at the 6000 block of South Hermitage Avenue, the gunfire had ceased.  Officer Valadez was questioning a man when a car marked with a bullet hole from the earlier shooting returned to the scene.  The three men inside of the vehicle were determined to seek revenge.  The driver, Kevin Walker, 25, positioned the vehicle as his passengers, Shawn Gaston, 24, and Christopher Harris, 24, aimed to shoot.  Seconds later, both officers were on the ground.  Officer Vargas was unharmed and stood-up to see his partner and friend bleeding.  Officer Valadez had been shot twice.  He was rushed to Stroger Hospital where he succumbed to his injuries in the afternoon.
After the shooting, the three men parked their vehicle at 61<sup>st</sup> Street and Paulina Avenue and attended a party.  A .357 magnum, .40 caliber gun, and a rifle were recovered from Kevin Walker’s trunk.
Shawn Gaston was sentenced to serve 125 years in prison. Kevin Walker was sentenced to 120 years and Christopher Harris was sentenced to 105 years in prison.
In 2010, the Valadez Law was enacted in memory of Officer Alejandro Valadez.  The law mandates that any gang member found to be in the unlawful possession of a firearm must serve a prison sentence.
Officer Valadez died prior to the birth of his son, Alex, Jr.  He is survived by his fiancé, Christina Rodriguez; son, Alex, Jr.; his parents, and siblings."},
{rank: "Firefighter", first_name: "Mark", middle_name: "", last_name: "Zielinski", department: "Matteson Fire Department", date_deceased: "12/04/2015", description: "The Board of Directors and membership of the 100 Club of Chicago extend their condolences to the family of:

Firefighter Mark Zielinski
Matteson Fire Department

Mark Zielinski, 49, was “rendering emergency medical aid” to a shopper who needed CPR at the Walmart at 21410 S. Cicero Ave. in Matteson when he died, according to Matteson Fire Chief Chris Schwalbe and the Cook County medical examiner’s office.

Firefighter Zielinski had served with the Matteson Fire Department for 13 years and the Harvey Fire Department before then. He is survived by his wife and children. Our thoughts and prayers continue for the Zielinski family and the Matteson Fire Department."},
{rank: "Firefighter", first_name: "Daniel", middle_name: "", last_name: "Capuano", department: "Chicago Fire Department", date_deceased: "12/14/2015", description: "Dan Capuano, 42, was battling a warehouse fire on 92nd and Baltimore when he fell through an elevator shaft.

Firefighter Capuano had served with the Chicago Fire Department for 15 years and the Evergreen Park Fire Department before then. He is survived by his wife and children. Our thoughts and prayers continue for the Capuano family and the Chicago Fire Department."},
{rank: "Firefighter", first_name: "Kenneth", middle_name: "K.", last_name: "Harris", department: "Oak Park Fire Department", date_deceased: "01/11/2016", description: "Oak Park Firefighter Kenneth K. Harris died, at the age of 56, Monday January 11th just hours after finishing his 24-hour shift and working another six hours of fire prevention work.

Firefighter Harris was a 28-year veteran of the Oak Park Fire Department. He is survived by his wife, five children and four grandchildren. Our thoughts and prayers continue for the Harris family and the Oak Park Fire Department.

"},
{rank: "Officer", first_name: "Jason", middle_name: "", last_name: "Gallero", department: "Cook County Sheriff's Police", date_deceased: "09/15/2016", description: "Jason Gallero died in the line of duty on Thursday, September 15, 2016 after collapsing while participating in a colors run at the Cook County Sheriff's Police Training Academy, where he served as a highly respected instructor to recruits of the Cook County Sheriff's office and other law enforcement agencies across Cook County.

Officer Gallero had served with the Cook County Sheriff's Office for 22 years. He started his career in the Department of Corrections in 1994 before joining the Sheriff's Police Department in 2002. He is survived by his daughter. Our thoughts and prayers continue for the Gallero family and the Cook County Sheriff's Office."}])
