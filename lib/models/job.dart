class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);

  static List<Job> generateJobs() {
    return [
      Job("Google LLC", 'assets/images/google_logo.png', false,
          'Senior Software Engineer', 'United States', 'Full Time', [
        'Creative with an eye for shape color',
        'Strong with DS and OOPS concepts',
        'Understand different concepts',
        'Interested to work with different domain'
      ]),
      Job("Airbnd Inc", 'assets/images/airbnb_logo.png', true,
          'Senior Software Engineer', 'United States', 'Full Time', [
        'Creative with an eye for shape color',
        'Strong with DS and OOPS concepts',
        'Understand different concepts',
        'Interested to work with different domain'
      ]),
      Job("LinkedIn Inc", 'assets/images/linkedin_logo.png', false,
          'Senior Software Engineer', 'United States', 'Full Time', [
        'Creative with an eye for shape color',
        'Strong with DS and OOPS concepts',
        'Understand different concepts',
        'Interested to work with different domain'
      ]),
    ];
  }
}
