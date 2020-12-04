Dado('Entrar no site aluno online') do
    visit 'http://online.iesb.br/aonline/logon.asp'
  end
  
  Quando('o aluno informa a matricula {string} e a senha {string}') do |string, string2|
    fill_in 'txtnumero_matricula', with: string
    fill_in 'txtsenha_tac', with: string2
    click_button 'Entrar'    
  end
  
  Então('deve ser redirecionado para pagina do aluno online') do
    visit 'http://online.iesb.br/aonline/main.asp'
  end 