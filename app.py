from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    # Realizamos un cálculo matemático simple (suma de dos números)
    num1 = 10
    num2 = 5
    resultado = num1 + num2
    
    return f'¡Hola desde Docker sin Compose! 🚀 {resultado}' 

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
