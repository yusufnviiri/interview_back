
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
 

@q1=Question.create({body:"Who is one of the following is not a data-type in JavaScript",answer:'text'})
@q2=Question.create({body:"Who is the CEO of OpenAI",answer:'Sam Altman'})
@q3=Question.create({body:"Best Programming Language for AI development",answer:'Python'})
@q4=Question.create({body:"Who started Google",answer:'Larry Page'})
@q5=Question.create({body:"Which of the following is not an Object Oriented Programming Language",answer:'SQL'})
@q6=Question.create({body:"Which of the following is not a Programming Language",answer:'Linux'})
@q7=Question.create({body:"What is the last letter in the English Alphabet",answer:'Z'})
@q8=Question.create({body:"The following are JavaScript frameworks except",answer:'Fortran'})
@q9=Question.create({body:"What is the motto of USA",answer:'In God We Trust'})
@q10=Question.create({body:"Which continent is China",answer:'Asia'})


Reply.create!({option1:'array',option2:'text', option3:'object',option4:'boolean',selection:'string',question_id:1})
Reply.create!({option1:'Bill Gates',option2:'Elon Musk', option3:'Sam Altman',option4:'Mark Zuckerbeg',selection:'Kaolo Muani',question_id:2})
Reply.create!({option1:'MATLAB',option2:'Julia', option3:'JavaScript',option4:'Python',selection:'Sam ',question_id:3})
Reply.create!({option1:'JP morgan',option2:'Jack Ma',option3:'Larry Page',option4:'Jeff Bezos',selection:'Peter Theil',question_id:4})
Reply.create!({option1:'JAVA',option2:'SQL', option3:'C#',option4:'RUBY',selection:'Big Bang',question_id:5})
Reply.create!({option1:'C++',option2:'Java', option3:'Ruby',option4:'Linux',selection:'Sam',question_id:6})
Reply.create!({option1:'&',option2:'Z',option3:'P',option4:'X',selection:'K',question_id:7})
Reply.create!({option1:'Angular',option2:'Fortran',option3:'React',option4:'Express',selection:'Node' ,question_id:8})
Reply.create!({option1:'Freedom',option2:'Home For All',option3:'Where Dreams Come True',option4:'In God We Trust',selection:'World War' ,question_id:9})
Reply.create!({option1:'Asia',option2:'Beijing',option3:'Africa',option4:'Europe',selection:'Iraq',question_id:10})

