const {Then} = require('cucumber');
const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
const expect = chai.expect;

Then('Page title is equal to {string}', (title) => {
    return expect(browser.getTitle()).to.eventually.equal(title);
});

Then('History {string} is equal to {int}', (locator, result) => {
    return expect(element.all(by.repeater(locator)).count()).to.equal(result);
});

Then('Result {string} is equal to {string}', (locator, result) => {
   browser.sleep(4000);
    const elem = element(by.css(locator));
    return expect(elem.getText()).to.eventually.equal(result);
});

Then('Go Button {string} is displayed', (locator) => {
    const elem = element(by.css(locator));
    return expect(elem.isDisplayed()).to.eventually.equal(true);
});

Then('Go Button {string} with text {string} is displayed', (locator,text) => {
    const elem = element(by.cssContainingText(locator,text));
    return expect(elem.isDisplayed()).to.eventually.equal(true);
});

Then('Result {string} contains {string} text', (locator,text) => {
    const elem = element(by.css(locator,text));
    return expect(elem.getText()).to.eventually.contains(text);
});


Then('Attribute {string} of field {string} contains {string}', (attribute,locator1,value) => {
    const elem = element(by.css(locator1));
    console.log(elem.getAttribute(attribute));
    return expect(elem.getAttribute(attribute)).to.eventually.contains(value);

});