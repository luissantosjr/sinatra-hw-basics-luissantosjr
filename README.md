# Sinatra HW 2 - Basics


## Instructions


1. Clone.
2. Navigate to directory in command line
3. Run tests with: `rspec spec/part1_spec.rb`




## Curriculum for Sinatra Applications

1. Make basic applications that perform basic tasks like arithmetic and return the result.

2. Make applications that use conditional logic (if statements) to perform basic tasks and return results.

3. Make applications that can display the contents of arrays

4. Make applications that can display objects from a database

5. Make applications that can Create, Read, Update, and Destroy items from a database

6. Make applications that require users to login

   1. Storing which user made a piece of data. Imagine a blog application, a post should store which user uploaded the post
   2. Displaying posts that belong to a certain user

7. Billing - Make users buy before they can make an account.

   ​

## Homework Goals

Your goal is to make basic CS 1 type applications that can be interacted with over the internet. This maps to items 1 and 2 in the curriculum above.



### <u>Multiply</u>

**High-Level Idea:** Make an application that can multiply together two integers and return the result over a web browser.

CS 1 Version: The CS 1 version of this is to make a function that can multiply together two integers and return the result.

```ruby
#CS 1 Version
def multiply(x,y)
  return x * y
end
```

Your task: Make a Sinatra application that responds to GET requests to the `/multiply` url. Assume you are given `x` and `y` as *parameters*. Your job is to multiply the integer values of `x` and `y` and return the product to web browser.

Navigating to `localhost:4567/multiply?x=4&y=8` should result in `32` being shown in the web browser.



#### <u>Float Multiply</u>

**High-Level Idea:** Make an application that can multiply together two floating point numbers and return the result over a web browser.

Navigating to `localhost:4567/multiply?x=0.5&y=8.2` should result in `4.1` being shown in the web browser.



### <u>Product</u>

**High-Level Idea:** Make an application that can multiply all the numbers in a certain range together and return the result.

Navigating to `localhost:4567/product?start=5&end=9` should result in `15120` being shown in the web browser since `5*6*7*8*9=15120`



### <u>Login</u>

**High-Level Idea:** Make an application that can determine whether a not a user is allowed in by checking their username and password. 

The real username is: `root` and the real password is `secret`

Navigating to `localhost:4567/login?username=admin&password=123` should display `Error - Unauthorized`

Navigating to `localhost:4567/login?username=root&password=secret` should display `Successfully Authenticated`