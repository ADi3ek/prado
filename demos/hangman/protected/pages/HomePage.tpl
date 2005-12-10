<%@ MasterClass="Pages.Layout" Title="Prado Hangman Game" %>
<com:TContent ID="body" >
<com:TForm>
<h1>Prado Hangman Game</h1>

<com:TPanel ID="IntroPanel">
<p>This is the game of Hangman. You must guess a word, a letter at a time.
If you make too many mistakes, you lose the game!</p>
<com:TRadioButton ID="EasyLevel" GroupName="level" Text="Easy game; you are allowed 10 misses." /><br/>
<com:TRadioButton ID="MediumLevel" GroupName="level" Text="Medium game; you are allowed 5 misses." /><br/>
<com:TRadioButton ID="HardLevel" GroupName="level" Text="Hard game; you are only allowed 3 misses." /><br/>
<com:TButton Text="Play!" Click="selectLevel" />
<com:TLabel ID="LevelError" Text="You must choose a difficulty level!" ForeColor="red" Visible="false" />
</com:TPanel>

<com:TPanel ID="GuessPanel" Visible="false">
<h2>Please make a guess</h2>
<h3 style="letter-spacing: 4px;"><%= $this->Page->GuessWord %></h3>
<p>You have made <%=$this->Page->Misses %> bad guesses
out of a maximum of <%= $this->Page->Level %>.</p>
<p>Guess:
<com:TLinkButton ID="GuessA" Text="A" Click="guessWord" />
<com:TLinkButton ID="GuessB" Text="B" Click="guessWord" />
<com:TLinkButton ID="GuessC" Text="C" Click="guessWord" />
<com:TLinkButton ID="GuessD" Text="D" Click="guessWord" />
<com:TLinkButton ID="GuessE" Text="E" Click="guessWord" />
<com:TLinkButton ID="GuessF" Text="F" Click="guessWord" />
<com:TLinkButton ID="GuessG" Text="G" Click="guessWord" />
<com:TLinkButton ID="GuessH" Text="H" Click="guessWord" />
<com:TLinkButton ID="GuessI" Text="I" Click="guessWord" />
<com:TLinkButton ID="GuessJ" Text="J" Click="guessWord" />
<com:TLinkButton ID="GuessK" Text="K" Click="guessWord" />
<com:TLinkButton ID="GuessL" Text="L" Click="guessWord" />
<com:TLinkButton ID="GuessM" Text="M" Click="guessWord" />
<com:TLinkButton ID="GuessN" Text="N" Click="guessWord" />
<com:TLinkButton ID="GuessO" Text="O" Click="guessWord" />
<com:TLinkButton ID="GuessP" Text="P" Click="guessWord" />
<com:TLinkButton ID="GuessQ" Text="Q" Click="guessWord" />
<com:TLinkButton ID="GuessR" Text="R" Click="guessWord" />
<com:TLinkButton ID="GuessS" Text="S" Click="guessWord" />
<com:TLinkButton ID="GuessT" Text="T" Click="guessWord" />
<com:TLinkButton ID="GuessU" Text="U" Click="guessWord" />
<com:TLinkButton ID="GuessV" Text="V" Click="guessWord" />
<com:TLinkButton ID="GuessW" Text="W" Click="guessWord" />
<com:TLinkButton ID="GuessX" Text="X" Click="guessWord" />
<com:TLinkButton ID="GuessY" Text="Y" Click="guessWord" />
<com:TLinkButton ID="GuessZ" Text="Z" Click="guessWord" />
</p>
<p><com:TLinkButton Text="Give up?" Click="giveUp" /></p>
</com:TPanel>

<com:TPanel ID="WinPanel" Visible="false">
<h2>You Win!</h2>
<p>The word was: <%= $this->Page->Word %>.</p>
<p><com:TLinkButton Text="Start Again" Click="startAgain" /></p>
</com:TPanel>

<com:TPanel ID="LosePanel" Visible="false">
<h2>You Lose!</h2>
<p>The word was: <%= $this->Page->Word %>.</p>
<p><com:TLinkButton Text="Start Again" Click="startAgain" /></p>
</com:TPanel>
</com:TForm>
</com:TContent>