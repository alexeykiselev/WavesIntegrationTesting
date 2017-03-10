name := "WavesIntegrationTesting"

organization := "com.wavesplatform"

version := "1.0"

scalaVersion := "2.11.8"

libraryDependencies ++= Seq(
  "info.cukes" % "cucumber-core" % "1.2.5" % "test",
  "info.cukes" %% "cucumber-scala" % "1.2.5" % "test",
  "info.cukes" % "cucumber-jvm" % "1.2.5" % "test",
  "info.cukes" % "cucumber-junit" % "1.2.5" % "test",
  "org.scalactic" %% "scalactic" % "3.0.1",
  "org.scalatest" %% "scalatest" % "3.0.1" % "test"
)

enablePlugins(CucumberPlugin)

CucumberPlugin.glue := "com/waioeka/sbt/"
