sub
{
    my ($i, $j) = @_;
    sub { [ $i->f(); ] };
}
