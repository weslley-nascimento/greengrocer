import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/pages/common_widgets/custom_text_field.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  //Máscara para o CPF
  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#' : RegExp(r'[0-9]')}
  );

  //Máscara para o telefone celular
  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#' : RegExp(r'[0-9]')}
  );

  @override
  Widget build(BuildContext context) {
    //Capturar o tamanho da tela
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),

                  //Formulário
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //Nome do usuário
                        const CustomTextField(
                          icon: Icons.person,
                          label: 'Nome Completo',
                        ),

                        //CPF do usuário
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormatter],
                        ),

                        //Celular do usuário
                        CustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [phoneFormatter],
                        ),

                        //Email
                        const CustomTextField(
                          icon: Icons.mail,
                          label: 'Email',
                        ),

                        //Senha
                        const CustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                        ),

                        //Botão criar conta
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              //Botão de voltar a tela anterior
              Positioned(//Altera a margin dos componentes
                left: 10,
                top: 10,
                child: SafeArea(//Cria o IconButton em uma área segura, abaixo do app bar
                  child: IconButton(
                    onPressed: (){
                       Navigator.of(context).pop();//Pop Fecha a tela permanentemente ao contrário do push que empilha
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
