rendering
renderContentOn: html
	html div
		class: 'content';
		with: [ html text: 'WABookFrom:'.
			html
				break;
				break;
				break.
			html
				form: [ html div
						class: 'leftForm';
						with: 'Title: '.
					html div
						class: 'rightForm';
						with: [ html textInput
								callback: [ :input | book title: input ];
								value: book title ].
					html
						break;
						break.
					html div
						class: 'leftForm';
						with: 'Author: '.
					html div
						class: 'rightForm';
						with: [ html textInput
								callback: [ :input | book author: input ];
								value: book author ].
					html
						break;
						break.
					html div
						class: 'leftForm';
						with: 'Genre: '.
					html div
						class: 'rightForm';
						with: [ html textInput
								callback: [ :input | book genre: input ];
								value: book genre ].
					html
						break;
						break.
					html div
						class: 'leftForm';
						with: ' ISBN: '.
					html div
						class: 'rightForm';
						with: [ html textInput
								callback: [ :input | book isbn: input ];
								value: book isbn ].
					html
						break;
						break.
					html div
						class: 'leftForm';
						with: ' Year: '.
					html div
						class: 'rightForm';
						with: [ html textInput
								callback: [ :input | book year: input ];
								value: book year ].
					html
						break;
						break;
						break.
					html submitButton
						callback: [ self answer: book ];
						value: 'Save' ] ]