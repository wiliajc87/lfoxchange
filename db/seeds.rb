# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{ name: 'jwilliams' },
			 { name: 'eobi'},
			 { name: 'cwalsh'},
			 { name: 'zbosteel' },
			 { name: 'jstern' },
			 { name: 'jfosco' },
			 { name: 'aurasky' },
			])

Question.create([
		{
			title: 'When is winter coming?',
			body: 'Seriously. The Starks won\'t shut up about it.',
			user_id: 1,
		},
		{
			title: 'Do I have to keep making questions up?',
			body: 'Bleh. This is getting old--but I guess I\'ll keep it up.',
			user_id: 2,
		},
		{
			title: 'What planet do the Green Lanterns get their power from?',
			body: 'I think it\'s two letters...',
			user_id: 3,
		},
		{
			title: 'What kind of bear...',
			body: '...is best?',
			user_id: 4,
		},
		{
			title: 'What if my yellow...',
			body: 'Isn\'t YOUR yellow?!',
			user_id: 3,
		},
		{
			title: 'Which Beatle was the Walrus?',
			body: 'John or Paul?',
			user_id: 2,
		},
		{
			title: 'And what the hell is an Eggman?',
			body: 'LSD is a hell of a drug, I guess?',
			user_id: 6,
		},
		{
			title: 'What if Jar Jar Binks really WAS the Phantom Menace?',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
	]
)

Answer.create([
		{
			body: "It'll come when it comes.",
			question_id: 1,
			user_id: 1,
		},
		{
			body: "Once the Lannisters have paid everybody.",
			question_id: 1,
			user_id: 5,
		},
		{
			body: "I dunno. When it feels like it?",
			question_id: 1,
			user_id: 2,
		},
		{
			body: "Oa",
			question_id: 3,
			user_id: 1,
		},
	]
)
