exec { 'apt-get : update':
    path        => ['/usr/bin', '/usr/sbin', '/bin'],
    command     => 'apt-get update',
    refreshonly => false,
}

package { 'texlive-latex-base':
    name            => 'texlive-latex-base',
    install_options => [
        '--no-install-recommends',
    ],
}
