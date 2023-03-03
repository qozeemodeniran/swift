/*
Acsertions and preconditions are checks that happens at runtime.

 Assertions help you find mistakes and incorrect assumptions during development

 Preconditions help you detect issues in production

 The difference between assertions and preconditions is in when they’re checked: Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds. In production builds, the condition inside an assertion isn’t evaluated. This means you can use as many assertions as you want during your development process, without impacting performance in production.
*/

let age = -3
assert(age>=0, "Age cannot be less than zero")
