use strict; use warnings; use Test::More;
use_ok('Samizdat::Model::Mailer');
use_ok('Samizdat::Controller::Mailer');
use_ok('Samizdat::Plugin::Mailer');
use File::Spec;
my ($d) = grep { -d } map { File::Spec->catdir($_, 'Samizdat','resources') } @INC;
ok($d && -d File::Spec->catdir($d,'templates','mailer'), 'mailer templates ship');
ok($d && -f File::Spec->catfile($d,'migrations','pg','40-mailer','1','up.sql'), 'mailer migration ships');
done_testing;
