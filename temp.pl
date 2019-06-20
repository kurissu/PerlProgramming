#!/usr/bin/perl
@temperatures=Input();
Output(@temperatures);
test(@temperatures);
sub Input
{
	my @c;
	my $c=-10;
	foreach (1..12)
	{
		push(@c, $c);
		$c=$c+10;
	}
PrintList(@c);
return(@c);
}
sub PrintList
{
	foreach $num (@_)
 	{
	 	print("$num\n");
	}
}
sub Output
{
	my $filename='temperatures.txt';
	open(my $fh, '>', $filename) or die "Could not open
	file '$filename' $!";
	print $fh "|\t Celsius \t|\t Fahrenheit \t|\n";
        foreach $num(@_)
        {
        	my $f = ((9/5)*$num)+32;
        	print $fh "|\t $num °C\t \t|\t $f °F\t\t|\n";
        }
  

close $fh;
print "Done\n";
}
sub test
{
          print "|\t Celsius \t|\t Fahrenheit \t|\n";
          foreach $num(@_)
          {       
                 my $f = ((9/5)*$num)+32;
                 print "|\t $num °C\t \t|\t $f °F\t\t|\n";
          }

}
