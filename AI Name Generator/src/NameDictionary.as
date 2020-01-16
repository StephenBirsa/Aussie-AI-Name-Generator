package {
	/**
	 * AI Name and Digits Generator
	 * ~13 October 2016
	 * ~AS3 (ActionScript 3.0)
	 * @author Stephen Birsa
	 */
	final public class NameDictionary {
		//Best Intended Usage:
		//somestring = "Name: " + NameDictionary.NameList[int(Math.random() * NameDictionary.NameList.length)] + NameDictionary.generateNumbers();
		//note: int floors to 0. NameList element 0 to last element.
		final public function NameDictionary(); //no need to call constructor as every thing is static unchanging ( ; instead of {} )
		//Mainly Top 100 names of Males and Females of Australia in 2016
		public static const NameList:Vector.<String> = new <String>[
		"Emily", "James", "Sarah", "Jack", "Jessica", "Harry", "Emma", "Daniel"
		,"Chloe", "Alex", "Georgia", "Liam", "Sophie", "Jake", "Hannah", "Tom", "Amy"
		,"Dylan", "Olivia", "Sam", "Lucy", "Ryan", "Grace", "Ben", "Lily", "Lachlan"
		,"Jess", "Jordan", "Kate", "Chris", "Caitlin", "David", "Zoe", "Josh", "Jasmine", "Jacob"
		,"Laura", "Matthew", "Ella", "William", "Charlotte", "Nathan", "Holly", "Joshua"
		,"Erin", "Riley", "Lauren", "Luke", "Samantha", "Michael", "Mike", "Katie", "Max"
		,"Jade", "Ethan", "Chelsea", "Patrick", "Abbey", "Jackson", "Hayley", "Matt", "Isabella"
		,"Andrew", "Stephanie", "Nicholas", "Courtney", "Zac", "Mia", "John", "Amelia", "Connor"
		,"Ruby", "Jayden", "Bella", "Thomas", "Molly", "Nick", "Claire", "Aaron", "Julia", "Bailey"
		,"Kyle", "Maddy", "Lachie", "Ashleigh", "Cody", "Tayla", "Sean", "Amber", "Noah", "Nicole"
		,"Oliver", "Claudia", "Will", "Caitlyn", "Brayden", "Natasha", "Edward", "Taylor", "Callum"
		,"Ellie", "Samuel", "Megan", "Cameron", "Rebecca", "Dan", "Kayla", "Marcus", "Rachel"
		,"Harrison", "Maddie", "Shaun", "Anna", "Tim", "Brooke", "Jasper", "Ashley", "Caleb"
		,"Gemma", "Charlie", "Bianca", "Jason", "Melissa", "Peter", "Bree", "Mitch", "Elizabeth"
		,"Hayden", "Imogen", "Isaac", "Eliza", "Steven", "Clare", "Adam", "Paige", "Oscar", "Tegan"
		,"Mitchell", "Lisa", "Hamish", "Rhiannon", "Lucas", "Morgan", "Scott", "Tara", "Blake"
		,"Anthony", "Natalie", "Jim", "Shannon", "Stephen", "Madeleine", "Tristan", "Steph"
		,"Justin", "Bonnie", "Corey", "Brianna", "Gus", "Abbie", "Joel", "Jessie", "Jonathan", "Ashlee"
		,"Jeremy", "Alyssa", "Ali", "Rose", "Joe", "Casey", "Brock", "Kevin", "Ava", "Henry", "Madison"
		,"Brandon", "Kaitlyn", "Shane", "Leah", "Lewis", "Abby", "Joey", "Bethany", "Hugo", "Rachael"
		,"Zachary", "Jennifer", "Tony", "Monique", "Angus", "Alice", "Kieran", "Shelby", "Brenden"
		,"Annie","Stewart","Jamie","Mark","Anne","Markus","Marcus"
		];
		
		//Generates a possible 4 digit number from (0-4 digits):
		public static function generateNumbers():String {
			//if between 0 and 9 then number is added.
			//if number is Math.floor(11) = 10, stop and don't go to next digit/s
			const a:int = Math.random() * 11;
			if (a < 10) {
				const b:int = Math.random() * 11;
				if (b > 9) {
					return a.toString();
				}
				else if (b < 10) {
					const c:int = Math.random() * 11;
					if (c > 9) {
						return a.toString() + b.toString();
					}
					else if (c < 10) {
						const d:int = Math.random() * 11;
						if (d > 9) {
							return a.toString() + b.toString() + c.toString();
						}
						else if (d < 10) {
							return a.toString() + b.toString() + c.toString() + d.toString();
						}
					}
				}
			}
			return "";
		}
	}

}
