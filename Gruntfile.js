module.exports = function(grunt){

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        exec:{
        	make:{
        		command:"make web",
        		stdout:true,
        		stderror:true
        	}
        },
        watch:{
        	files:['config.rb', 'source/*.*', 'source/*/*.*'],
        	tasks:['exec:make'],
					   options: {
								livereload: true,
        			}
				}
    });

	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-exec');

    grunt.registerTask('default', ['watch']);

};
