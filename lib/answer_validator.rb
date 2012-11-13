class AnswerValidator < ActiveModel::EachValidator
	def validate_each(record, att, value)
		id = value.pop
		half = value.length / 2
		if id == "One correct answer"
			check = 0
			for i in half ... value.length
				check += value[i].to_i
			end
			if check != 1
				record.errors['Answers'] << "are invalid, have only one correct answer"
			end
		elsif id == "More correct answers"
			check = 0
			for i in half ... value.length
				check += value[i].to_i
			end
			if check < 2
				record.errors['Answers'] << "are invalid, more than one correct answer"
			end
			if check == half
				record.errors['Answers'] << "are invalid, all answers can't be correct"
			end

		end
	end
end