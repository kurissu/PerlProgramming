#!/usr/bin/perl

@matrix=('1','2','3','4','5','6','7','8','9');
$player='X';
InitializeBoard(@matrix);
DisplayBoard(\@matrix);
Play();

sub InitializeBoard
{

	my $grid=$_[0];
	for ($i=0; $i<9; $i++)
	{
		$grid[$i]=$_[$i];		
	}

}
=begin
sub UpdateBoard
{
	my $grid=$_[0];
	my $place=$_[1];
	my $char=$_[2];
	$grid[$place-1]=$char;	
}
=cut
sub DisplayBoard
{
	
	system("clear");
	my $grid=$_[0];
	print("+-----------+\n");
	print("| $grid[0] | $grid[1] | $grid[2] |\n");
	print("+---+---+---+\n");
	print("| $grid[3] | $grid[4] | $grid[5] |\n");
	print("+---+---+---+\n");
	print("| $grid[6] | $grid[7] | $grid[8] |\n");
	print("+-----------+\n");
}

sub Input 
{
	print"It's $player turn! Enter the Number according to the field\n";
	$user=<STDIN>;
	chomp($user);
	if ($user == 1)
	{
		if($grid[0] == '1')
		{
			$grid[0]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 2)
	{
		if($grid[1] == '2')
		{
			$grid[1]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 3)
	{
		if($grid[2] == '3')
		{
			$grid[2]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 4)
	{
		if($grid[3] == '4')
		{
			$grid[3]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 5)
	{
		if($grid[4] == '5')
		{
			$grid[4]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 6)
	{
		if($grid[5] == '6')
		{
			$grid[5]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 7)
	{
		if($grid[6] == '7')
		{
			$grid[6]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 8)
	{
		if($grid[7] == '8')
		{
			$grid[7]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
	elsif ($user == 9)
	{
		if($grid[8] == '9')
		{
			$grid[8]=$player;
		}else{
			print"Field is already taken you blind bat!\n";
			Input();
		}
	}
}

sub TogglePlayer
{
	if($player eq 'X')
	{
		$player = 'O';
	}
	else{
	$player = 'X';
	}
}
=begin
sub GamePlay
{
	my $victory=0;
	my $j=0;
	while ($victory==0 || $j <= 8 )
	{
		@move=Turn();
		#updates $victory status
		print("-->\$move[1]=$move[1]\n");
		UpdateBoard(\@matrix, $move[0], $move[1]);
		DisplayBoard(\@matrix);
		$j++;
		#$victory=Victory($move[1]);
	}
}
=cut
sub Play
{
	$count = 0;
	while(1)
	{
		$count++;
		Input();
		DisplayBoard(\@matrix);
		if(Victory() eq 'X')
		{
			print"X is the Winner!\n";
			return 0;
		}
		elsif(Victory() eq 'O')
		{
			print"O is the Winner!\n";
			return 0;
		}
		elsif(Victory() eq '/' && $count == 9)
		{
			print"Stalemate, Mate!\n";
			return 0;
		}
		TogglePlayer();	
	}
}
sub Victory
{
	#HORIZONTAL AND LEFT TO RIGHT CROSS
	if(@grid[0] eq 'X' && @grid[1] eq 'X' && @grid[2] eq 'X')
	{
	return 'X';
	}
	if(@grid[3] eq 'X' && @grid[4] eq 'X' && @grid[5] eq 'X')
	{
	return 'X';
	}
	if(@grid[6] eq 'X' && @grid[7] eq 'X' && @grid[8] eq 'X')
	{
	return 'X';
	}
	if(@grid[0] eq 'X' && @grid[4] eq 'X' && @grid[8] eq 'X')
	{
	return 'X';
	}
	#VERTICAL AND RIGHT TO LEFT CROSS	
	if(@grid[0] eq 'X' && @grid[3] eq 'X' && @grid[6] eq 'X')
	{
	return 'X';
	}
	if(@grid[1] eq 'X' && @grid[4] eq 'X' && @grid[7] eq 'X')
	{
	return 'X';
	}
	if(@grid[2] eq 'X' && @grid[5] eq 'X' && @grid[8] eq 'X')
	{
	return 'X';
	}
	if(@grid[2] eq 'X' && @grid[4] eq 'X' && @grid[6] eq 'X')
	{
	return 'X';
	}
	
	#HORIZONTAL AND LEFT TO RIGHT CROSS
	if(@grid[0] eq 'O' && @grid[1] eq 'O' && @grid[2] eq 'O')
	{
	return 'O';
	}
	if(@grid[3] eq 'O' && @grid[4] eq 'O' && @grid[5] eq 'O')
	{
	return 'O';
	}
	if(@grid[6] eq 'O' && @grid[7] eq 'O' && @grid[8] eq 'O')
	{
	return 'O';
	}
	if(@grid[0] eq 'O' && @grid[4] eq 'O' && @grid[8] eq 'O')
	{
	return 'O';
	}
	#VERTICAL AND RIGHT TO LEFT CROSS	
	if(@grid[0] eq 'O' && @grid[3] eq 'O' && @grid[6] eq 'O')
	{
	return 'O';
	}
	if(@grid[1] eq 'O' && @grid[4] eq 'O' && @grid[7] eq 'O')
	{
	return 'O';
	}
	if(@grid[2] eq 'O' && @grid[5] eq 'O' && @grid[8] eq 'O')
	{
	return 'O';
	}
	if(@grid[2] eq 'O' && @grid[4] eq 'O' && @grid[6] eq 'O')
	{
	return 'O';
	}
	else{
	return '/';
	}
}

sub PrintGrid
{
	my $grid=$_[0];
	for ($i=0; $i<9; $i++)
	{
		print("$grid[$i]");		
		if ($i%3 eq 0)
		{
			print("\n");
		}
	}
}
