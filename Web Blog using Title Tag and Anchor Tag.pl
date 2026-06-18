blog_title('My First Web Blog').

blog_heading('Welcome to My Web Blog').

blog_paragraph('This is a simple blog created to demonstrate title tag, anchor tag, heading tag and paragraph tag.').

blog_topic('Artificial Intelligence').

anchor_tag('Artificial Intelligence', 'https://en.wikipedia.org/wiki/Artificial_intelligence').

anchor_tag('Google', 'https://www.google.com').

display_blog :-
    blog_title(Title),
    blog_heading(Heading),
    blog_paragraph(Paragraph),
    blog_topic(Topic),

    write('===== WEB BLOG ====='), nl,
    write('Title Tag: '), write(Title), nl,
    write('Heading Tag: '), write(Heading), nl,
    write('Blog Topic: '), write(Topic), nl,
    write('Paragraph Tag: '), write(Paragraph), nl,
    nl,
    write('Anchor Tags:'), nl,
    display_links.

display_links :-
    anchor_tag(Name, Link),
    write(Name),
    write(' -> '),
    write(Link),
    nl,
    fail.

display_links.