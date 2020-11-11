FactoryBot.define do 
	factory :post do
		title {"Пост о котиках"}
		body {"Много информации о котиках"}


		trait :about_cats do
			title {"Пост о котиках"}
			body {"Много информации о котиках"}
			association :topic, factory: [:topic, :cats]
		end

		trait :about_dogs do
			title {"Пост о собаках"}
			body {"Много информации о собаках"}
			association :topic, factory: [:topic, :dogs]
		end

		trait :about_hamsters do
			title {"Пост о Хомячках"}
			body {"Много информации о Хомячках"}
			association :topic, factory: [:topic, :hamsters]
		end

		trait :about_turles do
			title {"Пост о черепашках"}
			body {"Много информации о черепашках"}
			association :topic, factory: [:topic, :turles]
		end
		
		trait :about_rabbits do
			title {"Пост о кроликах"}
			body {"Много информфции о кроликах"}
			association :topic, factory: [:topic, :rabbits]
		end		 	  
	end

	factory :topic do

		trait :cats do
			add_attribute(:alias) { "cats" }
			title { "Котики" }
		end

		trait :dogs do
			add_attribute(:alias) { "dogs" }
			title { "Собачки" }
		end

		trait :hamsters do
			add_attribute(:alias) { "hamsters" }
			title { "Хомячки" }
		end
		
		trait :turles do
			add_attribute(:alias) { "turles" }
			title { "Черепашки" }
		end
		
		trait :rabbits do
			add_attribute(:alias) { "rabbits" }
			title { "Кролики" }
		end
				
	end

	
end