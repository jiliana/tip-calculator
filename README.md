# Pre-work - *Tip Calculator*

**Top Calculator** is a tip calculator application for iOS.

Submitted by: **Jiliana Tiu**

Time spent: **30** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Settings screen where user can choose tip percentages

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/d4RMxAx.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
![](https://i.imgur.com/d4RMxAx.gif)

GIF created with [Kap](http://www.getkap.co/).

## Notes

**Settings screen**
Implementing the settings screen was difficult because i had a bug where the new Total Bill value did not refresh in the home screen after changing the tip values.
To fix this issue, I played around with UserDefaults and when the view loaded, I reset the values of the tips and ran through the calculation function. 
By reloading the values and running the calculation function again, the Total Bill value will use the new tip percentage values.
This fixed the bug. Now the Total Bill value shows the true current value using the correct tip percentages.

**Keyboard & Layout**
After developing the basic structure, I took a lot of time designing the app to create a fresh, artistic feel. 
When I implemented the permanent keyboard, I had to change the layout so that the total bill can be seen under the keyboard.


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
