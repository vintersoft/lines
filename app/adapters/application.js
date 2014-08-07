import DS from 'ember-data';
import Ember from 'ember';

export default DS.ActiveModelAdapter.extend({
	host: 'http://api.lines.com:3000',

	createRecord: function(store, type, record) {

        if(!record.get('parent') || null === record.get('parent')){
            return this._super(store, type, record);
        }

        var data = {};
        var serializer = store.serializerFor(type.typeKey);

        var parent_type = record.get('parent');
        var parent_id = record.get(parent_type).get('id');
        var child_parts = Ember.String.decamelize(type.typeKey).split('_');

        var path = Ember.String.pluralize(parent_type) + '/' + parent_id + '/' + Ember.String.pluralize(child_parts.pop());

        serializer.serializeIntoHash(data, type, record);

        return this.ajax(this.buildURL(path, null), "POST", { data: data });
    },

});
