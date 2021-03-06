Maestro Plugin Archetypes
=========================

Archetypes for creating Maestro plugins using Java or Ruby. More information about [creating Maestro plugins](http://www.maestrodev.com/docs/maestro-admin-guide/maestro-plugins/creating-a-new-plugin/).

Install this project using Maven with `mvn install`

Generating a Java Plugin
------------------------

    mvn org.apache.maven.plugins:maven-archetype-plugin:2.1:generate \
    -DarchetypeGroupId=com.maestrodev.maestro.plugins.archetypes \
    -DarchetypeArtifactId=maestro-java-plugin-archetype \
    -DgroupId=com.maestrodev.plugins \
    -DartifactId=test-maestro-plugin \
    -Dauthor="Brett Porter" \
    -DtaskCommand=echo \
    -DtaskDescription="Echo, Echo" \
    -DtaskGroup=echo \
    -DtaskName=Echo \
    -DtoolName=Notification

Generating a Ruby Plugin
------------------------

    mvn org.apache.maven.plugins:maven-archetype-plugin:2.1:generate \
    -DarchetypeGroupId=com.maestrodev.maestro.plugins.archetypes \
    -DarchetypeArtifactId=maestro-ruby-plugin-archetype \
    -DgroupId=com.maestrodev.plugins \
    -DartifactId=test-maestro-plugin \
    -Dauthor="Brett Porter" \
    -DtaskCommand=echo \
    -DtaskDescription="Echo, Echo" \
    -DtaskGroup=echo \
    -DtaskName=Echo \
    -DtoolName=Notification

License
-------

    Copyright 2012 MaestroDev
  
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
  
        http://www.apache.org/licenses/LICENSE-2.0
  
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
