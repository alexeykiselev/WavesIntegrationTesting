package steps

import cucumber.api.scala.{EN, ScalaDsl}
import support.NodeRunner

class StepDefinitions extends ScalaDsl with EN {
  Given("""^Node (\d+) is running$""") { (id: Int) =>
    NodeRunner.start(id)
  }

}
