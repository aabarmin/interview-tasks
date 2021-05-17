# Practical Task: XML Books

## Context

The customer is publishing books in the XML format. Due to the significant size of a book, it's split into fragments. Every fragment is a separate XML file. Linking between fragments is established using XML processing instructions. 

## Task

It's necessary writing the Spring-based application which will download all the fragments of the books and generate tables of contents. Tables of contents should be exposed via REST API. 

## Example

Input file 1 (`book-1.xml`): 

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<content>
    <section>
        <title>The European Languages</title>
        <body>
        The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators.
        </body>
    </section>
    <?content-link file="book-2.xml"?>
</content>
```

Input file 2 (`book-2.xml`):

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<content>
    <section>
        <title>Grammar</title>
        <body>
        To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.
        </body>
    </section>
</content>
```

REST Endpoint `GET /books`:

Headers: 

```
Content-Type: application/json
```

Body:

```json
[
    {
        'type': 'Section',
        'title': 'The European Languages'
    },
    {
        'type': 'Section',
        'title': 'Grammar'
    }
]
```

## Data sources

* [The European Languages](../content/books/european-languages/section-1.xml)
* [Far far away](../content/books/far-far-away/section-1.xml)

## Expectations

* We're expecting this application will be written in the same way you're writing the production code. 
* The code should be published to GitHub/GitLab and should have a manual on how to start it locally. 
* Please have your application up and running in your favourite IDE before the interview session - we'll have a pair-programming session.   

## Code requirements

Make sure the following poins in your implementation: 

* The application has layered architecture - there are controllers, services, data access objects and other layers you need. 
* All the exceptions are properly handled and logged. 
* All the resources are closed properly. 
* Make sure you've considered a corner-case when the whole XML can't be loaded into memory at once. 
* Make sure the code has no side-effects. 