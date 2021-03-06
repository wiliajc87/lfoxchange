# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{ name: 'jwilliams', password: 'password'},
	          { name: 'eobi', password: 'password'},
	          { name: 'cwalsh', password: 'password'},
	          { name: 'zbosteel', password: 'password'},
	          { name: 'jstern', password: 'password'},
	          { name: 'jfosco', password: 'password'},
	          { name: 'aurasky', password: 'password'},
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
		{
			title: 'Precipice',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
		{
			title: 'Paragon',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
		{
			title: 'Skeyborn',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
		{
			title: 'Annihilation',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
		{
			title: 'Fatal Alliance',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Pantheon',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Pandemonium',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Rising Force',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Dark Rival',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Hidden Past',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Captive Temple',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Day of Reckoning',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Fight for Truth',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'What if Jar Jar Binks really WAS the Phantom Menace?',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Call to Vengeance',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Threat Withing',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Shattered Peace',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Ties that Bind',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Secrets of the Jedi',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Shadows of the Empire',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Bounty Hunter Wars',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Truce at Bakura',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Shadows of Mindor',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Heir to the Empire',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Dark Force Rising',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'The Last Command',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
				{
			title: 'Darksaber',
			body: 'He certainly destroyed the films reviews!',
			user_id: 7,
		},
	]
)

Answer.create([
		{
			body: "It'll come when it comes.",
			question_id: 1,
			user_id: 1
		},
		{
			body: "Once the Lannisters have paid everybody.",
			question_id: 1,
			user_id: 5
		},
		{
			body: "I dunno. When it feels like it?",
			question_id: 1,
			user_id: 2
		},
		{
			body: "Oa",
			question_id: 3,
			user_id: 1
		},
	]
)
