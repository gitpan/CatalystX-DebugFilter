package TestApp::Controller::Root;
our $VERSION = '0.01';
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

__PACKAGE__->config(namespace => q{});

sub base : Chained('/') PathPart('') CaptureArgs(0) {}

# your actions replace this one
sub main : Chained('base') PathPart('') Args(0) {
    my ($self, $ctx) = @_;
	$ctx->res->headers->header('X-Res-NotSecret-1', 'NotASecret');
	$ctx->res->headers->header('X-Res-Secret-1', 'Secret');
	$ctx->res->headers->header('X-Res-Secret-2', 'Secret');
    $ctx->res->body('<h1>It works</h1>');
}

sub boom :Local {
	die "force error";
}

__PACKAGE__->meta->make_immutable;
