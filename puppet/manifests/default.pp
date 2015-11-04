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
    subscribe => [
        Exec["apt-get : update"],
    ],
}

package { 'texlive-latex-extra':
    name            => 'texlive-latex-extra',
    install_options => [
        '--no-install-recommends',
    ],
    subscribe => [
        Exec["apt-get : update"],
    ],
}

package { 'texlive-fonts-recommended':
    name            => 'texlive-fonts-recommended',
    install_options => [
        '--no-install-recommends',
    ],
    subscribe => [
        Exec["apt-get : update"],
    ],
}

package { 'texlive-lang-portuguese':
    name            => 'texlive-lang-portuguese',
    install_options => [
        '--no-install-recommends',
    ],
    subscribe => [
        Exec["apt-get : update"],
    ],
}
