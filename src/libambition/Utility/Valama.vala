/*
 * Valama.vala
 * 
 * The Ambition Web Framework
 * http://www.ambitionframework.org
 *
 * Copyright 2012-2013 Sensical, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

using Gee;

namespace Ambition.Utility {
	/**
	 * Generate a Valama project from the current application.
	 */
	public class Clean : Object {
		private string application_name { get; set; }
		public int run( string command ) {
			var app_name = get_application_name();
			if ( app_name == null ) {
				Logger.error("Somehow, we are not in a project directory.");
				return -1;
			}

			return 0;
		}
	}
}
/*
<project version="0.1">
	<name>Ambition</name>
	<buildsystem>cmake</buildsystem>
	<version>
		<major>0</major>
		<minor>1</minor>
		<patch>0</patch>
	</version>
	<packages>
		<package name="gee-0.8"/>
		<package name="gio-2.0"/>
		<package name="glib-2.0" version="2.32" rel="since"/>
		<package name="gmodule-2.0"/>
		<package name="gobject-2.0"/>
		<package name="json-glib-1.0"/>
		<package name="posix"/>
	</packages>
	<source-directories>
		<directory>src</directory>
		<directory>src/ambition-bin</directory>
		<directory>src/ambition-bin/Plugin</directory>
		<directory>src/libambition</directory>
		<directory>src/libambition/Authorization</directory>
		<directory>src/libambition/Authorization/Authorizer</directory>
		<directory>src/libambition/Authorization/PasswordType</directory>
		<directory>src/libambition/Authorization/User</directory>
		<directory>src/libambition/Controller</directory>
		<directory>src/libambition/CoreView</directory>
		<directory>src/libambition/Engine</directory>
		<directory>src/libambition/Form</directory>
		<directory>src/libambition/Plugin</directory>
		<directory>src/libambition/PluginSupport</directory>
		<directory>src/libambition/Session</directory>
		<directory>src/libambition/Testing</directory>
		<directory>src/libambition/Utility</directory>
		<directory>src/optional</directory>
		<directory>src/optional/engine-scgi</directory>
		<directory>src/optional/engine-scgi/share</directory>
		<directory>src/optional/engine-scgi/share/scaffold-engine-scgi</directory>
		<directory>src/optional/engine-scgi/share/scaffold-engine-scgi/src</directory>
		<directory>src/optional/plugin-almanna</directory>
		<directory>src/optional/plugin-almanna/share</directory>
		<directory>src/optional/plugin-almanna/share/scaffold-plugin-almanna</directory>
		<directory>src/optional/plugin-almanna/test</directory>
		<directory>src/optional/plugin-couchdb</directory>
		<directory>src/optional/plugin-couchdb/test</directory>
		<directory>src/optional/plugin-twitter-bootstrap</directory>
		<directory>src/optional/plugin-twitter-bootstrap/Form</directory>
		<directory>src/optional/plugin-twitter-bootstrap/test</directory>
		<directory>src/optional/textcaptcha</directory>
		<directory>src/optional/textcaptcha/test</directory>
		<directory>test</directory>
	</source-directories>
	<buildsystem-directories>
		<directory></directory>
		<directory>cmake</directory>
	</buildsystem-directories>
	<data-directories>
		<directory>share</directory>
		<directory>share/ambition-framework</directory>
		<directory>share/ambition-framework/plugins</directory>
		<directory>share/ambition-framework/scaffold</directory>
		<directory>share/ambition-framework/scaffold/build</directory>
		<directory>share/ambition-framework/scaffold/cmake</directory>
		<directory>share/ambition-framework/scaffold/config</directory>
		<directory>share/ambition-framework/scaffold/plugins</directory>
		<directory>share/ambition-framework/scaffold/src</directory>
		<directory>share/ambition-framework/scaffold/src/Controller</directory>
		<directory>share/ambition-framework/scaffold/src/Form</directory>
		<directory>share/ambition-framework/scaffold/src/Model</directory>
		<directory>share/ambition-framework/scaffold/src/View</directory>
		<directory>share/ambition-framework/scaffold/src/View/Template</directory>
		<directory>share/ambition-framework/scaffold/src/View/Template/Root</directory>
		<directory>share/ambition-framework/scaffold/static</directory>
		<directory>share/ambition-framework/scaffold/test</directory>
		<directory>support</directory>
		<directory>support/sublime-text-2</directory>
		<directory>support/sublime-text-2/Ambition</directory>
		<directory>test/assets</directory>
	</data-directories>
	<data-files>
		<file>ChangeLog</file>
		<file>LICENSE</file>
		<file>README</file>
	</data-files>
</project>
*/