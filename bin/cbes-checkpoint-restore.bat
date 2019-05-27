@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  cbes-checkpoint-restore startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and CBES_CHECKPOINT_RESTORE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\couchbase-elasticsearch-connector-4.0.2.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.11.2.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.25.jar;%APP_HOME%\lib\java-client-2.7.4.jar;%APP_HOME%\lib\dcp-client-0.23.0.jar;%APP_HOME%\lib\elasticsearch-rest-high-level-client-6.7.1.jar;%APP_HOME%\lib\reactor-core-3.2.9.RELEASE.jar;%APP_HOME%\lib\consul-client-1.3.3.jar;%APP_HOME%\lib\therapi-json-rpc-0.4.0.jar;%APP_HOME%\lib\metrics-json-4.1.0.jar;%APP_HOME%\lib\metrics-jvm-4.1.0.jar;%APP_HOME%\lib\jackson-datatype-guava-2.9.8.jar;%APP_HOME%\lib\guava-27.1-jre.jar;%APP_HOME%\lib\commons-text-1.6.jar;%APP_HOME%\lib\cava-toml-0.3.1.jar;%APP_HOME%\lib\elasticsearch-6.7.1.jar;%APP_HOME%\lib\elasticsearch-cli-6.7.1.jar;%APP_HOME%\lib\jopt-simple-5.0.4.jar;%APP_HOME%\lib\picocli-3.9.6.jar;%APP_HOME%\lib\metrics-core-4.1.0.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\log4j-core-2.11.2.jar;%APP_HOME%\lib\log4j-api-2.11.2.jar;%APP_HOME%\lib\core-io-1.7.4.jar;%APP_HOME%\lib\elasticsearch-rest-client-6.7.1.jar;%APP_HOME%\lib\parent-join-client-6.7.1.jar;%APP_HOME%\lib\aggs-matrix-stats-client-6.7.1.jar;%APP_HOME%\lib\rank-eval-client-6.7.1.jar;%APP_HOME%\lib\lang-mustache-client-6.7.1.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\converter-jackson-2.5.0.jar;%APP_HOME%\lib\retrofit-2.5.0.jar;%APP_HOME%\lib\okhttp-3.12.1.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.8.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.9.4.jar;%APP_HOME%\lib\jackson-module-jsonSchema-2.9.4.jar;%APP_HOME%\lib\jackson-databind-2.9.8.jar;%APP_HOME%\lib\jackson-annotations-2.9.8.jar;%APP_HOME%\lib\elasticsearch-x-content-6.7.1.jar;%APP_HOME%\lib\jackson-core-2.9.8.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\therapi-runtime-javadoc-0.4.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\checker-qual-2.5.2.jar;%APP_HOME%\lib\error_prone_annotations-2.2.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\antlr4-runtime-4.7.1.jar;%APP_HOME%\lib\rxjava-1.3.8.jar;%APP_HOME%\lib\opentracing-api-0.31.0.jar;%APP_HOME%\lib\elasticsearch-core-6.7.1.jar;%APP_HOME%\lib\elasticsearch-secure-sm-6.7.1.jar;%APP_HOME%\lib\lucene-core-7.7.0.jar;%APP_HOME%\lib\lucene-analyzers-common-7.7.0.jar;%APP_HOME%\lib\lucene-backward-codecs-7.7.0.jar;%APP_HOME%\lib\lucene-grouping-7.7.0.jar;%APP_HOME%\lib\lucene-highlighter-7.7.0.jar;%APP_HOME%\lib\lucene-join-7.7.0.jar;%APP_HOME%\lib\lucene-memory-7.7.0.jar;%APP_HOME%\lib\lucene-misc-7.7.0.jar;%APP_HOME%\lib\lucene-queries-7.7.0.jar;%APP_HOME%\lib\lucene-queryparser-7.7.0.jar;%APP_HOME%\lib\lucene-sandbox-7.7.0.jar;%APP_HOME%\lib\lucene-spatial-7.7.0.jar;%APP_HOME%\lib\lucene-spatial-extras-7.7.0.jar;%APP_HOME%\lib\lucene-spatial3d-7.7.0.jar;%APP_HOME%\lib\lucene-suggest-7.7.0.jar;%APP_HOME%\lib\hppc-0.7.1.jar;%APP_HOME%\lib\joda-time-2.10.1.jar;%APP_HOME%\lib\t-digest-3.2.jar;%APP_HOME%\lib\HdrHistogram-2.1.9.jar;%APP_HOME%\lib\jna-4.5.1.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\httpcore-4.4.5.jar;%APP_HOME%\lib\httpasyncclient-4.1.2.jar;%APP_HOME%\lib\httpcore-nio-4.4.5.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\compiler-0.9.3.jar;%APP_HOME%\lib\okio-1.15.0.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\jackson-dataformat-smile-2.8.11.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.8.11.jar;%APP_HOME%\lib\jackson-dataformat-cbor-2.8.11.jar

@rem Execute cbes-checkpoint-restore
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CBES_CHECKPOINT_RESTORE_OPTS%  -classpath "%CLASSPATH%" com.couchbase.connector.elasticsearch.cli.CheckpointRestore %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CBES_CHECKPOINT_RESTORE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CBES_CHECKPOINT_RESTORE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
