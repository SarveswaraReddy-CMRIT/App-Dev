from flask import Flask, request, render_template

app = Flask(__name__)
 
# Load Python questions and answers from the text file
def load_questions():
    questions = {}
    with open('python_questions.txt', 'r') as file:
        lines = file.readlines()
        for line in lines:
            question, answer = line.strip().split('|||')
            questions[question.strip()] = answer.strip()
    return questions
 
python_questions = load_questions()
 
# Define a route for the chatbot page
@app.route('/')
def chatbot_page():
    return render_template('chatbot.html')

 # Define a route for answering questions
@app.route('/ask', methods=['POST'])
def answer_question():
    user_question = request.form.get('user_question')
    if user_question in python_questions:
        answer = python_questions[user_question]
    else:
        answer = "Sorry, I don't know the answer to that question."
    return render_template('chatbot.html', user_question=user_question, answer=answer)
 
if __name__ == '__main__':
    app.run(debug=True)
  
