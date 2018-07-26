class user {
    group { 'sysadmin':
        ensure => 'present'
        gid    => '1002',

    }

    User {
	gid => '1002',
    }

    user { 'alegge':
        ensure  => present,
        home    => '/home/alegge',
        managehome => true
    }
    ssh_authorized_key { 'alegge_ssh':
        user => 'alegge',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCslRM6iX4tMbm7d0XC9JPjRmzvTC+pigHzEeNjzG/K+JER8tXkc1c8uYzU7vylfdmsQckpuit7TujhDHdDDqV9TaB90vcgBBG8l3szlsEuYtd8DQ+5Uk5SzMDrNMoE62IuU4kij8Pg/cbDbmYTO6Fk03FZsbU2i9zoPQwmdx9BPrcZjJMmJUKkQ8AXRzodO5QECVekmtSMNB4t9TxOYUQdZuNdTu+1Mit8gkUoam9MQC4KvgmisHh8EqhegiT/+HQNvi5zns9s6P5b5DWIoA+ez1uL0mjd2i1heLL+72B2qLcBsNahVWzA6oEw647etMdhLF0Nkp+R5Wt1QptjRxLt',
    }

    user { 'alajaji':
        ensure  => present,
        home    => '/home/alajaji',
        managehome => true
    }
    ssh_authorized_key { 'alajaji_ssh':
        user => 'alajaji',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCoNYkzhe18rzeQQeBpiATFYhHpZttgypAJU4Zn0iCqO5uOtZVus4wTn6O2sDX1a+QiKO3qjywoIodjSPSxotKzxA89d9qOpcrAgM4TgC6nYTMCVRUXzzQGzky1YwE1Y1QZqf38OUoGrBBFL/uj5YfWOMYwQJvf756VgdGTuT5YYP3DyjI3mPz1vtwMoram+1PvFKpLdJ+zQdiZ1PtzD26GsT4V6IyPnu5NpHv5AveSfkiGwPYuIXno4krSVRTcElcxALXLUOFX/4uWwtLRC/+gj86zf2Hu9EHJHLoI+H6nUqboP8JjHmG7ea5vlPOBsivhIrjAJjqRIQ5wtT3axOxD',
    }
    
    user { 'ashears':
        ensure  => present,
        home    => '/home/ashears',
        managehome => true
    }
    ssh_authorized_key { 'ashears_ssh':
        user => 'ashears',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCS3/p12kyu5NX33GmzGRScz6iNbeOAw3ipgXH2hMEVNNWjzwM+kTU2J8iEZs2haLnxIHBjU1uGMcC3zH7VZjK4ZVy+Nn8SWoCrqRupo3LMVHtd3Feh6Ke/cQuGRdpYdaCx8KHzaTKFLaeKJdXnCmEzIwhsfhGwitdECgt6VNpWNdGtiG95z2260sZsG74+BQPkAQzjVJ6ijWCkm+ir0pxU3UcyuSq5hKJNDO576mrA0QRSpFdxTzfr7o2Ab8Qa2erqQdx70IbN50EwejnlC2XvxMnK/mEbZCkzHcrOxAwjXsKpegSwP/otKYmGmIJ2HIodMrtJda8UAToPPS8DT1T/',
    }

    user { 'aarcher':
        ensure  => present,
        home    => '/home/aarcher',
        managehome => true
    }
    ssh_authorized_key { 'aarcher_ssh':
        user => 'aarcher',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBatloSF8sB+cS57YArAKprnGgqqJmV6KK7u83Wjg8/9/gbDbX3MWd9s78bIdak0LlpJPMlI22dachKaY5a1TKyhyWWOcI++SE5kMods419R/Z4t1jfj/J0PTMHLfbSEXyE9pfG+nqNfR/DRuUS1mKl79hAhpVIPEoCLGvT9wr6MaiJxP0NJeRj7mhhuBgM2FpHgnzLG87ZFcldJQgp3xnc5/tmP9gH83uQARxODYHTzaOdfzU+LkaLd8rr9v0vtR2z8CcXNaTrwHz7M5tOLeHoSz+BMUbi31Asc0OpnPjSDLVi41gN/puLVLum5QpmF3ndgfC7wdfuHlU4M2gETZF',
    }

	user { 'crestonw':
        ensure  => present,
        home    => '/home/crestonw',
        managehome => true
    }
    ssh_authorized_key { 'crestonw_ssh':
        user => 'crestonw',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCsKvx2vaiCHFr51hHOcav1y1GDMNQfVvFRV+pJ0aRplnd/lqlOigK3jchNJyh92fe9sgwL8xqCyo2LxWbsNP0Hu3GasRu4MUFF9l4H4HpTDhp6GHfCpeTQgkQsqqLk7UCU7EL/XDEaQnIJNxw8ITzFRxxtezWzNv5xBABx3c9TTGTyw1JgI+EVGvT7rTNyaSidltbgB9tD58ubgXj9TNQlqs/1N0C2RVVEEJblzezSnrps2rLJP5Tj+VfGTlniJrzRRt7v89MLV8Cen0kawOFIznZYxOcAVSV1Zhrob0DWFf7NRUDml9DPlyBNUas6//z00FMRd/W4xBbmn0z8okV/',
    }
    
    user { 'vohoanvu':
        ensure  => present,
        home    => '/home/vohoanvu',
        managehome => true
    }
    ssh_authorized_key { 'vohoanvu_ssh':
        user => 'vohoanvu',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCLEzMHLXllTFyMDAsc2ad4fg9AFIPS62y43YQtx2JrF/EktaxciY1j+8H1wLA1EBDE8+1KapPiHXBFU/XenDEyYwGWwiVpuMtPv7ceHmLDW86uM64TO2rVGxGIJBb/qxLLqYoiJMKNX6hTP43ENBKeampArGYQuDRnOpF7LB9BN5qSqGDi821zrdBwHtZACksAKVx0cOU6coIsXkUmx1QGz/nqActZVKjW7MsSdSWc+rtduLz8tehqIw14psDaQAiqivElwvubhatkGP19WsBJPjelc5fWOqZvgToKEyecxXygDqOGej/bRWy+AyROlZpjjtMD7oXgi6XDD4jlDqtz',
    }

	user { 'alonzoCIS399':
        ensure  => present,
        home    => '/home/alonzoCIS399',
        managehome => true
    }
    ssh_authorized_key { 'alonzoCIS399_ssh':
        user => 'alonzoCIS399',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCia0XRNoD0AJA8SsJD494EDxNT43WnmbeOOPJ2JK91X6wOD8PA0kykl6T5a9zahUa163sXT9i99YPQl+ADH0Ls3GiQiaguYkR3hjb++DLTtRvTAb06rwoKH+YmXfFFtQ3kEPgZS2b1HZryxTtfOhdT/CZtX9k7QmkVy2cJw0zAWB7NTGS/baD6HADT0ImOkpIwrziSLsWi0WCXvd7PgytLdio3Q9/+07d0QByUBChH74LINM2A7ETH8MYlZ+HdJPXlN82tmzNLKLcJSqkh2QSQijg/CJOh/cS2p358d3C60ki7SwbaSCH5WJ67iDueMMHy5bkoyvSu/hHwOWXtc3+P',
    }
    
	user { 'ktb11':
        ensure  => present,
        home    => '/home/ktb11',
        managehome => true
    }
    ssh_authorized_key { 'ktb11_ssh':
        user => 'ktb11',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDf7RQkBsw2LDCjt6YzBTriNiNoN/7BJFs+OQJaGlD+eStkvdfaOopyU+t/DRQW78crmCkiytdYAGfr78XSrEodMhM4F08E1UJKU/ZLWWXVFdPXR9/xM5kkljnXqq5u6vVeKz+ZoLu8shXEuWeldOcwW0X161lr1CP1jgHJjBeexZKI6IKPzVzEDuExlb0djfdZpf2hRNUqRM85EW/qoG1E8QVtDyfVEn27/0ga9bGFA4YqkO8+6+jyYLjTIVM5t5+xGSKm6T/b07HbIhSAFAY7eoUETmJaBlX8zDSBl8Axab0izz3ewiGZ9rQ6sPr/ndrh8IJS0PErrTqenUUJ26pZ',
    }
    
	user { 'mhagel2':
        ensure  => present,
        home    => '/home/mhagel2',
        managehome => true
    }
    ssh_authorized_key { 'mhagel2_ssh':
        user => 'mhagel2',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCG/I+lP6rI9lW7izZA8L3CLiUXTslo388L5PjzqjNpbCnf+BAGeAmjJk3cj6i6ykduo9+BxP6gUs1fnqwnrIY26nuAu3u048KAkKJUamztx9f///v33f/JJ8UP7P3q9F6YXJDxyChci1VTdS0ngJB1N4XYrosGN/ObZ3UtH9X1ZMa4mEaPMyB5WpxTU05tqoIgcrqY6r5T2LDmdRjAta+teDILyBMW5sj+6li6xPvP6osTV3S7zGYeGsd1FsZV70jBG/jrQokyaW3APLv810lpYZxUM5UWmPdVqRXwYvojJzO/MEqsIm5BUrTVk4iUikZEmUh2InSVUJnx2rWAMeSd',
    } 

	user { 'jbeder1':
        ensure  => present,
        home    => '/home/jbeder1',
        managehome => true
    }
    ssh_authorized_key { 'jbeder1':
        user => 'jbeder1',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCuF28jGQmORR9glokZpzfVoiEIendtnXAsfnoPlfHRnZw4PPAm7jDZ80YLHqeL9FpfBmahFjZPF6zG0ovPK+DOLTYCZQk4pSVE06iLR16128WTFXQ7+u+qWJ/XOYsN0KvsGcayL1ouRnExaPcuU6mYIPiFy6hOxM0HBrFs1KJs51CTfrO7962blI9ZpLD4RjJBsITr9OA9OrbwWO0CK5zngzn941ziZDDctHvbWYa4XbrNYLOuk0zODC5tGIqs/NLotFmqfDuk+p8DX8DBJzm2REuz8rKACuDH16cGC9UZgPEupJ1SAG1TXTSDAPNTHltfwlMFqpPy8n8bBhvQzlab',
    }
    
    user { 'dbeeman':
        ensure  => present,
        home    => '/home/dbeeman',
        managehome => true
    }
    ssh_authorized_key { 'dbeeman':
        user => 'dbeeman',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/f9djNaNHltVSnoLuGu+4eaGmchtdG28ZVZPFSmvCC5f03iQ6HRQy2HYPDRpPMQFbRp689jv477nEKJYD7BpWlgE6wMGMMChIUujDhjEhvbiKTLb34pFdoKAJQA6mSkiiRAz0x4Gf9n1EHvVRp/vTjfd8idcFh/+G9Pk6CFVzF6vDjk3bxzfMmUWCKBAl+g+YZFZrsc/L/1FrdHDAOVxUlVgrfMyd+7YHPVQhCnjSotxtt7f/DbOsx8/zS/seTtGgfaGSSPQODKael3n3P5LefBOgtKzBNk5TZfOq7sC9xCEqdQ70y+AziFmPqSCMPd/AnC+gKxE25GxPtxyD5Dkp',   
    }
    
    user { 'injoker':
        ensure  => present,
        home    => '/home/injoker',
        managehome => true
    }
    ssh_authorized_key { 'injokerCIS399':
        user => 'injoker',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCbdoZIN0kuw7SZd428Ibv0fsrmijw3lXun+AYQgvcfGhwHNO/fRgGS1LeaEfcIhzJQ/86r2OOMpO0C9w9vnkXSPbspFGofzQu2nH5w7a12i91d47FLd6wVbT9FQYJC+IbYVl1Xw3S9KUsMwgA9ovLfy00ejRWPf2sH/DjCNWCKbXWn7s9B4EWGeClIfrs0FCP+YZ3RsZfahn/oB1FT9dNqHrHaKNjd2TlDWu3oBVJJEUNPZml8gnD/tOhFaJbdZdTU+qNtFHv+AlXrhixhvax0UG2Y/c22ofWOyxeqYS8xgoQRpugkBIGaILkAa0IzB7BzhlfU0QYCOnR1K7D9QAqj',    
    }
    
    user { 'mantail':
        ensure  => present,
        home    => '/home/mantail',
        managehome => true
    }
    ssh_authorized_key { 'mntnttil':
        user => 'mantail',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9BuBjjJyPbszba4CItoNN8D7OqYY9qhPK+r4givMcs9mam544FvC4pIvRGr++emaPRlGUo/VJgPzm5l/m6XCrkLTfJZbPozHGdE27rgPY1dfZav+1TMahVo4pFs9O3AqQ8At92PkgxzdgorreCC9bLqFm4gEFIk2liWYynKATxKXyqBA4pZ9WT4tjo4XDkuHMQ+DfWcYWwMeIu/TqMJcLAKQZEznQ0RExwfX7NNK1PASp621ocekShbQ09ui3dCWFzT081mZwy/f3ejHFGKmPNdRsHsb4epkW8TFZVSB7/k+gETFbvdcLFW11VJwpHLMMCUYOAxbO0qOundqIxxk/',  
    }

    user { 'stevev':
        ensure  => present,
        home    => '/home/stevev',
        managehome => true
    }
    ssh_authorized_key { 'stevev@hexadecimal':
        user => 'stevev',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDN0n7TZj/XUCs4ywvPLHfAFTHHkzFbxTW5GuHXMWIyrb7M84ySFSswd2n45Kh2IQey7sd97V0dj/EENKvy+5FCyyTTLWmnTXzTLMeb5qpV6Xful5vt6KjHd41ZAT2pKoK+yAjcTDRdMFq0QYDUEFug8ETv1/wPsJPgCLAlp0kJWJq8Q7AqmdCs+NilLvKKZUu62AMWNdNwDDBHCKgtn8TzgsEIxOgFgrrAXz+UdW5z4DLcmGx7wkdAAM0Q18ohC6L0WayiceGHuC/vHfHNklHOWoBF5L8YWRdGKEN40LMiu//31uuXrmV3ZrudbyhsRcWXr5dukbqD43PpsBzIOo3080FyZJWeLOpbE/6VsrNNlOtroKnuO+mIWOVsBQCH5R3UPwwxTtf8yyO7GvNm2HjRBgGLGXql3RhqIpTEVUfzXqadX+b/v8ChuBjYtegr2CWhs85qGj/2gNanZjfE8NJVa8OymuiQi5boRGsoDKXY1F7hnaZNL4CYyW1yAp44evDyohp/E9+YY3I/RdUfZ/apelHIVNXL4bx25oPUT7/jqqJi3RcyDQugZLH55QWiE1NkFqJqwTif6b6hcsdhIlVuNhzuXKneTm74PCQ13Ui1nY9mx00wjnG6bXiHLy1mKXshl7i8LX9aK7hAzTeSWPnKJpJ2+UeLrywEp3FKsRbt1Q==',    
    }    	
} 