# iOSBootCamp-TipCalculator
iOS Boot Camp Pre-Work: Tip Calculator App

# Pre-work - *TipCalc*

**TipCalc** is a tip calculator application for iOS.

Submitted by: **Puneet Bhagat**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] If user changes the tip percentage which is different from default, then app allows the user to set it as default from within the Tip Calculator view

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/puneetbhagat/iOSBootCamp-TipCalculator/blob/master/TipCalc.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

>> Once you drag-drop the controls and name them, swift creates a delegate for such control. Renaming the delegate within the code started throwing delegate error. Figured out that Swift maintained previous delegate as well as added new delegate for the updated name. Had to delete the old delegate to get it working.
>> I am new to swift, so wasn't sure about the syntax or the functions to use. As always googling for the same helped. 

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
