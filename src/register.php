<?php

$errors = [];
$inputs = [];

if (is_user_logged_in()) {
    redirect_to('index.php');
}

if (is_post_request()) {

    $fields = [
        'username' => 'string | required | alphanumeric | between: 3, 25 | unique: users, username',
        'email' => 'email | required | email | unique: users, email',
        'password' => 'string | required | secure',
        'password2' => 'string | required | same: password',
        'agree' => 'string | required'
    ];

    // custom messages
    $messages = [
        'password2' => [
            'required' => 'Veuillez saisir à nouveau le mot de passe',
            'same' => 'Le mot de passe ne correspond pas'
        ],
        'agree' => [
            'required' => 'Vous devez accepter les conditions des services pour vous inscrire'
        ]
    ];

    [$inputs, $errors] = filter($_POST, $fields, $messages);

    if ($errors) {
        redirect_with('register.php', [
            'inputs' => $inputs,
            'errors' => $errors
        ]);
    }

    if (register_user($inputs['email'], $inputs['username'], $inputs['password'])) {
        redirect_with_message(
            'login.php',
            "Votre compte a été créé avec succès. Veuillez vous connecter ici"
        );

    }

} else if (is_get_request()) {
    [$inputs, $errors] = session_flash('inputs', 'errors');
}