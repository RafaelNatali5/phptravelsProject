import random
import string


class Login():
    def sortear_nome(self):
        firstnames = ['Abby', 'Barbara', 'Maicon', 'Milene', 'Robson', 'Jorge', 'Carlos', 'Gustavo']
        return random.choice(firstnames)
    
    def sortear_sobrenome(self):
        lastnames = ['Pereira', 'Bueno', 'Silva', 'Goncalves', 'Santana', 'Castro', 'Dias', 'Tundra']
        return random.choice(lastnames)

    def sortear_email(self):
        emails = ['gmail', 'outlook', 'hotmail', 'yahoo', 'bing', 'bol', 'uol']
        firstnames = ['Abby', 'Barbara', 'Maicon', 'Milene', 'Robson', 'Jorge', 'Carlos', 'Gustavo']
        lastnames = ['Pereira', 'Bueno', 'Silva', 'Goncalves', 'Santana', 'Castro', 'Dias', 'Tundra']
        nome=random.choice(firstnames)
        sobrenome=random.choice(lastnames)
        email=random.choice(emails)
        email_return = nome+sobrenome+'@'+email+'.com'
        return email_return
    
    def sortear_senha(self):
        tamanho = 10
        valores = string.ascii_lowercase + string.digits
        password = ''
        for i in range(tamanho):
            password += random.choice(valores)
        return password

    def sortear_telefone(self):
        tamanho = 8
        valores = string.digits
        phone = ''
        for i in range(tamanho):
            phone += random.choice(valores)
        return phone

        
