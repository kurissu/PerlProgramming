#!/usr/bin/perl
sub Input
{
	print "Enter the amount tendered: ";
	my $tendered_amount=<STDIN>;
 	chomp($tendered_amount);
	print "Enter the number of items: ";
 	my $num_items=<STDIN>;
 	chomp($num_items);
 	print "Enter the price per item: ";
 	my $price=<STDIN>;
 	chomp($price);
 	my @input_list=($tendered_amount, $num_items,$price);
@input_list;
}
sub Register
{
 	my $tendered_amount=$inputList[0];
 	my $num_items=$inputList[1];
 	my $price=$inputList[2];
 	my $total_due=$num_items*$price;
 	my $change=$tendered_amount-$total_due;
 	printf("Change amount: $change\n");
$change;
}

sub ExactChange
{
	#separate $changeDue into integer part and decimal part	
	printf("\$changeDue=%.5f\n", $changeDue);
	my $x=int($changeDue*100);
	printf("\$x=%.5f\n", $x);
	my $decimal=$x%100;
	print("\$decimal=$decimal\n");
	#my $decimal=int(($changeDue*100)%100);

	my $integer=int($changeDue-($decimal/100));
	print("Bills due: $integer\n");
	print("Coins due: $decimal\n");

	my $hundreds=int($integer/100);
	$integer=$integer%100; #$integer<100

	my $fifties=int($integer/50);
	$integer=$integer%50; #$integer<50

	my $twenties=int($integer/20);
	$integer=$integer%20; #$integer<20

	my $tens=int($integer/10);
	$integer=$integer%10; #integer<10

	my $fives=int($integer/5);
	$integer=$integer%5; #integer<5
	print("-->\$integer=$integer\n");

	my $singles=$integer;

	my $cent=$decimal;
	my $quarters=int($cent/25);
	$cents=$cent%25;
	my $dimes=int($cents/10);
	$cents=$cents%10;
	my $nickels=int($cents/5);
	$cents=$cents%5;
	my $pennies=int($cents);

	my @changelist=($hundreds, 
			$fifties,
			$twenties,
			$tens, 
			$fives,
			$singles,
			$quarters,
			$dimes,
			$nickels,
			$pennies);
return @changelist;
}

sub Printlist
{
	print "Hundred\tFifty\tTwenty\tTen\tFive\tSingle\tQuarter\tDime\tNickel\tPenny\n";
	foreach $stuff (@_)
	{
		printf ("%d\t", $stuff);
	}
print "\n";
}

@inputList=Input();
$changeDue=Register();
@change=ExactChange();
Printlist(@change);
