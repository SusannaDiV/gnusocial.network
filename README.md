# About
This is a static and responsive GNU social landing page made with Hugo. It offers both a news and a documentation section, content translation and string localization.  
Changes to this site should be submitted as a pull request to this repository.

# Getting Started
In order to build this project locally it is first necessary to have Hugo installed (please follow [Hugo's](https://gohugo.io/getting-started/quick-start/) official guidelines to do so).   
To build:
<code>hugo</code>  
To develop:
<code>hugo server</code>  
To add a news post:
<code>hugo new --kind news news/file.md</code>    
To add a documentation post:
<code>hugo new --kind docs docs/file.md</code>  

# Features
<ul>
	<li> Responsive design: optimized both for mobile & desktop
	</li>
	<li> News section: organized by date in ascending order; the first 4 will be displayed on the landing page for better reaching
	</li>
	<li> i18n: thanks to Hugo's content directory managment, translation for each news/docs page in multilingual-specific directories will be linked automatically
	</li>
	<li> Related News: at the end of each news post, links to other news with at least a common tag will be displayed  
	</li>
	<li> Meta data for all news posts: post data including links to category and tags, author and word count
	</li>
	<li> Paginated list: simple list pagination with page indicators
	</li>
</ul>
