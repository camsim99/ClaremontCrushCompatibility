package beans;

public class CrusherAndCrush {

	//crusher instance variables
	private String college_er = "";
	private String athlete_er = "";
	private String class_er = "";
	private String fashion_er = "";
	private String personality_er = "";
	private String party_er = "";
	

	//crush instance variables
	private String college = "";
	private String athlete = "";
	private String class_crush = "";
	private String fashion = "";
	private String personality = "";
	private String party = "";
	
	//score variable, reminderL make getters and setters!
	private String cScore = "";
	
	//message from validate function
	private String message = "";
	
	//message that accompanies score
	private String analysis = "";
	
	//Constructors
	public CrusherAndCrush() {}
	
	public CrusherAndCrush(String a, String b, String c, String d, String e, String k,
								String f, String g, String h, String i, String j, String l)
	{
		this.college_er = a;
		this.athlete_er = b;
		this.class_er = c;
		this.fashion_er = d;
		this.personality_er = e;
		this.college = f;
		this.athlete = g;
		this.class_crush = h;
		this.fashion = i;
		this.personality = j;
		this.party_er = k;
		this.party = l;
	}
	
	//Getters and setters
	public String getCollege_er() {
		return college_er;
	}
	public void setCollege_er(String college_er) {
		this.college_er = college_er;
	}
	public String getAthlete_er() {
		return athlete_er;
	}
	public void setAthlete_er(String athlete_er) {
		this.athlete_er = athlete_er;
	}
	public String getClass_er() {
		return class_er;
	}
	public void setClass_er(String class_er) {
		this.class_er = class_er;
	}
	public String getFashion_er() {
		return fashion_er;
	}
	public void setFashion_er(String fashion_er) {
		this.fashion_er = fashion_er;
	}
	public String getPersonality_er() {
		return personality_er;
	}
	public void setPersonality_er(String personality_er) {
		this.personality_er = personality_er;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getAthlete() {
		return athlete;
	}
	public void setAthlete(String athlete) {
		this.athlete = athlete;
	}
	public String getClass_crush() {
		return class_crush;
	}
	public void setClass_crush(String class_crush) {
		this.class_crush = class_crush;
	}
	public String getFashion() {
		return fashion;
	}
	public void setFashion(String fashion) {
		this.fashion = fashion;
	}
	public String getPersonality() {
		return personality;
	}
	public void setPersonality(String personality) {
		this.personality = personality;
	}
	
	public void setCScore()
	{
		double score=0;
		
		/* COLLEGE ANALYSIS */
		
		//same college case
		if(college_er.equals("Claremont McKenna College (CMC)") && college.equals("Claremont McKenna College (CMC)"))
		{
			score += 4;
		}
		else if(college_er.equals("Harvey Mudd College (HMC)") && college.equals("Harvey Mudd College (HMC)"))
		{
			score += 8;
		}
		else if(college_er.equals("Pitzer College") && college.equals("Pitzer College"))
		{
			score += 8;
		}
		else if(college_er.equals("Pomona College") && college.equals("Pomona College"))
		{
			score += 7;
		}
		else if(college_er.equals("Scripps College") && college.equals("Scripps College"))
		{
			score += 8;
		}
		
		//mixed college cases
		if(college_er.equals("Claremont McKenna College (CMC)") && college.equals("Harvey Mudd College (HMC)")
				|| college.equals("Claremont McKenna College (CMC)") && college_er.equals("Harvey Mudd College (HMC)"))
		{
			score += 4;
		}
		else if(college_er.equals("Claremont McKenna College (CMC)") && college.equals("Pitzer College")
				|| college.equals("Claremont McKenna College (CMC)") && college_er.equals("Pitzer College"))
		{
			score += 4;
		}
		else if(college_er.equals("Claremont McKenna College (CMC)") && college.equals("Pomona College")
				|| college.equals("Claremont McKenna College (CMC)") && college_er.equals("Pomona College"))
		{
			score += 5;
		}
		else if(college_er.equals("Claremont McKenna College (CMC)") && college.equals("Scripps College")
				|| college.equals("Claremont McKenna College (CMC)") && college_er.equals("Scripps College"))
		{
			score += 9;
		}
		else if(college_er.equals("Harvey Mudd College (HMC)") && college.equals("Pitzer College")
				|| college.equals("Harvey Mudd College (HMC)") && college_er.equals("Pitzer College"))
		{
			score += 6;
		}
		else if(college_er.equals("Harvey Mudd College (HMC)") && college.equals("Pomona College")
				|| college.equals("Harvey Mudd College (HMC)") && college_er.equals("Pomona College"))
		{
			score += 8;
		}
		else if(college_er.equals("Harvey Mudd College (HMC)") && college.equals("Scripps College")
				|| college.equals("Harvey Mudd College (HMC)") && college_er.equals("Scripps College"))
		{
			score += 7;
		}
		else if(college_er.equals("Pitzer College") && college.equals("Pomona College")
				|| college.equals("Pitzer College") && college_er.equals("Pomona College"))
		{
			score += 5;
		}
		else if(college_er.equals("Pitzer College") && college.equals("Scripps College")
				|| college.equals("Pitzer College") && college_er.equals("Scripps College"))
		{
			score += 4;
		}
		else if(college_er.equals("Pomona College") && college.equals("Scripps College")
				|| college.equals("Pomona College") && college_er.equals("Scripps College"))
		{
			score += 7;
		}
		
		
		/* ATHLETE ANALYSIS */
		
		//same athletic interest ability
		if(athlete_er.equals("CMS athlete") && athlete.equals("CMS athlete"))
		{
			score += 7;
		}
		else if(athlete_er.equals("PP athlete") && athlete.equals( "PP athlete"))
		{
			score += 8;
		}
		else if(athlete_er.equals("Club athlete") && athlete.equals( "Club athlete"))
		{
			score += 9;
		}
		else if(athlete_er.equals("Nope") && athlete.equals( "Nope"))
		{
			score += 8;
		}
		
		//different athletic interest ability cases
		else if(athlete_er.equals("CMS athlete") && athlete.equals( "PP athlete")
				|| athlete.equals("CMS athlete") && athlete_er.equals( "PP athlete"))
		{
			score += 3;
		}
		else if(athlete_er.equals("CMS athlete") && athlete.equals( "Club athlete")
				|| athlete.equals("CMS athlete") && athlete_er.equals( "Club athlete"))
		{
			score += 6;
		}
		else if(athlete_er.equals("CMS athlete") && athlete.equals( "Nope")
				|| athlete.equals("CMS athlete") && athlete_er.equals( "Nope"))
		{
			score += 7;
		}
		else if(athlete_er.equals("PP athlete") && athlete.equals( "Club athlete")
				|| athlete.equals("PP athlete") && athlete_er.equals( "Club athlete"))
		{
			score += 6;
		}
		else if(athlete_er.equals("PP athlete") && athlete.equals( "Nope")
				|| athlete.equals("PP athlete") && athlete_er.equals( "Nope"))
		{
			score += 7;
		}
		else if(athlete_er.equals("Club athlete") && athlete.equals( "Nope")
				|| athlete.equals("Club athlete") && athlete_er.equals( "Nope"))
		{
			score += 8;
		}

		
		/* CLASS STATUS ANALYSIS*/
		
		//same class cases
		if(class_er.equals("Frosh") && class_crush.equals("Frosh"))
		{
			score += 6;
		}
		else if(class_er.equals("Sophomore") && class_crush.equals("Sophomore"))
		{
			score += 8;
		}
		else if(class_er.equals("Junior") && class_crush.equals("Junior"))
		{
			score += 9;
		}
		else if(class_er.equals("Senior") && class_crush.equals("Senior"))
		{
			score += 8;
		}
		
		//different class cases
		else if(class_er.equals("Frosh") && class_crush.equals("Sophomore")
				|| class_crush.equals("Frosh") && class_er.equals("Sophomore"))
		{
			score += 5;
		}
		else if(class_er.equals("Frosh") && class_crush.equals("Junior")
				||class_crush.equals("Frosh") && class_er.equals("Junior"))
		{
			score += 5;
		}
		else if(class_er.equals("Frosh") && class_crush.equals("Senior")
				|| class_crush.equals("Frosh") && class_er.equals("Senior"))
		{
			score += 1;
		}
		else if(class_er.equals("Sophomore") && class_crush.equals("Junior")
				|| class_crush.equals("Sophomore") && class_er.equals("Junior"))
		{
			score += 8;
		}
		else if(class_er.equals("Sophomore") && class_crush.equals("Senior")
				|| class_crush.equals("Sophomore") && class_er.equals("Senior"))
		{
			score += 7;
		}
		else if(class_er.equals("Junior") && class_crush.equals("Senior")
				|| class_crush.equals("Junior") && class_er.equals(")Senior"))
		{
			score += 7;
		}
		
		/* FASHION ANALYSIS */
		
		//same fashion cases
		if(fashion_er.equals("Fashionable") && fashion.equals( "Fashionable"))
		{
			score+= 10;
		}
		else if(fashion_er.equals("Slob") && fashion.equals("Slob"))
		{
			score+= 10;
		}
		else if(fashion_er.equals("Distinct style") && fashion.equals("Distinct style"))
		{
			score+= 8;
		}
		else if(fashion_er.equals("Too comfortable") && fashion.equals("Too comfortable"))
		{
			score+= 4;
		}
		else if(fashion_er.equals("Athletic") && fashion.equals("Athletic"))
		{
			score+= 9;
		}
		
		//different fashion cases
		else if(fashion_er.equals("Slob") && fashion.equals("Athletic")
				|| fashion.equals("Slob") && fashion_er.equals("Athletic"))
		{
			score+= 3;
		}
		else if(fashion_er.equals("Slob") && fashion.equals("Fashionable")
				|| fashion.equals("Slob") && fashion_er.equals("Fashionable"))
		{
			score+= 1;
		}
		else if(fashion_er.equals("Slob") && fashion.equals("Distinct style")
				|| fashion.equals("Slob") && fashion_er.equals("Distinct style"))
		{
			score+= 5;
		}
		else if(fashion_er.equals("Slob") && fashion.equals("Too comfortable")
				|| fashion.equals("Slob") && fashion_er.equals("Too comfortable"))
		{
			score+= 2;
		}
		else if(fashion_er.equals("Athletic") && fashion.equals("Fashionable")
				|| fashion.equals("Athletic") && fashion_er.equals("Fashionable"))
		{
			score+= 8;
		}
		else if(fashion_er.equals("Athletic") && fashion.equals("Distinct style")
				|| fashion.equals("Athletic") && fashion_er.equals("Distinct style"))
		{
			score+= 7;
		}
		else if(fashion_er.equals("Athletic") && fashion.equals("Too comfortable")
				|| fashion.equals("Athletic") && fashion_er.equals("Too comfortable"))
		{
			score+= 5;
		}
		else if(fashion_er.equals("Fashionable") && fashion.equals("Distinct style")
				|| fashion.equals("Fashionable") && fashion_er.equals("Distinct style"))
		{
			score+= 9;
		}
		else if(fashion_er.equals("Fashionable") && fashion.equals("Too comfortable")
				|| fashion.equals("Fashionable") && fashion_er.equals("Too comfortable"))
		{
			score+= 3;
		}
		else if(fashion_er.equals("Distinct style") && fashion.equals("Too comfortable")
				|| fashion.equals("Distinct style") && fashion_er.equals("Too comfortable"))
		{
			score+= 5;
		}
		
		
		/* PERSONALITY ANALYSIS */
		
		//same personality cases
		if (personality_er.equals("More extroverted") && personality.equals( "More extroverted"))
		{
			score += 8;
		}
		else if (personality_er.equals( "More introverted") && personality.equals( "More introverted"))
		{
			score += 8;
		}
		else if (personality_er.equals("Ambivert") && personality.equals( "Ambivert"))
		{
			score += 9;
		}
		
		//different personality cases
		else if (personality_er.equals("More extroverted") && personality.equals("More introverted")
				|| personality.equals("More extroverted") && personality_er.equals("More introverted"))
		{
			score += 7;
		}
		else if (personality_er.equals("More extroverted") && personality.equals("Ambivert")
				|| personality.equals("More extroverted") && personality_er.equals("Ambivert"))
		{
			score += 10;
		}
		else if (personality_er.equals("More introverted") && personality.equals("Ambivert")
				|| personality.equals("More introverted") && personality_er.equals("Ambivert"))
		{
			score += 10;
		}
		
		/* PARTY ANALYSIS */
		
		//same party status cases
		if (party_er.equals("Yes!") && party.equals("Yes!"))
		{
			score += 6;
		}
		else if (party_er.equals("Occasionally, yes.") && party.equals("Occasionally, yes."))
		{
			score += 7;
		}
		else if (party_er.equals("Not really.") && party.equals( "Not really."))
		{
			score += 8;
		}
		
		//different party status cases
		else if (party_er.equals("Yes!") && party.equals("Occasionally, yes.")
				|| party.equals("Yes!") && party_er.equals("Occasionally, yes."))
		{
			score += 6;
		}
		else if (party_er.equals("Yes!") && party.equals("Not really.")
				|| party.equals( "Yes!") && party_er.equals("Not really."))
		{
			score += 4;
		}
		else if (party_er.equals("Occasionally, yes.") && party.equals("Not really.")
				|| party.equals("Occasionally, yes.") && party_er.equals("Not really."))
		{
			score += 9;
		} 
		
		//calculate cScore
		score = score/60;
		score = score * 100; //to get percentage
		
		//curve by 10 points since highest possible score is 90
		score = score + 10;
		
		//save cScore as String
		cScore = Integer.toString((int)Math.round(score));
	}
	
	public String getCScore() {
		return this.cScore;
	}
	
	//validate method
	public boolean validate()
	{
		if(college_er.equals("") || athlete_er.equals("") || class_er.equals("") 
				|| personality_er.equals("") || fashion_er.equals("") || party_er.equals(""))
		{
			message = "Crusher information was incomplete!";
			return false;
		}
		
		if(college.equals("") || athlete.equals("") ||class_crush .equals("")
				|| personality.equals("") || fashion.equals("") || party.equals(""))
		{
			message = "Crush information was incomplete!";
			return false;
		}
		if(college_er.equals("Claremont McKenna College (CMC)") && athlete_er.equals("PP athlete")
				|| college_er.equals("Harvey Mudd College (HMC)") && athlete_er.equals("PP athlete")
				|| college_er.equals("Scripps College") && athlete_er.equals("PP athlete")
				|| college_er.equals("Pomona College") && athlete_er.equals("CMS athlete")
				|| college_er.equals("Pitzer College") && athlete_er.equals("CMS athlete"))
		{
			message = "You said that you play a sport for the rival team!";
			return false;
		}
		
		if(college.equals("Claremont McKenna College (CMC)") && athlete.equals("PP athlete")
				|| college.equals("Harvey Mudd College (HMC)") && athlete.equals("PP athlete")
				|| college.equals("Scripps College") && athlete.equals("PP athlete")
				|| college.equals("Pomona College") && athlete.equals("CMS athlete")
				|| college.equals("Pitzer College") && athlete.equals("CMS athlete"))
		{
			message = "You said the crush plays a sport for the rival team!";
			return false;
		}
		


		return true;
	}
	
	public String getMessage()
	{
		return message;
	}
	
	public void setAnalysis()
	{
		int score = Integer.parseInt(cScore);
		
		if (score > 85)
		{
			analysis = "Looks like a Claremont Crush might just turn into a Claremont Couple!";
		}
		
		else if (score > 70)
		{
			analysis = "Looks like this Claremont Crush may be able to develop! Not quite a perfect match though...";
		}
		
		else if (score > 60)
		{
			analysis = "This Claremont Crush might just stay a crush...but one might have hope!";
		}
		
		else
		{
			analysis = "Ehhh...well, no hurt in continuing to Claremont crush!";
		}
	}
	
	public String getAnalysis()
	{
		return this.analysis;
	}
	
	public String getParty_er() {
		return party_er;
	}

	public void setParty_er(String party_er) {
		this.party_er = party_er;
	}

	public String getParty() {
		return party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	
}
