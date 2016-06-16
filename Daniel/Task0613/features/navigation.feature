Feature: Navigation
In order test navigation
As I need to test over UI
I want to open a browser to navigete on it.

	Scenario Outline: open browser
		Given I open the borwser chrome
		When I select I have a "<vehicle>"
			And select "<gender>"
			And click on "<button1>" button
		Then click on "<confirmation1>" button from alert popup
			And click on "<button2>" button
			And click on "<confirmation2>" button from alert popup
	Examples:
    | vehicle  | gender | button1          | confirmation1 | button2          | confirmation2 |
    | Car      | male   | Get Confirmation | Cancel        | Show Me Alert    | Accept        |
    | Car      | male   | Show Me Alert    | Accept        | Get Confirmation | Accept        |
	| Car      | female | Get Confirmation | Cancel        | Show Me Alert    | Accept        |
    | Car      | female | Show Me Alert    | Accept        | Get Confirmation | Accept        |
    | Bike     | male   | Get Confirmation | Cancel        | Show Me Alert    | Accept        |
    | Bike     | male   | Show Me Alert    | Accept        | Get Confirmation | Accept        |
	| Bike     | female | Get Confirmation | Cancel        | Show Me Alert    | Accept        |
    | Bike     | female | Show Me Alert    | Accept        | Get Confirmation | Accept        |
    | Boat     | male   | Get Confirmation | Cancel        | Show Me Alert    | Accept        |
    | Boat     | male   | Show Me Alert    | Accept        | Get Confirmation | Accept        |
	| Boat     | female | Get Confirmation | Cancel        | Show Me Alert    | Accept        |
    | Boat     | female | Show Me Alert    | Accept        | Get Confirmation | Accept        |
