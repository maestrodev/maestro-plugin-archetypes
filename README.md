Maestro Plugin Archetypes
=========================

Archetypes for creating Maestro plugins. Currently contains one for a Java
variant, but will later include one for a Ruby project also.

Generating a Java Plugin
------------------------

```
mvn archetype:generate \
    -DarchetypeGroupId=com.maestrodev \
    -DarchetypeArtifactId=maestro-java-plugin-archetype \
    -DgroupId=com.maestrodev \
    -DartifactId=test-maestro-plugin \
    -Dauthor="Brett Porter" \
    -DtaskCommand=echo \
    -DtaskDescription="Echo, Echo" \
    -DtaskGroup=echo \
    -DtaskName=Echo \
    -DtoolName=Notification
```

Generating a Ruby Plugin
------------------------

```
mvn archetype:generate \
    -DarchetypeGroupId=com.maestrodev \
    -DarchetypeArtifactId=maestro-ruby-plugin-archetype \
    -DgroupId=com.maestrodev \
    -DartifactId=test-maestro-plugin \
    -Dauthor="Brett Porter" \
    -DtaskCommand=echo \
    -DtaskDescription="Echo, Echo" \
    -DtaskGroup=echo \
    -DtaskName=Echo \
    -DtoolName=Notification
```

License
-------
```
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
```
