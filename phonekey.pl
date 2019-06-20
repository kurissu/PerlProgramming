#!/usr/bin/perl
#use Switch;
sub Input
{
	my $number;
	print "Enter a phone number, in XXX-XXXX format: ";
	#open (my $fh1, ">", <STDIN>);
	$number=<STDIN>;
	chomp($number);
	print "You entered $number.\n";
return $number;
}
sub LastFour
{
	my $number=$_[0];
	print "In LastFour()... $number\n";
	my ($four)=$number=~/(.{4})$/;
	print "Last 4 digits are $four.\n";
return $four;
}
=begin CHOSTCODE
sub GenerateWords
{
my $mask="1120";
my $word;
my $string=$last_four;
#my $string="4357";
#@letter1=@_[0]; #arg=array of 1st letters
#@letter2=@_[1]; #arg=array of 2nd letters
#@letter3=@_[2]; #arg=array of 3rd letters
print "Printing 1st letter array arg...\n";
#PrintArray(@letter1);
print "Printing 2nd letter array arg...\n";
#PrintArray(@letter2);
print "Printing 3rd letter array arg...\n";
#PrintArray(@letter3);
#these hold each of the last 4 digits
$digit[0]=substr($string, 0, 1);
$digit[1]=substr($string, 1, 1);
$digit[2]=substr($string, 2, 1);
$digit[3]=substr($string, 3, 1);
#these hold which letter to convert to: 1st, 2nd,3rd (which letter per phone pad digit)
$m[0]=substr($mask, 0, 1);
$m[1]=substr($mask, 1, 1);
$m[2]=substr($mask, 2, 1);
$m[3]=substr($mask, 3, 1);
foreach $i (0..3)
{
	print "Digit $digit[$i], mask $m[$i]\n";
	if ($m[$i] eq '0') #1st letter on phone key
	{
		$n=$digit[$i];
		print "\$digit=$n, $letter1[$n]\n";
		$word[$i]=$letter1[$digit[$i]];
		print "$word[$i]\n";
	}
	elsif ($m[$i] eq '1') #2nd letter on phone key
	{
		$n=$digit[$i];
		print "\$digit=$n, $letter2[$n]\n";
		$word[$i]=$letter2[$digit[$i]];
		print "$word[$i]\n";
	}
	elsif ($m[$i] eq '2') #3rd letter on phone key
	{
		$n=$digit[$i];
		print "\$digit=$n, $letter3[$n]\n";
		$word[$i]=$letter3[$digit[$i]];
		print "$word[$i]\n";
	}
}
return @word;
}
sub classify_digit
{
	@letter1=@_[0];
        @letter2=@_[1];
        @letter3=@_[2];
        @letter4=@_[3];

	for($i=0;$i<4;$i++)
	{
		switch ($digit[$i]) { case 1 { my @num1=($letter1[$digit]='',
						   	 $letter2[$digit]='',
						  	 $letter3[$digit]='',
						   	 $letter4[$digit]='');
							 print"@num1"; 
							 return @num1;}
                	              case 2 { my @num2=($letter1[$digit]='A',
                                                         $letter2[$digit]='B', 
                                                         $letter3[$digit]='C',
                                                         $letter4[$digit]=''); 
							 return @num2;} 
                        	      case 3 { my @num3=($letter1[$digit]='D', 
                                                         $letter2[$digit]='E', 
                                                         $letter3[$digit]='F', 
                                                         $letter4[$digit]=''); 
                                                         return @num3;}
                       		      case 4 { my @num4=($letter1[$digit]='G',
							 $letter2[$digit]='H',
                                                         $letter3[$digit]='I',  
                                                         $letter4[$digit]=''); 
                                                         return @num4;}
				      case 5 { my @num5=($letter1[$digit]='J',
							 $letter2[$digit]='K',
             						 $letter3[$digit]='L',
							 $letter4[$digit]=''); 
                                                         return @num5;}
				      case 6 { my @num6=($letter1[$digit]='M',
							 $letter2[$digit]='N',
                                                         $letter3[$digit]='O',
       							 $letter4[$digit]=''); 
                                                        return @num6;}
			 	      case 7 { my @num7=($letter1[$digit]='P',
							 $letter2[$digit]='Q',
                                                         $letter3[$digit]='R',
     							 $letter4[$digit]='S'); 
                                                         return @num7;}
			 	      case 8 { my @num8=($letter1[$digit]='T',
							 $letter2[$digit]='U',
                                                         $letter3[$digit]='V',
							 $letter4[$digit]=''); 
                                                         return @num8;}
			 	      case 9 { my @num9=($letter1[$digit]='W',  
                                                         $letter2[$digit]='X',
                                                         $letter3[$digit]='Y', 
    						  	 $letter4[$digit]='Z'); 
                                                         return @num9;}
			 	      case 0 { my @num0=($letter1[$digit]='+',
					 	         $letter2[$digit]='+',
                                                         $letter3[$digit]='+',
							 $letter4[$digit]='+'); 
                                                         return @num0;}
			 	      else   {print"Wrong input"}	
		      		    }
	}
}
=cut
$phone_number=Input();
$last_four=LastFour($phone_number);

