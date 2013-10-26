use strict;
use warnings;

package Object;

sub new
{
    my $class = shift;
    my $self = {};
    bless $self, $class;
    $self->_init(@_);
    return $self;
}

package Son;

our @ISA = qw(Object);

sub _init
{
    my $self = shift;
    my $args = shift;
    $self->{'n'} = delete($args->{n}) or
        die "n not specified";

    return 0;
}

package GrandSon;

our @ISA = qw(Son);

sub _init
{
    my $self = shift;
    my $args = shift;
    $self->SUPER::_init($args);
    $self->{'mystring'} = delete($args->{'mystring'}) or
        die "mystring not specified";
    return 0;
}

package main;

my $obj =
    GrandSon->new(
        {
            '
