#!/usr/bin/perl

=begin
sub Guess
{
	my $test=$_[0];
	my $result=0;

	if ($word=~m/($test)+/)
	{
		$result=1;
	}else{
		$result=0;
	}
return $result;
}
=cut
sub InputSubstitution
{
	my $count=length($word);
	my $guessed=$word;
	my $result=0;
	print "$guessed";	
	while($guessed =~ /[^ |*]/)
	{
		print"Guess the Letters you have chance __ left!\n";
		my $user = <STDIN>;
		chomp($user);
		$guessed =~ s/$user/_/g;
		for($i=0; $i<$count; $i++)
		{
		if (substr($guessed, $i, 1) eq "_")
			{
				print substr($word, $i, 1);
				$result=1;
			}else{
				print " _ " unless (substr($word, $i, 1) eq " ");
				print "  " if (substr($word, $i, 1) eq " ");
			}
		}
	print"\n";
	}
return $result;
}
sub InitializeBoard
{
	my $count=length($word);
	
	my $char= "_ ";
	for($i=0; $i<$count; $i++)
	{
		$line[$i]=$char;
		print"$line[$i]";
	}
	print"\n";
}
sub DisplayMan
{
	my $check=$_[0];
	my $count = 0;
	DisplayMan0();
	while($count == 6)
	{	
		if($check == 0)
		{
			DisplayMan1();
			$count++;
		}
		elsif($check == 0 && $count == 1)
		{
			DisplayMan2();
			$count++;
		}
		elsif($check == 0 && $count == 2)
		{
			DisplayMan3();
			$count++;
		}
		elsif($check == 0 && $count == 3)
		{
			DisplayMan4();
			$count++;
		}
		elsif($check == 0 && $count == 4)
	 	{
			DisplayMan5();
			$count++;
		}
		elsif($check == 0 && $count == 5)
		{
			DisplayMan6();
			$count++;
		}	
	}
}

sub Play
{
	while(1)
	{
		InputSubstitution();
		Guess($user);
	}
}
sub DisplayMan0 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
}

sub DisplayMan1 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|     o\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
}

sub DisplayMan2 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|     o\n"  ;
	print  "|    /\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
}

sub DisplayMan3 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|     o\n"  ;
	print  "|    /X\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
}

sub DisplayMan4 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|     o\n"  ;
	print  "|    /X\\\n"  ;
	print  "|\n"  ;
	print  "|\n"  ;
}

sub DisplayMan5 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|     o\n"  ;
	print  "|    /X\\\n"  ;
	print  "|    /\n"  ;
	print  "|\n"  ;
}

sub DisplayMan6 {
	print  "_______\n"  ;
	print  "|     |\n"  ;
	print  "|     o\n"  ;
	print  "|    /X\\\n"  ;
	print  "|    / \\\n"  ;
	print  "|\n"  ;
}

=begin
sub UpdateBoard
{
	my $letter=Guess;
	$is_correct=Guess($letter);
	if($is_correct eq 1)
	{
		@locations=FindLocations($letter);
	}
return @locations;
}	

sub FindLocation
{
	my $letter=$_[0];
	my @locations
	while ($word=~/$letter/g)
	{
		push(@locations, [$-[0], $+[0]);
		my @location
	}
	PrintArray(@locations);
return @locations;
}

sub PrintArray
{
	my @list=@_;
	foreach $var (@list)
	{
		print"$var\n";
	}
}
=cut
#$word="supercalifraglisticexpialidocious";
$word= "banana";
DisplayMan($result);
InitializeBoard();
#Play();
$test=InputSubstitution();
print"$test";
