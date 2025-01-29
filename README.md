For all you fans of the Quake and Unreal Tournament series!

Now, git commits and merges get a fresh twist! When you commit, you can hear your favorite exclamations like “Godlike” and “Unstoppable,” and when you merge, you might hear “Impressive.” There are a total of 15 sounds in the library, triggered by different commit counts in a specific project. This repository was created to spice up your daily coding routine and evoke nostalgia for those carefree times spent playing Quake 3 Arena or Unreal Tournament. Now our arena is the IDE!

Essentially, unreal-git-hook is a set of custom Git hooks you can set up for your project. Currently, there are two hooks: post-commit and post-merge. That means whenever you run 'git commit ...' or 'git merge' in the console for a specific project, you’ll hear one of the classic exclamations from your favorite games.

For post-commit, the sound depends on the number of commits:

<li> 1 commit — “First blood”</li>
<li> 2 commits — “Double kill”</li>
<li> 3 commits — “Triple kill”</li>
<li> 4 commits — “Multi kill” </li>
<li> 5 commits — “Ultra kill” </li>
<li> 6 commits — “Killing spree” </li>
<li> 7 commits — “Monster kill” </li>
<li> 8 commits — “Holy sh*t”</li>
<li> 9 commits — “Rampage” </li>
<li> 10 commits — “Dominating” </li>
<li> 11 commits — “Unstoppable” </li>
<li> 12 commits — “Godlike” </li>
<li> For more than 12 commits — “Wicked Sick” </li>
<br>
The commit counter resets every day. A new day = respawn!

For post-merge, you’ll randomly hear either “Impressive” or “Perfect.”

To add the custom unreal-git-hook to your project:
```
git clone https://github.com/dmayboroda/unreal-git-hook.git
cd unreal-git-hook
sh install.sh path/to/your/development/project/
```

To remove unreal-git-hook from your project:
```
sh remove.sh path/to/your/development/project/
```
There’s an idea to add more logic, like if you hit 3 commits in one hour, you get a “Monster Kill” or something similar. I’m really looking forward to hearing your ideas!

“First blood!”

<b>I’d like to apologize in advance to Id Software and Epic Games, but Quake/Unreal Tournament Announcer packs are already freely available all over the internet. I also couldn’t find any license or similar documentation that would allow for use beyond simply downloading the pack. Maybe I shouldn’t have uploaded them to GitHub, but please view it as a tribute and an expression of nostalgia for such wonderful games as Quake 3 and Unreal Tournament. If this causes any concern, I’m willing to take down the repository. Thank you! </b>
