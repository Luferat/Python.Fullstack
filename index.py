from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/')
def home():
    params = {
        "title": "Página inicial",
        "css": "home.css",
        "js": "home.js"
    }
    return render_template('home.html', params=params)


@app.route('/contatos', methods=['GET', 'POST'])
def contacts():

    params = {
        "title": "Faça contato",
        "css": "contacts.css",
        "js": "contacts.js"
    }

    if request.method == 'POST':
        form_data = dict(request.form)
        print(form_data)

        success = True

        if (success):
            # Exemplo de feedback em caso de sucesso.
            params['status'] = 'success'
            params['message'] = f'''
                <h3>Olá {form_data.get('name').split()[0]}!</h3>
                <p>Seu contato foi enviado com sucesso!<p>
                <p><em>Obrigado...</em></p>
            '''
        else:
            # Exemplo de feedback em caso de falha.
            params['status'] = 'fail'
            params['message'] = f'''
                <h3>Oooops!</h3>
                <p>Ocorreu uma falha ao salvar seu contato! Por favor, tente mais tarde.</p>
                <p><em>Obrigado...</em></p>
            '''

    return render_template('contacts.html', params=params)


@app.route('/sobre')
def about():
    params = {
        "title": "Sobre...",
        "css": "about.css",
        "js": "about.js"
    }
    return render_template('about.html', params=params)

@app.route('/privacidade')
def privacy():
    params = {
        "title": "Políticas de Privacidade",
        "css": "privacy.css",
        "js": "privacy.js"
    }
    return render_template('privacy.html', params=params)

@app.errorhandler(404)
def page_not_found(e):
    params = {
        "title": "Erro 404",
        "css": "404.css",
        "js": "404.js"
    }
    return render_template('404.html', params=params), 404


if __name__ == '__main__':
    app.run(debug=True)
