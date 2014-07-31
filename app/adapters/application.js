import DS from 'ember-data';
export default DS.ActiveModelAdapter.extend({
	host: 'http://api.lines.com:3000'
});